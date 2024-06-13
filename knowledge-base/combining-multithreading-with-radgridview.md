---
title: Combining Multithreading with RadGridView
description: Combining Multithreading with RadGridView. Check it now!
type: how-to
page_title: Combining Multithreading with RadGridView
slug: combining-multithreading-with-radgridview
tags: gridview
res_type: kb
---

|Date Posted|Product|Author|
|----|----|----|
|19/12/2013|RadGridView|Georgi Georgiev| 

## Problem
 
You need to fetch data asynchronously from another thread and need that information passed to the grid.  
  
## Solution
   
The below Tips and Tricks may help you achieve the desired results.  
   
Let’s go for a real case scenario: You have a background thread which fetches data from a REST API every few seconds, gets the new results and adds them to the local database or a simple BindingList in this case.  
   
First of all, let’s setup our grid. You can simply Drag and Drop one from the toolbox. In this example our RadGridView will show books and their details. Now let’s create our Model which we will use and the BindingList which will be our DataSource.   
   

````C#
public class Book
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string AuthorName { get; set; }
    public DateTime PublishDate { get; set; }
 
    public Book(int id, string name, string authorName, DateTime publishDate)
    {
        this.Id = id;
        this.Name = name;
        this.AuthorName = authorName;
        this.PublishDate = publishDate;
    }
}

````
````VB.NET
Public Class Book
    Public Property Id() As Integer
        Get
            Return m_Id
        End Get
        Set
            m_Id = Value
        End Set
    End Property
    Private m_Id As Integer
    Public Property Name() As String
        Get
            Return m_Name
        End Get
        Set
            m_Name = Value
        End Set
    End Property
    Private m_Name As String
    Public Property AuthorName() As String
        Get
            Return m_AuthorName
        End Get
        Set
            m_AuthorName = Value
        End Set
    End Property
    Private m_AuthorName As String
    Public Property PublishDate() As DateTime
        Get
            Return m_PublishDate
        End Get
        Set
            m_PublishDate = Value
        End Set
    End Property
    Private m_PublishDate As DateTime
 
    Public Sub New(id As Integer, name As String, authorName As String, publishDate As DateTime)
        Me.Id = id
        Me.Name = name
        Me.AuthorName = authorName
        Me.PublishDate = publishDate
    End Sub
End Class

````  
  
Here it is important to have our DataSource (books) created on the GUI thread. After we have this set up, it is time to set up the grid:  
   

````C#
public Form1()
{
    InitializeComponent();
 
    this.radGridView1.AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill;
    this.radGridView1.DataSource = this.books;
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
 
    Me.Controls.Add(Me.radGridView1)
    Me.radGridView1.Dock = DockStyle.Fill
 
    Me.radGridView1.AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill
    Me.radGridView1.DataSource = Me.books
End Sub

````  
   
This will generate the grid’s columns. Now it is time to set up our REST API. Of course for this example we will use a simple class which will generate some data for us.   
   

````C#
public static class DataGenerator
{
    private static Random random = new Random();
 
    public static Random Random
    {
        get { return random; }
    }
 
    public static string[] GenerateBooks(int count)
    {
        string[] books = new string[count];
        for (int i = 0; i < books.Length; i++)
        {
            books[i] = GenerateBook();
        }
 
        return books;
    }
 
    public static string GenerateBook()
    {
        int id = Random.Next();
        string name = string.Format("Book {0}", id);
        string authorName = string.Format("Author {0}", id);
        DateTime publishDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1).AddDays(-Random.Next(100, 1000));
 
        string book = string.Format("{0},{1},{2},{3}", id, name, authorName, publishDate);
        return book;
    }
}

````
````VB.NET
Public NotInheritable Class DataGenerator
    Private Sub New()
    End Sub
    Private Shared m_random As New Random()
 
    Public Shared ReadOnly Property Random() As Random
        Get
            Return m_random
        End Get
    End Property
 
    Public Shared Function GenerateBooks(count As Integer) As String()
        Dim books As String() = New String(count - 1) {}
        For i As Integer = 0 To books.Length - 1
            books(i) = GenerateBook()
        Next
 
        Return books
    End Function
 
    Public Shared Function GenerateBook() As String
        Dim id As Integer = Random.[Next]()
        Dim name As String = String.Format("Book {0}", id)
        Dim authorName As String = String.Format("Author {0}", id)
        Dim publishDate As DateTime = New DateTime(DateTime.Now.Year, DateTime.Now.Month, 1).AddDays(-Random.[Next](100, 1000))
 
        Dim book As String = String.Format("{0},{1},{2},{3}", id, name, authorName, publishDate)
        Return book
    End Function
End Class

```` 

Usually the format will be either XML or JSON, however this is good enough for our example. Now, after we have our fake REST API we can start with the threads. But before that we need to create our method which will get the books. It is a good idea to create such methods in a way that they do not depend on threads, which guarantees that they will work even if called by the GUI thread. Of course this is not always possible, but this is what we will try to do now. 


````C#
private IEnumerable<Book> GetAndParseData(int count)
{
    string[] rawFormatBooks = DataGenerator.GenerateBooks(count);
    List<Book> parsedBooks = new List<Book>();
 
    foreach (string rawBook in rawFormatBooks)
    {
        string[] bookParams = rawBook.Split(',');
        int id = int.Parse(bookParams[0]);
        string name = bookParams[1];
        string authorName = bookParams[2];
        DateTime publishDate = DateTime.Parse(bookParams[3]);
        Book newBook = new Book(id, name, authorName, publishDate);
        parsedBooks.Add(newBook);
    }
 
    return parsedBooks;
}

````
````VB.NET
Private Function GetAndParseData(count As Integer) As IEnumerable(Of Book)
    Dim rawFormatBooks As String() = DataGenerator.GenerateBooks(count)
    Dim parsedBooks As New List(Of Book)()
 
    For Each rawBook As String In rawFormatBooks
        Dim bookParams As String() = rawBook.Split(","C)
        Dim id As Integer = Integer.Parse(bookParams(0))
        Dim name As String = bookParams(1)
        Dim authorName As String = bookParams(2)
        Dim publishDate As DateTime = DateTime.Parse(bookParams(3))
        Dim newBook As New Book(id, name, authorName, publishDate)
        parsedBooks.Add(newBook)
    Next
 
    Return parsedBooks
End Function

````

This method will basically use our DataGenerator which we created earlier to get some books and create objects out of the given information. Now we can create the methods which will fire up the thread and add the data to the grid. First let’s take a look at the method which will add the new books to the grid:


````C#
private void AddBooks(IEnumerable<Book> fetchedBooks, IList<Book> dataSourceToFill)
{
    if (this.InvokeRequired)
    {
        this.Invoke(new MethodInvoker(() => this.AddBooks(fetchedBooks, dataSourceToFill)));
        return;
    }
 
    foreach (Book book in fetchedBooks)
    {
        dataSourceToFill.Add(book);
    }
}

````
````VB.NET
Private Sub AddBooks(fetchedBooks As IEnumerable(Of Book), dataSourceToFill As IList(Of Book))
    If Me.InvokeRequired Then
        Me.Invoke(New MethodInvoker(Sub() Me.AddBooks(fetchedBooks, dataSourceToFill)))
        Return
    End If
 
    For Each book As Book In fetchedBooks
        dataSourceToFill.Add(book)
    Next
End Sub

````

This method is very essential as it will be the bridge between the background thread and the UI thread.  Here we check the InvokeRequired property (which every control has) which will tell you if this method has been called from another thread. If it is, then we need to send it to the UI thread (vie Invoke) or we risk to get Cross-Thread Exception.

Now the next two methods are the ones which will most likely call the AddBooks method:

````C#
private bool stop;
public void FetchData(IList<Book> dataSourceToFill, int interval, int maxFetches = -1)
{
    Thread dataThread = new Thread(() => this.FetchDataCore(dataSourceToFill, maxFetches, interval));
    dataThread.IsBackground = true;
    dataThread.Start();
}
  
private void FetchDataCore(IList<Book> dataSourceToFill, int maxFetches, int interval)
{
    int fetchesCount = 0;
    while (fetchesCount <= maxFetches || !this.stop)
    {
        IEnumerable<Book> fetchedBooks = this.GetAndParseData(15);
        //simulate server wait time
        Thread.Sleep(1500);
  
        //actual wait time passed as a parameter
        Thread.Sleep(interval);
        this.AddBooks(fetchedBooks, dataSourceToFill);
  
        fetchesCount++;
    }
}

````
````VB.NET
Private [stop] As Boolean
Public Sub FetchData(dataSourceToFill As IList(Of Book), interval As Integer, Optional maxFetches As Integer = -1)
    Dim dataThread = New Thread(Sub() Me.FetchDataCore(dataSourceToFill, maxFetches, interval))
    dataThread.IsBackground = True
    dataThread.Start()
End Sub
 
Private Sub FetchDataCore(dataSourceToFill As IList(Of Book), maxFetches As Integer, interval As Integer)
    Dim fetchesCount As Integer = 0
    While fetchesCount <= maxFetches OrElse Not Me.[stop]
        Dim fetchedBooks As IEnumerable(Of Book) = Me.GetAndParseData(15)
        'simulate server wait time
        Thread.Sleep(1500)
 
        'actual wait time passed as a parameter
        Thread.Sleep(interval)
        Me.AddBooks(fetchedBooks, dataSourceToFill)
 
        fetchesCount += 1
    End While
End Sub

````

The FetchData method is the main one. It is supposed to be called from outer sources and to take care for the Thread starting and stopping. As you can see it simply starts a new thread and passes the FetchDataCore method (we will get back to it in a second). Here the IsBackground property is important since it marks the thread as not essential which means that when the application closes this thread will be automatically stopped.

Ok, now back to the FetchDataCore method, as you can see it has a loop inside. Remember that this loop is being executed on the background thread and it is perfectly okay to let it spin as long as we want. You can also see the field named “stop” which is meant for emergency situations when you want to stop the loop no matter how many times it requested data. Then the method which we previously wrote (GetAndParseData) gets into action and gets some books for us, after that the 1500 milliseconds thread sleep are just to simulate server wait time and will not be used in a real-life application. Afterwards, the second sleep is the one defined vie the interval parameter. Finally, we can call the AddBooks method and let it take care of the rest.
 
Helpful resources:

[RadGridView help](https://docs.telerik.com/devtools/winforms/gridview/overview)

[Multithreading in WinForms](http://visualstudiomagazine.com/articles/2010/11/18/multithreading-in-winforms.aspx)

[Introduction to Multithreading in C#](http://www.c-sharpcorner.com/UploadFile/mgold/MultithreadingIntro10062005000439AM/MultithreadingIntro.aspx)
 

>note A complete solution in C# and VB.NET can be found [here](https://github.com/telerik/winforms-sdk/tree/master/GridView/RadGridViewMultithreading).
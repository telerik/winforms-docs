---
title: Binding to ObservableCollection
page_title: Binding to ObservableCollection | UI for WinForms Documentation
description: Binding to ObservableCollection
slug: winforms/gridview/populating-with-data/binding-to-observablecollection
tags: binding,to,observablecollection
published: True
position: 14
---

# Binding to ObservableCollection



## 

The example bellow demonstrates how to bind the __RadGridView__ to an ObservableCollection. This collection represents a dynamic data collection that provides notification when changes (add, move, remove) occur.
        

>note This collection is available in .NET version 4.0 and above. For this reason it is only supported in the .NET4.0 version of our assemblies (the ones with suffix .40), so please make sure you use those in order to take advantage of this functionality.
>


The example creates an ObservableCollection of Person, initializes the collection and assigns it to the grid DataSource property. There are also three buttons allowing the user to add, remove and move items from and in the collection. The changes in the collection are automatically reflected by the grid.<br>![gridview-populating-with-data-binding-to- observable-collection 001](images/gridview-populating-with-data-binding-to- observable-collection001.png)

1\. First place a RadGridView and 3 buttons on a blank form. Name the buttons accordingly:<br>![gridview-populating-with-data-binding-to- observable-collection 002](images/gridview-populating-with-data-binding-to- observable-collection002.png)

2\. Add the following sample class to the project:

{{source=..\SamplesCS\GridView\PopulatingwithData\BindingToObservableCollection.cs region=SampleClass}} 
{{source=..\SamplesVB\GridView\PopulatingwithData\BindingToObservableCollection.vb region=SampleClass}} 

````C#
  
public class Person
{
    public string FirstName { get; set; }
    
    public string LastName { get; set; }
    
    public int Age { get; set; }
    
    public Person(string firstName, string lastName, int age)
    {
        this.FirstName = firstName;
        this.LastName = lastName;
        this.Age = age;
    }
}

````
````VB.NET
  
Public Class Person
    Public Property FirstName() As String
        Get
            Return m_FirstName
        End Get
        Set(value As String)
            m_FirstName = value
        End Set
    End Property
    Private m_FirstName As String
    Public Property LastName() As String
        Get
            Return m_LastName
        End Get
        Set(value As String)
            m_LastName = value
        End Set
    End Property
    Private m_LastName As String
    Public Property Age() As Integer
        Get
            Return m_Age
        End Get
        Set(value As Integer)
            m_Age = value
        End Set
    End Property
    Private m_Age As Integer
    Public Sub New(firstName As String, lastName As String, age As Integer)
        Me.FirstName = firstName
        Me.LastName = lastName
        Me.Age = age
    End Sub
End Class

````

{{endregion}} 

3\. Define the collection along with the function that initializes it:

{{source=..\SamplesCS\GridView\PopulatingwithData\BindingToObservableCollection.cs region=Collection}} 
{{source=..\SamplesVB\GridView\PopulatingwithData\BindingToObservableCollection.vb region=Collection}} 

````C#
private  System.Collections.ObjectModel.ObservableCollection<Person> people = new  System.Collections.ObjectModel.ObservableCollection<Person>();
private void IntilalizeCollection()
{
    people.Add(new Person("Johnathan", "Gartner", 45));
    people.Add(new Person("Jeannine", "Richart", 25));
    people.Add(new Person("Merry", "Sparacino", 15));
    people.Add(new Person("Sandi", "Willman", 32));
    people.Add(new Person("Damion", "Dagley", 51));
}

````
````VB.NET
Private people As New System.Collections.ObjectModel.ObservableCollection(Of Person)()
Private Sub IntilalizeCollection()
    people.Add(New Person("Johnathan", "Gartner", 45))
    people.Add(New Person("Jeannine", "Richart", 25))
    people.Add(New Person("Merry", "Sparacino", 15))
    people.Add(New Person("Sandi", "Willman", 32))
    people.Add(New Person("Damion", "Dagley", 51))
End Sub
' #endregion
Private radGridView1 As New RadGridView()
Private Add As New RadButton()
Private Remove As New RadButton()
Private Move As New RadButton()
Public Sub New()
    InitializeComponent()
   
    radGridView1.Parent = Me
    radGridView1.Location = New Point(10, 10)
    radGridView1.MinimumSize = New Size(370, 500)
    Me.radGridView1.AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill
    Add.Text = "Add"
    Add.Parent = Me
    Add.Location = New Point(400, 10)
    AddHandler Add.Click, AddressOf Add_Click
    Remove.Text = "Remove"
    Remove.Parent = Me
    Remove.Location = New Point(400, 110)
    AddHandler Remove.Click, AddressOf Remove_Click
    Move.Text = "Move"
    Move.Parent = Me
    Move.Location = New Point(400, 210)
    AddHandler Move.Click, AddressOf Move_Click
End Sub
'#region Add
Private Sub Add_Click(sender As Object, e As EventArgs)
    people.Add(New Person("Damion", "Dagley", 51))
End Sub

````

{{endregion}} 

4\. Add the following event handlers for the buttons:

{{source=..\SamplesCS\GridView\PopulatingwithData\BindingToObservableCollection.cs region=Add}} 
{{source=..\SamplesVB\GridView\PopulatingwithData\BindingToObservableCollection.vb region=Add}} 

````C#
private void Add_Click(object sender, EventArgs e)
{
    people.Add(new Person("Damion", "Dagley", 51));
}

````
````VB.NET
Private Sub Add_Click(sender As Object, e As EventArgs)
    people.Add(New Person("Damion", "Dagley", 51))
End Sub

````

{{endregion}} 

{{source=..\SamplesCS\GridView\PopulatingwithData\BindingToObservableCollection.cs region=Remove}} 
{{source=..\SamplesVB\GridView\PopulatingwithData\BindingToObservableCollection.vb region=Remove}} 

````C#
private void Remove_Click(object sender, EventArgs e)
{
    if (people.Count > 0)
    {
        people.RemoveAt(0);
    }
}

````
````VB.NET
Private Sub Remove_Click(sender As Object, e As EventArgs)
    If people.Count > 0 Then
        people.RemoveAt(0)
    End If
End Sub

````

{{endregion}} 

{{source=..\SamplesCS\GridView\PopulatingwithData\BindingToObservableCollection.cs region=Move}} 
{{source=..\SamplesVB\GridView\PopulatingwithData\BindingToObservableCollection.vb region=Move}} 

````C#
private void Move_Click(object sender, EventArgs e)
{
    people.Move(people.Count - 1, 0);
}

````
````VB.NET
Private Sub Move_Click(sender As Object, e As EventArgs)
    people.Move(people.Count - 1, 0)
End Sub

````

{{endregion}}

5\. Finally just call the InitializeCollection method to populate the collection and bind the __RadGridView__ to it

{{source=..\SamplesCS\GridView\PopulatingwithData\BindingToObservableCollection.cs region=Binding}} 
{{source=..\SamplesVB\GridView\PopulatingwithData\BindingToObservableCollection.vb region=Binding}} 

````C#
private void BindingToObservableCollection_Load(object sender, EventArgs e)
{
    IntilalizeCollection();
    this.radGridView1.DataSource = people;
}

````
````VB.NET
Private Sub BindingToObservableCollection_Load(sender As Object, e As EventArgs) Handles MyBase.Load
    IntilalizeCollection()
    Me.radGridView1.DataSource = people
End Sub

````

{{endregion}} 

Now each change you introduce to the collection by pressing the buttons will be automatically reflected in __RadGridView__.
        

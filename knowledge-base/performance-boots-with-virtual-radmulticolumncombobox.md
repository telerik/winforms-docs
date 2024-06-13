---
title: Performance Boost with Virtual RadMultiColumnComboBox - Quick Loading and Fast Filtering using Trie
description: Performance Boost with Virtual RadMultiColumnComboBox - Quick Loading and Fast Filtering using Trie. Check it now!
type: how-to
page_title: Performance Boost with Virtual RadMultiColumnComboBox - Quick Loading and Fast Filtering using Trie
slug: performance-boots-with-virtual-radmulticolumncombobox
tags: multicolumncombobox, virtual, performance, fast, slow, boost, load
res_type: kb
---


|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2013|RadMultiColumnComboBox for WinForms|Georgi Georgiev|07/11/2013|
 
 
   
## PROBLEM  
   
You want to display to your users thousands of rows into with **RadMultiColumnComboBox **and still be able to filter them quickly, load almost instantaneously and have control over your data.  
   
SOLUTION
 
Create a custom RadMultiColumnComboBox which will fit into your needs.    
   
I will try to explain only the most important methods/data structures of this example. The full source code can be downloaded below.  
   
When you open the solution you will see four projects:  
![](images/performance-boots-with-virtual-radmulticolumncombobox.png)  
   
 
1. **Trie** – This is the data structure used by our **MultiColumnComboBox **to perform the searching operations. Although it is highly modified the main idea still reminds of a **Trie**. More information about it can be found [here](http://en.wikipedia.org/wiki/Trie)
2. **Trie.Tests** – These are the unit tests for the **Trie**, they are not needed for the project to function properly, however if you decide to modify something in the **Trie **class you would want to run these unit tests in order to ensure that the functionality is still intact.
3. **VirtualMultiColumnComboBox** – This is the test project which contains one form. In this test project I am filling a data source of 100 000 objects and binding it to the **MultiColumnComboBox**
4. **VirtualMultiColumnComboBox.Implementation** – The project on which we will focus during this article. Contains the **VirtualMultiColumnComboBox** and **VirtualMultiColumnComboBoxElement** classes.

 
First of all I think we should start from the **Trie **because it is a class completely separated from the**MultiColumnComboBox** and can work independently.  
   

The **Trie **itself consists of nodes. Each **TrieNode **has a **Value **and **Children **properties. The value property is char and the Children are Dictionary with Char for Key and TrieNode as a Value. Each node also has an "**IsWord" **property which indicates whether this node marks the start of a new word.  
   

The **Trie** has 4 main functionalities:  

1. Insert words into the Trie
2. Check if a word is contained inside the Trie
3. Search for List of words. The search operation is performed with Contains or StartsWith filter
4. Ignore words in the Trie. The words are simply ignored and not deleted from the Trie since it would require it to rebuild itself, which will cost time

 
Every method has comments added above them with the corresponding algorithm (if any).  
   

Now I am going to skip the **VirtualMultiColumnComboBox **and go straight to the **VirtualMultiColumnComboBoxElement**class.
 
   
Let’s get started from the constructor –   
   
````C#
public VirtualMultiColumnComboBoxElement()
    : base()
{
    this.EditorControl.LoadElementTree();
}

````
````VB.NET
Public Sub New()
    MyBase.New()
    Me.EditorControl.LoadElementTree()
End Sub

````

   
In the body of the constructor the LoadElementTree method is used to speed up the loading of the dropdown, otherwise you will see a significant slowdown when openning the dropdown for the first time.

 
The next important step is to initialize the data source. The data source is initialized when you set the **DataSource**property or the **ValueMember **property. The order does not matter. The **VirtualMultiColumnComboBox **requires only**ValueMember** for its filtering operations. The **DisplayMember **property on the other hand specifies which value to be displayed in the textbox when a row is selected.   
   

The **DataSource**can also be loaded asynchronously in a separate from the UI thread. This can be controlled from the**LoadDataSourceAsync **property. Once the **DataSource **is loaded the **DataSourceLoaded **event is being fired. Here it is important to say that the DataSource property provides the dynamically updated data source. You can access all objects from your actual data source from the **AllDataSource **property.  
   

Basically after these operations are finished the **ComboBox**is ready to roll. With the code below we can initialize our**ComboBox**:  
   
````C#
this.virtualRadMultiColumnComboBox1.LoadDataSourceAsync = true;
this.virtualRadMultiColumnComboBox1.ValueMember = "DummysDummy.Name";
this.virtualRadMultiColumnComboBox1.DisplayMember = "DummysDummy";
this.virtualRadMultiColumnComboBox1.DataSource = this.ds;
this.virtualRadMultiColumnComboBox1.AutoFilter = true;
this.virtualRadMultiColumnComboBox1.AutoShowHidePopup = true;
this.virtualRadMultiColumnComboBox1.SearchType = TrieImplementation.SearchType.Contains;
this.virtualRadMultiColumnComboBox1.EditorControl.AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill;
  
this.virtualRadMultiColumnComboBox1.SearchCompleted += radMultiColumnComboBox1_SearchCompleted;
this.virtualRadMultiColumnComboBox1.SearchStarting += radMultiColumnComboBox1_SearchStarting;
this.virtualRadMultiColumnComboBox1.EditorControlCellValueNeeded += virtualRadMultiColumnComboBox1_EditorControlCellValueNeeded;
this.virtualRadMultiColumnComboBox1.DataSourceLoaded += virtualRadMultiColumnComboBox1_DataSourceLoaded;

````
````VB.NET
Me.virtualRadMultiColumnComboBox1.LoadDataSourceAsync = True
Me.virtualRadMultiColumnComboBox1.ValueMember = "DummysDummy.Name"
Me.virtualRadMultiColumnComboBox1.DisplayMember = "DummysDummy"
Me.virtualRadMultiColumnComboBox1.DataSource = Me.ds
Me.virtualRadMultiColumnComboBox1.AutoFilter = True
Me.virtualRadMultiColumnComboBox1.AutoShowHidePopup = True
Me.virtualRadMultiColumnComboBox1.SearchType = SearchType.Contains
Me.virtualRadMultiColumnComboBox1.EditorControl.AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.Fill
  
AddHandler Me.virtualRadMultiColumnComboBox1.SearchCompleted, AddressOfradMultiColumnComboBox1_SearchCompleted
AddHandler Me.virtualRadMultiColumnComboBox1.SearchStarting, AddressOfradMultiColumnComboBox1_SearchStarting
AddHandler Me.virtualRadMultiColumnComboBox1.EditorControlCellValueNeeded, AddressOfvirtualRadMultiColumnComboBox1_EditorControlCellValueNeeded
AddHandler Me.virtualRadMultiColumnComboBox1.DataSourceLoaded, AddressOfvirtualRadMultiColumnComboBox1_DataSourceLoaded

````

   
It also has 3 additional events – **SearchCompleted**, **SearchStarting**(cancelable) and **EditorControlCellValueNeeded**. Please note that if you do not set the AutoFilter property the PerformSearch method will have to be manually called:  

````C#
this.virtualRadMultiColumnComboBox1.PerformSearch("test", SearchType(optional));

````
````VB.NET
Me.virtualRadMultiColumnComboBox1.PerformSearch("test", SearchType([optional]))

````
 
The **SearchType**sets the default search type for **AutoFiltering**. You can explicitly specify the **SearchType **when searching manually.  
   
Now let’s take a look at what exactly the **Search** method does. No matter where it is called from – from the control, from the element or internally from the **AutoFiltering**, the end point is always the **PerformSearchCore**method inside the **VirtualMultiColumnComboBoxElement**.  
   
Basically this method starts a new **thread** which performs the search operation within the **Trie**, updates the data source and sets the rows count of the grid control since it is in **[Virtual Mode](https://docs.telerik.com/devtools/winforms/gridview/virtual-mode/virtual-mode)**.  
   
````C#
protected virtual void PerformSearchCore(string text, SearchType searchType)
{
    if (!this.OnSearchStarting(text))
    {
        return;
    }
  
    if (!this.searching)
    {
        Thread searchThread = this.CreateSearchThread(searchType, text);
        searchThread.IsBackground = true;
        searchThread.Start();
    }
    else
    {
        this.enqueuedSearchType = searchType;
        this.enqueuedSearchText = text;
    }
}
  
private Thread CreateSearchThread(SearchType searchType, string text)
{
    Thread searchThread = new Thread(() =>
    {
        if (this.searching)
        {
            this.enqueuedSearchType = searchType;
            this.enqueuedSearchText = text;
            return;
        }
  
        Thread.Sleep(this.startSearchInterval);
        if (this.enqueuedSearchText != null)
        {
            this.PerformNewSearchFromQueue();
            return;
        }
  
        this.searching = true;
        ICollection<string> results = this.trie.Search(this.Text, searchType);
  
        if (!(this.virtualDataSource is List<object>))
        {
            this.virtualDataSource = new List<object>();
        }
  
        List<object> dataSource = this.virtualDataSource as List<object>;
        dataSource.Clear();
        foreach (string result in results)
        {
            if (this.actualDataSource.ContainsKey(result))
            {
                foreach (object item in this.actualDataSource[result])
                {
                    dataSource.Add(item);
                }
            }
        }
  
        searching = false;
        this.EditorControl.Invoke(new InvokeDelegate(() =>
        {
            if (this.EditorControl.RowCount != results.Count)
            {
                this.EditorControl.RowCount = results.Count;
            }
  
            this.SetCurrentState(PopupEditorState.Ready);
            this.OnSearchCompleted(text, results);
        }));
    });
       
    return searchThread;
}

````
````VB.NET
Private Function CreateSearchThread(searchType As SearchType, text As String) As Thread
    Dim searchThread As New Thread(Sub()
    If Me.searching Then
        Me.enqueuedSearchType = searchType
        Me.enqueuedSearchText = text
        Return
    End If
  
    Thread.Sleep(Me.StartSearchInterval)
    If Me.enqueuedSearchText IsNot Nothing Then
        Me.PerformNewSearchFromQueue()
        Return
    End If
  
    Me.searching = True
    Dim results As ICollection(Of String) = Me.trie.Search(Me.Text, searchType)
  
    If Not (TypeOf Me.virtualDataSource Is List(Of Object)) Then
        Me.virtualDataSource = New List(Of Object)()
    End If
  
    Dim dataSource As List(Of Object) = TryCast(Me.virtualDataSource, List(Of Object))
    dataSource.Clear()
    For Each result As String In results
        If Me.ActualDataSource.ContainsKey(result) Then
            For Each item As Object In Me.ActualDataSource(result)
                dataSource.Add(item)
            Next
        End If
    Next
  
    searching = False
                                   Me.EditorControl.Invoke(NewInvokeDelegate(Function()
    If Me.EditorControl.RowCount <> results.Count Then
        Me.EditorControl.RowCount = results.Count
    End If
  
    Me.SetCurrentState(PopupEditorState.Ready)
    Me.OnSearchCompleted(text, results)
  
    End Function
    End Sub
  
    Return searchThread
End Function

````

>note The complete examples in C# and VB can be downloaded by clicking the following [link](https://github.com/telerik/winforms-sdk/tree/master/MultiColumnComboBox/VirtualMCCB).

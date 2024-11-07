---
title: Load Data on Demand in Self-Referencing Hierarchy RadGrid
page_title: Load Data on Demand in Self-Referencing Hierarchy RadGrid
description: Learn how you load data on demand using self-referencing hierarchy in Telerik RadGridView.
slug: winforms/gridview/hierarchical-grid/load-on-demand-self-referencing-hierarchy
tags: self-referencing,hierarchy, lazy, loading, data, on-demand
published: True
position: 10
---

# Load Data on Demand in Self Referencing Hierarchy

###  Load On Demand 

RadGridView currently offers Load On Demand feature in hierarchy mode. Fetching data from the source on demand is a common technique to enhance the performance of applications which use large datasource.In this mode client can handle the RowSourceNeeded event and create manually the child rows for the expanded template. More information about the Load on Demand Hierarchy is available [here]({%slug winforms/gridview/hierarchical-grid/load-on-demand-hierarchy%}).

### Self Reference 

The self-reference mode allows to build a hierarchy using a flat collection of objects, by defining a relation. In self-reference hierarchy the RadGridView needs all the data and based on the primary and foreign keys, it builds up the hierarchy levels. More information about the Self Reference Hierarchy is available [here](%slug winforms/gridview/hierarchical-grid/self-referencing-hierarchy).

## Load on Demand in Self-Reference Hierarchy 

Load on Demand in Self-Reference Hierarchy is a new mehanism that combines the **Load on Demand** and **Self Reference** features. Thus, users can achieve a hierarchy in self referance mode while loading the data on demand, at a later moment when it is requested. The data is populated in the **RowSourceNeeded** event of RadGridView.

[image](images/gridview-hirarchical-grid-hierarchy-load-on-demand-self-ref.PNG)

### How to use

The following information is required to implement the Load on Demand in Self-Reference grid, in order to visualize the data properly using this approach: 

* Information for rows on the top level(master template) of the self-reference hierarchy should be provided. This feature supporst only unbound mode of RadGridView.
* Information about which of the top level rows can be expanded is also required so that the grid should properly show an expander icon. 
* When this data in the bullets above is provided, then the RowSourceNeeded event will trigger to provide manually the expanded levels with data. 

You need to follow these steps to get the load on demand in self-referencing hierarchy working:

1\. Add desired columns to unbound RadGridView. 

2\. Add relation that represents the hierarchy structure. 


{{source=..\SamplesCS\GridView\HierarchicalGrid\LoadOnDemandInSelfRefGrid.cs region=SetupSelfReferenceLoadOnDemandGrid}} 
{{source=..\SamplesVB\GridView\HierarchicalGrid\LoadOnDemandInSelfRefGrid.vb region=SetupSelfReferenceLoadOnDemandGrid}} 

````C#
private void SetupSelfReferenceLoadOnDemandGrid()
{
    this.radGridView1.RowSourceNeeded += new GridViewRowSourceNeededEventHandler(RadGridView1_RowSourceNeeded);
    this.radGridView1.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
    this.radGridView1.AllowAddNewRow = false;

    GridViewDataColumn col = new GridViewDecimalColumn(typeof(int), "ID", "ID") { IsVisible = false };
    this.radGridView1.Columns.Add(col);
    col = new GridViewDecimalColumn(typeof(int), "ParentID", "ParentID") { IsVisible = false };
    this.radGridView1.Columns.Add(col);
    col = new GridViewTextBoxColumn("Name", "Name");
    this.radGridView1.Columns.Add(col);
    col = new GridViewDateTimeColumn("Date", "Date");
    this.radGridView1.Columns.Add(col);
    col = new GridViewTextBoxColumn("Type", "Type");
    this.radGridView1.Columns.Add(col);
    col = new GridViewDecimalColumn(typeof(int), "Size", "Size");
    this.radGridView1.Columns.Add(col);

    // Load on demand
    this.radGridView1.Relations.AddSelfReferenceLoadOnDemand(this.radGridView1.MasterTemplate, "ID", "ParentID");
}

````
````VB.NET
Private Sub SetupSelfReferenceLoadOnDemandGrid()
    AddHandler Me.RadGridView1.RowSourceNeeded, AddressOf RadGridView1_RowSourceNeeded
    Me.radGridView1.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill
    Me.radGridView1.AllowAddNewRow = False
    Dim col As GridViewDataColumn = New GridViewDecimalColumn(GetType(Integer), "ID", "ID") With {.IsVisible = False}
    Me.radGridView1.Columns.Add(col)
    col = New GridViewDecimalColumn(GetType(Integer), "ParentID", "ParentID") With {.IsVisible = False}
    Me.radGridView1.Columns.Add(col)
    col = New GridViewTextBoxColumn("Name", "Name")
    Me.radGridView1.Columns.Add(col)
    col = New GridViewDateTimeColumn("Date", "Date")
    Me.radGridView1.Columns.Add(col)
    col = New GridViewTextBoxColumn("Type", "Type")
    Me.radGridView1.Columns.Add(col)
    col = New GridViewDecimalColumn(GetType(Integer), "Size", "Size")
    Me.radGridView1.Columns.Add(col)
    Me.radGridView1.Relations.AddSelfReferenceLoadOnDemand(Me.radGridView1.MasterTemplate, "ID", "ParentID")
End Sub

````

{{endregion}} 


3\. Handle the **RowsourceNeeded** event to populate the data for each row.

{{source=..\SamplesCS\GridView\HierarchicalGrid\LoadOnDemandInSelfRefGrid.cs region=RowsourceNeeded}} 
{{source=..\SamplesVB\GridView\HierarchicalGrid\LoadOnDemandInSelfRefGrid.vb region=RowsourceNeeded}} 

````C#
private void RadGridView1_RowSourceNeeded(object sender, GridViewRowSourceNeededEventArgs e)
{
    if (e.ParentRow == null)
    {
        // First level of hierarchy
        var data = GetData(-1);
        foreach (var item in data)
        {
            GridViewHierarchyRowInfo row = new GridViewHierarchyRowInfo(e.Template.MasterViewInfo);
            row.Tag = item;
            row.Cells["ID"].Value = item.Id;
            row.Cells["ParentID"].Value = item.ParentId;
            row.Cells["Name"].Value = item.Name;
            row.Cells["Date"].Value = item.Date;
            row.Cells["Type"].Value = item.Type;
            row.Cells["Size"].Value = item.Size;

            // Setting this property will create Fully lazy mode for load on demand.
            row.IsExpandable = item.IsExpandable;
            e.SourceCollection.Add(row);
        }
    }
    else
    {
        FileSystemItem parentItem = e.ParentRow.Tag as FileSystemItem;
        if (parentItem.Type == "Folder")
        {
            var data = GetData(parentItem.Id);
            foreach (var item in data)
            {
                GridViewHierarchyRowInfo row = new GridViewHierarchyRowInfo(e.Template.MasterViewInfo);
                row.Tag = item;
                row.Cells["ID"].Value = item.Id;
                row.Cells["ParentID"].Value = item.ParentId;
                row.Cells["Name"].Value = item.Name;
                row.Cells["Date"].Value = item.Date;
                row.Cells["Type"].Value = item.Type;
                row.Cells["Size"].Value = item.Size;

                'Setting this property will create Fully lazy mode for load on demand.
                row.IsExpandable = item.IsExpandable;
                e.SourceCollection.Add(row);
            }
        }
    }
}

````
````VB.NET

Private Sub RadGridView1_RowSourceNeeded(sender As Object, e As GridViewRowSourceNeededEventArgs)
    If e.ParentRow Is Nothing Then
        Dim data = GetData(-1)

        For Each item In data
            Dim row As GridViewHierarchyRowInfo = New GridViewHierarchyRowInfo(e.Template.MasterViewInfo)
            row.Tag = item
            row.Cells("ID").Value = item.Id
            row.Cells("ParentID").Value = item.ParentId
            row.Cells("Name").Value = item.Name
            row.Cells("Date").Value = item.Date
            row.Cells("Type").Value = item.Type
            row.Cells("Size").Value = item.Size
            row.IsExpandable = item.IsExpandable
            e.SourceCollection.Add(row)
        Next
    Else
        Dim parentItem As FileSystemItem = TryCast(e.ParentRow.Tag, FileSystemItem)

        If parentItem.type = "Folder" Then
            Dim data = GetData(parentItem.Id)

            For Each item In data
                Dim row As GridViewHierarchyRowInfo = New GridViewHierarchyRowInfo(e.Template.MasterViewInfo)
                row.Tag = item
                row.Cells("ID").Value = item.Id
                row.Cells("ParentID").Value = item.ParentId
                row.Cells("Name").Value = item.Name
                row.Cells("Date").Value = item.Date
                row.Cells("Type").Value = item.Type
                row.Cells("Size").Value = item.Size
                row.IsExpandable = item.IsExpandable
                e.SourceCollection.Add(row)
            Next
        End If
    End If
End Sub


````

{{endregion}} 

4\. Load data that is passed in the RowSourceNeeded event.

{{source=..\SamplesCS\GridView\HierarchicalGrid\LoadOnDemandInSelfRefGrid.cs region=GetData}} 
{{source=..\SamplesVB\GridView\HierarchicalGrid\LoadOnDemandInSelfRefGrid.vb region=GetData}} 

````C#

private static List<FileSystemItem> GetData(int parentId)
{
    var collection = new List<FileSystemItem>();
    if (parentId < 0)
    {
        collection.Add(new FileSystemItem(1, null, "MyDocuments", DateTime.Now, "Folder", 1024, true));
        collection.Add(new FileSystemItem(4, null, "Windows", DateTime.Now, "Folder", 10240, false));
        collection.Add(new FileSystemItem(5, null, "Users", DateTime.Now, "Folder", 5120, true));
        collection.Add(new FileSystemItem(9, null, "Library", DateTime.Now, "Folder", 3260, true));
        collection.Add(new FileSystemItem(11, null, "Music", DateTime.Now, "Folder", 3680, true));
    }
    else if (parentId == 1)
    {
        collection.Add(new FileSystemItem(2, 1, "Salaries.xlsx", DateTime.Now, "File", 1, false));
        collection.Add(new FileSystemItem(3, 1, "RecesionAnalysis.xlsx", DateTime.Now, "File", 1, false));
    }
    else if (parentId == 5)
    {
        collection.Add(new FileSystemItem(6, 5, "Administrator", DateTime.Now, "Folder", 1512, false));
        collection.Add(new FileSystemItem(7, 5, "Guest", DateTime.Now, "Folder", 2515, false));
        collection.Add(new FileSystemItem(8, 5, "User", DateTime.Now, "Folder", 3512, false));
    }
    else if (parentId == 9)
    {
        collection.Add(new FileSystemItem(10, 9, "Program", DateTime.Now, "Folder", 512, false));
    }
    else if (parentId == 11)
    {
        collection.Add(new FileSystemItem(12, 11, "Podcasts", DateTime.Now, "Folder", 320, false));
        collection.Add(new FileSystemItem(13, 11, "Alternative", DateTime.Now, "Folder", 690, false));
        collection.Add(new FileSystemItem(14, 11, "Rock", DateTime.Now, "Folder", 715, false));
        collection.Add(new FileSystemItem(15, 11, "Classic", DateTime.Now, "Folder", 1060, false));
    }

    return collection;
}

public class FileSystemItem
{
    public FileSystemItem(int id, int? parentId, string name, DateTime date, string type, int size, bool isExpandable)
    {
        this.Id = id;
        this.ParentId = parentId;
        this.Name = name;
        this.Date = date;
        this.Type = type;
        this.Size = size;
        this.IsExpandable = isExpandable;
    }
    public int Id { get; set; }
    public int? ParentId { get; set; }
    public string Name { get; set; }
    public DateTime Date { get; set; }
    public string Type { get; set; }
    public int Size { get; set; }
    public bool IsExpandable { get; set; }
}

````
````VB.NET

Private Shared Function GetData(ByVal parentId As Integer) As List(Of FileSystemItem)
    Dim collection = New List(Of FileSystemItem)()
    If parentId < 0 Then
        collection.Add(New FileSystemItem(1, Nothing, "MyDocuments", DateTime.Now, "Folder", 1024, True))
        collection.Add(New FileSystemItem(4, Nothing, "Windows", DateTime.Now, "Folder", 10240, False))
        collection.Add(New FileSystemItem(5, Nothing, "Users", DateTime.Now, "Folder", 5120, True))
        collection.Add(New FileSystemItem(9, Nothing, "Library", DateTime.Now, "Folder", 3260, True))
        collection.Add(New FileSystemItem(11, Nothing, "Music", DateTime.Now, "Folder", 3680, True))
    ElseIf parentId = 1 Then
        collection.Add(New FileSystemItem(2, 1, "Salaries.xlsx", DateTime.Now, "File", 1, False))
        collection.Add(New FileSystemItem(3, 1, "RecesionAnalysis.xlsx", DateTime.Now, "File", 1, False))
    ElseIf parentId = 5 Then
        collection.Add(New FileSystemItem(6, 5, "Administrator", DateTime.Now, "Folder", 1512, False))
        collection.Add(New FileSystemItem(7, 5, "Guest", DateTime.Now, "Folder", 2515, False))
        collection.Add(New FileSystemItem(8, 5, "User", DateTime.Now, "Folder", 3512, False))
    ElseIf parentId = 9 Then
        collection.Add(New FileSystemItem(10, 9, "Program", DateTime.Now, "Folder", 512, False))
    ElseIf parentId = 11 Then
        collection.Add(New FileSystemItem(12, 11, "Podcasts", DateTime.Now, "Folder", 320, False))
        collection.Add(New FileSystemItem(13, 11, "Alternative", DateTime.Now, "Folder", 690, False))
        collection.Add(New FileSystemItem(14, 11, "Rock", DateTime.Now, "Folder", 715, False))
        collection.Add(New FileSystemItem(15, 11, "Classic", DateTime.Now, "Folder", 1060, False))
    End If
    Return collection
End Function

Public Class FileSystemItem
    Public Sub New(ByVal id As Integer, ByVal parentId As Integer?, ByVal name As String, ByVal [date] As DateTime, ByVal type As String, ByVal size As Integer, ByVal isExpandable As Boolean)
        Me.Id = id
        Me.ParentId = parentId
        Me.Name = name
        Me.Date = [date]
        Me.Type = type
        Me.Size = size
        Me.IsExpandable = isExpandable
    End Sub

    Public Property Id As Integer
    Public Property ParentId As Integer?
    Public Property Name As String
    Public Property [Date] As DateTime
    Public Property Type As String
    Public Property Size As Integer
    Public Property IsExpandable As Boolean
End Class


````

{{endregion}} 

>note Full example in C# and VB is available in our ***Demo >> RadGridView >> Hierarchy*** examples.

## See Also
* [Binding to Hierarchical Data Automatically]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data-automatically%})

* [Binding to Hierarchical Data Programmatically]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data-programmatically%})

* [Binding to Hierarchical Data]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data%})

* [Creating hierarchy using an XML data source]({%slug winforms/gridview/hierarchical-grid/creating-hierarchy-using-an-xml-data-source%})

* [Hierarchy of one to many relations]({%slug winforms/gridview/hierarchical-grid/hierarchy-of-one-to-many-relations%})

* [Load-On-Demand Hierarchy]({%slug winforms/gridview/hierarchical-grid/load-on-demand-hierarchy%})

* [Object Relational Hierarchy Mode]({%slug winforms/gridview/hierarchical-grid/object-relational-hierarchy-mode%})

* [Tutorial Binding to Hierarchical Data]({%slug winforms/gridview/hierarchical-grid/tutorial-binding-to-hierarchical-data%})


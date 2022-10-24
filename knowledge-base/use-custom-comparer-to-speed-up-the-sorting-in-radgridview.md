---
title: Use Custom Comparer to Speed up the Sorting in RadGridView
description: Use Custom Comparer to Speed up the Sorting in RadGridView. Check it now!
type: how-to
page_title: Use Custom Comparer to Speed up the Sorting in RadGridView
slug: use-custom-comparer-to-speed-up-the-sorting-in-radgridview
res_type: kb
---

|Date Posted|Product|Author|
|----|----|----|
|May 21, 2015|RadGridView for WinForms|[Dimitar Karamfilov](https://www.telerik.com/blogs/author/dimitar-karamfilov)|

## Problem

When sorting the **RadGridView** logic should retrieve all object properties  by using reflection. This is needed because the sorting must work with different kind of objects and should be able to compare them. Taking the property value with reflection is slow (this can be noted when you have large amount of rows in the grid) and can be avoided by using a custom comparer where the items are directly casted to the respective objects.   
   
## Solution

First, you need to implement the custom comparer class. This class should implement the **IComparer&lt;GridViewRowInfo&gt;** interface. This interface has only one method called **Compare**. It takes two arguments and their type is **GridViewRowInfo** (In general the class should be able to compare two rows and return the result).    
In addition you should have access to the **SortDescritors** collection of the grid view. This can be achieved by passing it to group comparer constructor. This will allow you to compare the rows according to all columns sort descriptors and the current sort direction.   
   
The **CompareDataItems** method should be able to compare all data object properties. This way the user will be able to sort each column.  
   
````C#
public class CustomComparer : IComparer<GridViewRowInfo>
{
    private SortDescriptorCollection sortDescriptors;
 
    public CustomComparer(SortDescriptorCollection sortDescriptors)
    {
        this.sortDescriptors = sortDescriptors;
    }
 
    public int Compare(GridViewRowInfo x, GridViewRowInfo y)
    {
        GridItem item1 = (GridItem)x.DataBoundItem;
        GridItem item2 = (GridItem)y.DataBoundItem;
 
        int result = 0;
 
        for (int i = 0; i < this.sortDescriptors.Count; i++)
        {
            result = this.CompareDataItems(item1, item2, this.sortDescriptors[i].PropertyName, this.sortDescriptors[i].Direction == ListSortDirection.Ascending);
 
            if (result != 0)
            {
                return result;
            }
        }
 
        return result;
    }
 
    private int CompareDataItems(GridItem x, GridItem y, string propertyName, bool ascending)
    {
        int asc = (ascending) ? 1 : -1;
 
        switch (propertyName)
        {
            case "TextValue":
                return x.TextValue.CompareTo(y.TextValue) * asc;
            case "IntValue":
                return x.IntValue.CompareTo(y.IntValue) * asc;
         
        }
 
        return 0;
    }
}

````
````VB.NET
Public Class CustomComparer
    Implements IComparer(Of GridViewRowInfo)
 
    Private sortDescriptors As SortDescriptorCollection
 
    Public Sub New(ByVal sortDescriptors As SortDescriptorCollection)
        Me.sortDescriptors = sortDescriptors
    End Sub
 
    Public Function Compare(ByVal x As GridViewRowInfo, ByVal y As GridViewRowInfo) As Integer Implements IComparer(Of GridViewRowInfo).Compare
        Dim item1 As GridItem = DirectCast(x.DataBoundItem, GridItem)
        Dim item2 As GridItem = DirectCast(y.DataBoundItem, GridItem)
 
        Dim result As Integer = 0
 
        For i As Integer = 0 To Me.sortDescriptors.Count - 1
            result = Me.CompareDataItems(item1, item2, Me.sortDescriptors(i).PropertyName, Me.sortDescriptors(i).Direction = ListSortDirection.Ascending)
 
            If result <> 0 Then
                Return result
            End If
        Next i
 
        Return result
    End Function
 
    Private Function CompareDataItems(ByVal x As GridItem, ByVal y As GridItem, ByVal propertyName As String, ByVal ascending As Boolean) As Integer
        Dim asc As Integer = If(ascending, 1, -1)
 
        Select Case propertyName
            Case "TextValue"
                Return x.TextValue.CompareTo(y.TextValue) * asc
            Case "IntValue"
                Return x.IntValue.CompareTo(y.IntValue) * asc
        End Select
 
        Return 0
    End Function
End Class

````  
   
To use the class assign new instance to the **SortComparer** property:  
 
````C#
radGridView1.MasterTemplate.SortComparer = new CustomComparer(this.radGridView1.SortDescriptors);

````
````VB.NET
radGridView1.MasterTemplate.SortComparer = New CustomComparer(Me.radGridView1.SortDescriptors)

````
   
You can use the following code to complete the example and test the sorting:  
   
````C#
public partial class RadForm1 : Telerik.WinControls.UI.RadForm
{
    Random rnd = new Random();
    BindingList<GridItem> data;
 
    public RadForm1()
    {
        InitializeComponent();
        data = new BindingList<GridItem>();
        for (int i = 0; i < 100000; i++)
        {
            data.Add(new GridItem("Text " + rnd.Next(100), i));
        }
 
        radGridView1.DataSource = data;
    }
}
 
public class GridItem
{
    public string TextValue { get; set; }
 
    public int IntValue { get; set; }
 
    public GridItem(string textValue, int intValue)
    {
        this.TextValue = textValue;
        this.IntValue = intValue;
    }
}

````
````VB.NET
Partial Public Class RadForm1
    Inherits Telerik.WinControls.UI.RadForm
 
    Private rnd As New Random()
    Private data As BindingList(Of GridItem)
 
    Public Sub New()
        InitializeComponent()
        data = New BindingList(Of GridItem)()
        For i As Integer = 0 To 99999
            data.Add(New GridItem("Text " & rnd.Next(100), i))
        Next i
 
        radGridView1.DataSource = data
         
    End Sub
End Class
 
Public Class GridItem
    Public Property TextValue() As String
 
    Public Property IntValue() As Integer
 
    Public Sub New(ByVal textValue As String, ByVal intValue As Integer)
        Me.TextValue = textValue
        Me.IntValue = intValue
    End Sub
End Class

````

>note A complete solution in C# and VB.NET can be found [here](https://github.com/telerik/winforms-sdk/tree/master/GridView/GridSortExtend).


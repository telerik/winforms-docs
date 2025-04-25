---
title: Getting Started
page_title: Getting Started - WinForms VirtualGrid Control
description: Learn how one can use WinForms VirtualGrid with a list which contains large amount of data.
slug: winforms/virtualgrid/getting-started
tags: virtualgrid, started
published: True
position: 2
---

# Getting Started with WinForms VirtualGrid

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadVirtualGrid` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadVirtualGrid

The example bellow demonstrates how one can use __RadVirtualGrid__ with a list which contains large amount of data. The example shows how you can use the control events to add or remove rows as well.

![WinForms RadVirtualGrid Getting Started](images/virtualgrid-getting-started001.png)

>note In order to use __RadVirtualGrid__ you should add reference to the __Telerik.WinControls.GridView__ assembly.
>

### Setting the form and adding data 
 
1\. Add a __RadVirtualGrid__ to a form and set its __Dock__ property to *Fill* .
2\. Add the following sample class to the project.

{{source=..\SamplesCS\VirtualGrid\VirtualGridGettingStarted.cs region=SampleClass}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridGettingStarted.vb region=SampleClass}}
````C#
        
public class CarPart
{
    public string Name { get; set; }
                
    public string Make { get; set; }
                
    public int PartID { get; set; }
                
    public string this[int i]
    {
        get
        {
            switch (i)
            {
                case 0:
                    return Name;
                case 1:
                    return Make;
                case 2:
                    return PartID.ToString();
                default:
                    return string.Empty;
            }
        }
    }
}

````
````VB.NET
Public Class CarPart
    Public Property Name() As String
    Public Property Make() As String
    Public Property PartID() As Integer
    Default Public ReadOnly Property Item(ByVal i As Integer) As String
        Get
            Select Case i
                Case 0
                    Return Name
                Case 1
                    Return Make
                Case 2
                    Return PartID.ToString()
                Case Else
                    Return String.Empty
            End Select
        End Get
    End Property
End Class

```` 

{{endregion}}

3\. Now you can create the list of objects which will be used as data source. In addition you can create an array that contains the column names.

{{source=..\SamplesCS\VirtualGrid\VirtualGridGettingStarted.cs region=CreateData}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridGettingStarted.vb region=CreateData}}
````C#
        
List<CarPart> data = new List<CarPart>();
private string[] columnNames = new string[]
{
    "Name",
    "Make",
    "PartId"
};
        
public VirtualGridGettingStarted()
{
    InitializeComponent();
    for (int i = 0; i < 1000000; i++)
    {
        data.Add(new CarPart()
        {
            Name = "Name " + i,
            Make = "Tesla",
            PartID = i
        });
    }
}

````
````VB.NET
Private data As New List(Of CarPart)()
Private columnNames() As String = {"Name", "Make", "PartId"}
Public Sub New()
    InitializeComponent()
    For i As Integer = 0 To 999999
        data.Add(New CarPart() With {
            .Name = "Name " & i,
            .Make = "Tesla",
            .PartID = i
        })
    Next i
End Sub

```` 

{{endregion}}

### Using the virtual grid

1\. To use the grid you should first specify the count of columns and rows. In addition, you should subscribe to the __CellValueNeeded__ and __CellValuePushed__ events which are used for populating the grid with data and updating the data source when values are changed:

{{source=..\SamplesCS\VirtualGrid\VirtualGridGettingStarted.cs region=InitGrid}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridGettingStarted.vb region=InitGrid}}
````C#
            
radVirtualGrid1.CellValueNeeded += RadVirtualGrid1_CellValueNeeded;
radVirtualGrid1.CellValuePushed += RadVirtualGrid1_CellValuePushed;
radVirtualGrid1.ColumnCount = columnNames.Length;
radVirtualGrid1.RowCount = data.Count;

````
````VB.NET
AddHandler radVirtualGrid1.CellValueNeeded, AddressOf RadVirtualGrid1_CellValueNeeded
AddHandler radVirtualGrid1.CellValuePushed, AddressOf RadVirtualGrid1_CellValuePushed
radVirtualGrid1.ColumnCount = columnNames.Length
radVirtualGrid1.RowCount = data.Count

```` 

{{endregion}}

2\. Now you can add the __CellValueNeeded__ event handler. In it we will retrieve the cell value and pass it to the grid according to the current row/column index. The event is fired for the header row so you can set the header cells text as well.

{{source=..\SamplesCS\VirtualGrid\VirtualGridGettingStarted.cs region=SetValue}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridGettingStarted.vb region=SetValue}}
````C#
        
private void RadVirtualGrid1_CellValueNeeded(object sender, VirtualGridCellValueNeededEventArgs e)
{
    if (e.ColumnIndex < 0)
        return;
        
    if (e.RowIndex == RadVirtualGrid.HeaderRowIndex)
    {
        e.Value = columnNames[e.ColumnIndex];
    }
    if (e.RowIndex >= 0 && e.RowIndex < data.Count)
    {
        e.Value = data[e.RowIndex][e.ColumnIndex];
    }
}

````
````VB.NET
Private Sub RadVirtualGrid1_CellValueNeeded(ByVal sender As Object, ByVal e As VirtualGridCellValueNeededEventArgs)
    If e.ColumnIndex < 0 Then
        Return
    End If
    If e.RowIndex = RadVirtualGrid.HeaderRowIndex Then
        e.Value = columnNames(e.ColumnIndex)
    End If
    If e.RowIndex >= 0 AndAlso e.RowIndex < data.Count Then
        e.Value = data(e.RowIndex)(e.ColumnIndex)
    End If
End Sub

```` 

{{endregion}}

3\. When a cell value is changed the __CellValuePushed__ event will fire. This will allow you to update the value in the data source:

{{source=..\SamplesCS\VirtualGrid\VirtualGridGettingStarted.cs region=UpdateValue}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridGettingStarted.vb region=UpdateValue}}
````C#
            
private void RadVirtualGrid1_CellValuePushed(object sender, VirtualGridCellValuePushedEventArgs e)
{
    switch (e.ColumnIndex)
    {
        case 0:
            data[e.RowIndex].Name = e.Value.ToString();
            break;
        case 1:
            data[e.RowIndex].Make = e.Value.ToString();
            break;
        case 2:
            data[e.RowIndex].PartID = Convert.ToInt32(e.Value.ToString());
            break;
        default:
            break;
    }
}

````
````VB.NET
Private Sub RadVirtualGrid1_CellValuePushed(ByVal sender As Object, ByVal e As VirtualGridCellValuePushedEventArgs)
    Select Case e.ColumnIndex
        Case 0
            data(e.RowIndex).Name = e.Value.ToString()
        Case 1
            data(e.RowIndex).Make = e.Value.ToString()
        Case 2
            data(e.RowIndex).PartID = Convert.ToInt32(e.Value.ToString())
        Case Else
    End Select
End Sub

```` 

{{endregion}}

### Add or remove rows

By default the end user can add or remove rows with the UI. When such operation is performed the __UserAddedRow__ or __UserDeletingRow__ events will fire. 

>note The user can delete multiple rows at once.
>

The following example shows how you can handle the above events and properly update the data source.
{{source=..\SamplesCS\VirtualGrid\VirtualGridGettingStarted.cs region=AddRemove}} 
{{source=..\SamplesVB\VirtualGrid\VirtualGridGettingStarted.vb region=AddRemove}}
````C#
        
private void RadVirtualGrid1_UserAddedRow(object sender, VirtualGridNewRowEventArgs e)
{
    data.Add(new CarPart()
    {
        Name = e.NewValues[0].ToString(),
        Make = e.NewValues[1].ToString(),
        PartID = Convert.ToInt32(e.NewValues[2].ToString())
    });
}
private void RadVirtualGrid1_UserDeletedRow(object sender, VirtualGridRowsEventArgs e)
{
    var indexesToRemove = e.RowIndices.ToList();
    
    for (int i = indexesToRemove.Count - 1; i >= 0; i--)
    {
        data.RemoveAt(indexesToRemove[i]);
    }
}

````
````VB.NET
Private Sub RadVirtualGrid1_UserAddedRow(ByVal sender As Object, ByVal e As VirtualGridNewRowEventArgs)
    data.Add(New CarPart() With {
        .Name = e.NewValues(0).ToString(),
        .Make = e.NewValues(1).ToString(),
        .PartID = Convert.ToInt32(e.NewValues(2).ToString())
    })
End Sub
Private Sub RadVirtualGrid1_UserDeletedRow(ByVal sender As Object, ByVal e As VirtualGridRowsEventArgs)
    Dim indexesToRemove = e.RowIndices.ToList()
    For i As Integer = indexesToRemove.Count - 1 To 0 Step -1
        data.RemoveAt(indexesToRemove(i))
    Next i
End Sub

```` 

{{endregion}}


## See Also
* [Busy Indicators]({%slug winforms/virtualgrid/busy-indicators%})

* [Copy/Paste/Cut]({%slug winforms/virtualgrid/copy-paste-cut%})

* [Scrolling]({%slug winforms/virtualgrid/scrolling%})

* [Overview]({%slug winforms/virtualgrid%})


## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms VirtualGrid Component](https://www.telerik.com/products/winforms/virtualgrid.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)


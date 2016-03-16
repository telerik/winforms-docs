---
title: Applying formatting only to cells in a child template
page_title: Applying formatting only to cells in a child template | UI for WinForms Documentation
description: Applying formatting only to cells in a child template
slug: winforms/gridview/hierarchical-grid/how-to/applying-formatting-only-to-cells-in-a-child-template
tags: applying,formatting,only,to,cells,in,a,child,template
published: True
position: 3
previous_url: gridview-hirarchical-grid-how-to-applying-formatting-only-to-cells-in-a-child-template
---

# Applying formatting only to cells in a child template



If the parent of the *view template* is not null, the cell element is located in a child template. 

## Example 1

This idea is used in the code snippet below so that the backcolor of the cells located only in the child templates is changed:

#### Changing the cells backcolor for cells located in a child template 

{{source=..\SamplesCS\GridView\HierarchicalGrid\HowTo\HowTo.cs region=example1}} 
{{source=..\SamplesVB\GridView\HierarchicalGrid\HowTo\HowTo1.vb region=example1}} 

````C#
void radGridView1_ViewCellFormatting(object sender, CellFormattingEventArgs e)
{
    if (e.CellElement.ViewTemplate.Parent != null)
    {
        e.CellElement.BackColor = Color.Yellow;
        e.CellElement.NumberOfColors = 1;
        e.CellElement.DrawFill = true;
    }
}

````
````VB.NET
Private Sub RadGridView1_ViewCellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.CellFormattingEventArgs) Handles RadGridView1.ViewCellFormatting
    If e.CellElement.ViewTemplate.Parent IsNot Nothing Then
        e.CellElement.BackColor = Color.Yellow
        e.CellElement.NumberOfColors = 1
        e.CellElement.DrawFill = True
    End If
End Sub

````

{{endregion}} 




##  Example 2

You can use the following code snippet to change the header height of the first level child template:

#### Changing the child template header row height 

{{source=..\SamplesCS\GridView\HierarchicalGrid\HowTo\HowTo.cs region=example2}} 
{{source=..\SamplesVB\GridView\HierarchicalGrid\HowTo\HowTo1.vb region=example2}} 

````C#
void radGridView1_ViewCellFormatting1(object sender, CellFormattingEventArgs e)
{
    if (e.CellElement.ViewTemplate.Parent != null)
    {
        e.CellElement.TableElement.TableHeaderHeight = 100;
    }
}

````
````VB.NET
Private Sub RadGridView1_ViewCellFormatting1(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.CellFormattingEventArgs) Handles RadGridView1.ViewCellFormatting
    If e.CellElement.ViewTemplate.Parent IsNot Nothing Then
        e.CellElement.TableElement.TableHeaderHeight = 100
    End If
End Sub

````

{{endregion}} 




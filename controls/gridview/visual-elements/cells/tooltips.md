---
title: ToolTips
page_title: ToolTips - WinForms GridView Control
description: WinForms GridView allows you to show tooltips for different RadGridView elements. 
slug: winforms/gridview/cells/tooltips
tags: tooltips
published: True
position: 5
previous_url: gridview-cells-tooltips
---

# ToolTips

There are two ways to assign tooltips to cells in __RadGridView__, namely setting the __ToolTipText__ property of a *CellElement* in the __CellFormatting__ event handler, or as in most of the RadControls by using the __ToolTipTextNeeded__ event.

## Setting tooltips in the CellFormatting event handler

The code snippet below demonstrates how you can assign a tooltip to a data cell.

{{source=..\SamplesCS\GridView\Cells\ToolTips1.cs region=CellFormatting}} 
{{source=..\SamplesVB\GridView\Cells\ToolTips1.vb region=CellFormatting}} 

````C#
void radGridView1_CellFormatting(object sender, Telerik.WinControls.UI.CellFormattingEventArgs e)
{
    if (e.Row is GridViewDataRowInfo)
    {
        e.CellElement.ToolTipText = "Tooltip: " + e.CellElement.Text;
    }
}

````
````VB.NET
Private Sub RadGridView1_CellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.CellFormattingEventArgs) Handles RadGridView1.CellFormatting
    If TypeOf e.Row Is GridViewDataRowInfo Then
        e.CellElement.ToolTipText = "Tooltip: " & e.CellElement.Text
    End If
End Sub

````

{{endregion}} 

>caption Figure 1: Using the formatting event to set the tooltips.

![WinForms RadGridView Using the formatting event to set the tooltips](images/gridview-cells-tooltips001.png)

## Setting tooltips in the ToolTipTextNeeded event

The code snippet below demonstrates how you can use __ToolTipTextNeeded__ event handler to set __ToolTipText__ for the given __CellElement__.

{{source=..\SamplesCS\GridView\Cells\ToolTips1.cs region=ToolTipTextNeeded}} 
{{source=..\SamplesVB\GridView\Cells\ToolTips1.vb region=ToolTipTextNeeded}} 

````C#
private void radGridView1_ToolTipTextNeeded(object sender, Telerik.WinControls.ToolTipTextNeededEventArgs e)
{
    GridDataCellElement cell = sender as GridDataCellElement;
    if (cell != null && cell.ColumnInfo.Name == "Name")
    {
        e.ToolTipText = cell.Value.ToString();
    }
}

````
````VB.NET
Private Sub RadGridView1_ToolTipTextNeeded(sender As Object, e As Telerik.WinControls.ToolTipTextNeededEventArgs) Handles RadGridView1.ToolTipTextNeeded
    Dim cell As GridDataCellElement = TryCast(sender, GridDataCellElement)
    If cell IsNot Nothing AndAlso cell.ColumnInfo.Name = "Name" Then
        e.ToolTipText = cell.Value.ToString()
    End If
End Sub

````

{{endregion}} 

>caption Figure 2: Using the ToolTipTextNeeded event.

![WinForms RadGridView Using the ToolTipTextNeeded event](images/gridview-cells-tooltips002.png)

>note The *ToolTipTextNeeded* event has higher priority and overrides the tooltips set in CellFormatting event handler.
>

# See Also
* [Accessing and Setting the CurrentCell]({%slug winforms/gridview/cells/accessing-and-setting-the-currentcell%})

* [Accessing Cells]({%slug winforms/gridview/cells/accessing-cells%})

* [Conditional Formatting Cells]({%slug winforms/gridview/cells/conditional-formatting-cells%})

* [Creating Custom Cells]({%slug winforms/gridview/cells/creating-custom-cells%})

* [Formatting Cells]({%slug winforms/gridview/cells/formatting-cells%})

* [GridViewCellInfo]({%slug winforms/gridview/cells/gridviewcellinfo%})

* [Iterating Cells]({%slug winforms/gridview/cells/iterating-cells%})

* [Painting and Drawing in Cells]({%slug winforms/gridview/cells/painting-and-drawing-in-cells%})

* [Show Tooltips for Clipped Cell's Text]({%slug show-tooltips-for-clipped-cell-text%})


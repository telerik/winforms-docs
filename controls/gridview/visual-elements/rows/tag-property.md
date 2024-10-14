---
title: Tag property
page_title: Tag property - RadGridView
description: Each row has a Tag property of type object where you can store a custom object.
slug: winforms/gridview/rows/tag-property
tags: tag,property
published: True
position: 9
previous_url: gridview-rows-tag-property
---

# Tag property

Each row has a __Tag__ property of type object where you can store a custom object.

#### Setting the Tag property of a row 

{{source=..\SamplesCS\GridView\Rows\TagProperty.cs region=assignTagProperty}} 
{{source=..\SamplesVB\GridView\Rows\TagProperty.vb region=assignTagProperty}} 

````C#
 
this.radGridView1.Rows[1].Tag = "Some tag";

````
````VB.NET
 
Me.RadGridView1.Rows(1).Tag = "Some tag"

````

{{endregion}}

#### Setting the Tag property of cells in CellFormatting event.

{{source=..\SamplesCS\GridView\Rows\TagProperty.cs region=setTagInCellFormatting}} 
{{source=..\SamplesVB\GridView\Rows\TagProperty.vb region=setTagInCellFormatting}} 

````C#
void radGridView1_CellFormatting(object sender, Telerik.WinControls.UI.CellFormattingEventArgs e)
{
    if (e.CellElement.RowIndex % 2 == 0)
    {
        e.CellElement.RowInfo.Tag = "Some tag";
    }
    else
    {
        e.CellElement.RowInfo.Tag = "Hide row";
    }
}

````
````VB.NET
Private Sub RadGridView1_CellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.CellFormattingEventArgs) Handles RadGridView1.CellFormatting
    If (e.CellElement.RowIndex Mod 2 = 0) Then
        e.CellElement.RowInfo.Tag = "Some tag"
    Else
        e.CellElement.RowInfo.Tag = "Hide row"
    End If
End Sub

````

{{endregion}} 

#### Collapsing all rows with the specified tag 

The most natural place to use the tag is in some of the row/cell events. For example, to make the content of certain cells invisible use the following code:

{{source=..\SamplesCS\GridView\Rows\TagProperty.cs region=hideRowsWithSpecifiedTag}} 
{{source=..\SamplesVB\GridView\Rows\TagProperty.vb region=hideRowsWithSpecifiedTag}} 

````C#
void radGridView1_CellFormatting1(object sender, Telerik.WinControls.UI.CellFormattingEventArgs e)
{
    if (e.CellElement.RowInfo.Tag is String && (string)e.CellElement.RowInfo.Tag == "Hide row")
    {
        e.CellElement.Visibility = Telerik.WinControls.ElementVisibility.Collapsed;
    }
}

````
````VB.NET
Private Sub RadGridView1_CellFormatting1(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.CellFormattingEventArgs) Handles RadGridView1.CellFormatting
    If TypeOf e.CellElement.RowInfo.Tag Is [String] AndAlso DirectCast(e.CellElement.RowInfo.Tag, String) = "Hide row" Then
            e.CellElement.Visibility = Telerik.WinControls.ElementVisibility.Collapsed
        End If
    End Sub

````

{{endregion}}

>note Cells also have Tag property but it differs substantially from rows one because of the UI Virtualization. Cells are reused and when you scroll the tag value remains unchanged while cell data value is updated.
>

# See Also
* [Adding and Inserting Rows]({%slug winforms/gridview/rows/adding-and-inserting-rows%})

* [Conditional Formatting Rows]({%slug winforms/gridview/rows/conditional-formatting-rows%})

* [Creating custom rows]({%slug winforms/gridview/rows/creating-custom-rows%})

* [Drag and Drop]({%slug winforms/gridview/rows/drag-and-drop%})

* [Formatting Rows]({%slug winforms/gridview/rows/formatting-rows%})

* [GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%})

* [Iterating Rows]({%slug winforms/gridview/rows/iterating-rows%})

* [New Row]({%slug winforms/gridview/rows/new-row%})


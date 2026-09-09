---
title: Applying formatting only to cells in a child template
page_title: Applying formatting only to cells in a child template - RadGridView
description: This article shows how you can apply formatting only to cells in a child template.
components: ["gridview"]
slug: winforms/gridview/hierarchical-grid/how-to/applying-formatting-only-to-cells-in-a-child-template
tags: applying,formatting,only,to,cells,in,a,child,template
published: True
position: 3
previous_url: gridview-hirarchical-grid-how-to-applying-formatting-only-to-cells-in-a-child-template
---

# Applying formatting only to cells in a child template

If the parent of the *view template* is not null, the cell element is located in a child template. 

### Example 1

This idea is used in the code snippet below so that the BackColor of the cells located only in the child templates is changed:

#### Changing the cells BackColor for cells located in a child template 

<snippet id='gridview-howto-example1-cs' />
<snippet id='gridview-howto1-example1-vb' />

###  Example 2

You can use the following code snippet to change the header height of the first level child template:

#### Changing the child template header row height 

<snippet id='gridview-howto-example2-cs' />
<snippet id='gridview-howto1-example2-vb' />

### Example 3

To change the background color of **header** cells belonging only to child templates, handle the `ViewCellFormatting` event:

#### Highlighting Child Header Cells

````C#
private void radGridView1_ViewCellFormatting(object sender, CellFormattingEventArgs e)
{
    if (e.CellElement is GridHeaderCellElement && e.CellElement.ViewTemplate.Parent != null)
    {
        e.CellElement.DrawFill = true;
        e.CellElement.GradientStyle = GradientStyles.Solid;
        e.CellElement.BackColor = Color.LightYellow;
    }
    else if (e.CellElement is GridHeaderCellElement)
    {
        e.CellElement.ResetValue(LightVisualElement.BackColorProperty, ValueResetFlags.Local);
        e.CellElement.ResetValue(LightVisualElement.GradientStyleProperty, ValueResetFlags.Local);
        e.CellElement.ResetValue(LightVisualElement.DrawFillProperty, ValueResetFlags.Local);
    }
}
````
````VB.NET
Private Sub RadGridView1_ViewCellFormatting(ByVal sender As Object, ByVal e As CellFormattingEventArgs)
    If TypeOf e.CellElement Is GridHeaderCellElement AndAlso e.CellElement.ViewTemplate.Parent IsNot Nothing Then
        e.CellElement.DrawFill = True
        e.CellElement.GradientStyle = GradientStyles.Solid
        e.CellElement.BackColor = Color.LightYellow
    ElseIf TypeOf e.CellElement Is GridHeaderCellElement Then
        e.CellElement.ResetValue(LightVisualElement.BackColorProperty, ValueResetFlags.Local)
        e.CellElement.ResetValue(LightVisualElement.GradientStyleProperty, ValueResetFlags.Local)
        e.CellElement.ResetValue(LightVisualElement.DrawFillProperty, ValueResetFlags.Local)
    End If
End Sub
````

# See Also
* [Accessing Child Templates]({%slug winforms/gridview/hierarchical-grid/how-to/accessing-child-templates%})

* [Expanding all rows]({%slug winforms/gridview/hierarchical-grid/how-to/expanding-all-rows%})

* [Iterating the child rows collection of a chosen parent row in hierarchy RadGridView]({%slug winforms/gridview/hierarchical-grid/how-to/iterating-the-child-rows-collection-of-a-chosen-parent-row-in-hierarchy-radgridview%})

* [Resizing child GridViewInfo]({%slug winforms/gridview/hierarchical-grid/how-to/resizing-child-gridviewinfo%})


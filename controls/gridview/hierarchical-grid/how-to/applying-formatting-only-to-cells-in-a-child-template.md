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

# Apply Formatting Only To Cells in a Child Template

In a hierarchical RadGridView, a cell belongs to a child template when its `ViewTemplate.Parent` property is not `null`. Use this condition in a `ViewCellFormatting` event to limit visual changes to child templates only.

### Example 1: Format Data Cells in Child Templates

Use the following example to change the `BackColor` of data cells in child templates only:

<snippet id='gridview-howto-example1-cs' />
<snippet id='gridview-howto1-example1-vb' />

### Example 2: Set the Header Height in a Child Template

Use the following example to change the header height of the first-level child template:

<snippet id='gridview-howto-example2-cs' />
<snippet id='gridview-howto1-example2-vb' />

### Example 3: Highlight Header Cells in Child Templates

Use the following example to change the background color of header cells and highlight them only in child templates.

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


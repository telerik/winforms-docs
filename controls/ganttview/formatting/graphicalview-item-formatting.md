---
title: GraphicalView Item Formatting
page_title: GraphicalView Item Formatting - RadGanttView
description: The GraphicalViewItemFormatting event allows you to change the style and looks of the items displayed in the graphical view. 
slug: winforms/ganttview-/formatting/graphicalview-item-formatting
tags: graphicalview,item,formatting
published: True
position: 1
previous_url: ganttview-formatting-graphicalviewitem-formatting
---

# GraphicalView Item Formatting

The __GraphicalViewItemFormatting__ event allows you to change the style and looks of the items displayed in the graphical view. The following example demonstrates how to format all tasks that involve some selection e.g. their title starts with "Select".
        
{{source=..\SamplesCS\GanttView\Formatting\GraphicalViewItemFormatting.cs region=GraphicalViewItemFormatting}} 
{{source=..\SamplesVB\GanttView\Formatting\GraphicalViewItemFormatting.vb region=GraphicalViewItemFormatting}} 

````C#
private void radGanttView1_GraphicalViewItemFormatting(object sender, GanttViewGraphicalViewItemFormattingEventArgs e)
{
    if (e.Item.Title.StartsWith("Select"))
    {
        e.ItemElement.TaskElement.BackColor = Color.Lime;
    }
    else
    {
        e.ItemElement.TaskElement.ResetValue(LightVisualElement.BackColorProperty, Telerik.WinControls.ValueResetFlags.Local);
    }
}

````
````VB.NET
Private Sub radGanttView1_GraphicalViewItemFormatting(sender As Object, e As GanttViewGraphicalViewItemFormattingEventArgs)
    If (e.Item.Title.StartsWith("Select")) Then
        e.ItemElement.TaskElement.BackColor = Color.Lime
    Else
        e.ItemElement.TaskElement.ResetValue(LightVisualElement.BackColorProperty, Telerik.WinControls.ValueResetFlags.Local)
    End If
End Sub

````

{{endregion}} 


![WinForms RadGanttView GraphicalView Item Formatting](images/ganttview-formatting-graphicalviewitem-formatting001.png)

# See Also

* [Custom Painting]({%slug winforms/ganttview-/formatting/custom-painting%})
* [GraphicalView Link Item formatting]({%slug winforms/ganttview-/formatting/graphicalview-link-item-formatting%})
* [TextView item formatting]({%slug winforms/ganttview-/formatting/textview-item-formatting%})
* [Themes]({%slug winforms/ganttview/themes%})
* [Timeline item formatting]({%slug winforms/ganttview-/formatting/timeline-item-formatting%})

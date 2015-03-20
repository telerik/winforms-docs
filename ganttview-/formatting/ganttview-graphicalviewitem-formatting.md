---
title: GraphicalView item formatting
page_title: GraphicalView item formatting
description: GraphicalView item formatting
slug: ganttview-formatting-graphicalviewitem-formatting
tags: graphicalview,item,formatting
published: True
position: 1
---

# GraphicalView item formatting



## 

The __GraphicalViewItemFormatting__ event allows you to change the style and looks of the items displayed in the 
          graphical view. The following example demonstrates how to format all tasks that involve some selection e.g.
          their title starts with “Select”.
        

#### __[C#] __

{{region GraphicalViewItemFormatting}}
	        private void radGanttView1_GraphicalViewItemFormatting(object sender, GanttViewGraphicalViewItemFormattingEventArgs e)
	        {
	            if (e.Item.Title.StartsWith("Select"))
	            {
	                e.ItemElement.TaskElement.BackColor = Color.Lime;
	                e.ItemElement.TaskElement.BackColor2 = Color.Yellow;
	            }
	            else
	            {
	                e.ItemElement.TaskElement.ResetValue(LightVisualElement.BackColorProperty, Telerik.WinControls.ValueResetFlags.Local);
	                e.ItemElement.TaskElement.ResetValue(LightVisualElement.BackColor2Property, Telerik.WinControls.ValueResetFlags.Local);
	            }
	        }
	{{endregion}}



#### __[VB.NET] __

{{region GraphicalViewItemFormatting}}
	    Private Sub radGanttView1_GraphicalViewItemFormatting(sender As Object, e As GanttViewGraphicalViewItemFormattingEventArgs)
	        If (e.Item.Title.StartsWith("Select")) Then
	            e.ItemElement.TaskElement.BackColor = Color.Lime
	            e.ItemElement.TaskElement.BackColor2 = Color.Yellow
	        Else
	            e.ItemElement.TaskElement.ResetValue(LightVisualElement.BackColorProperty, Telerik.WinControls.ValueResetFlags.Local)
	            e.ItemElement.TaskElement.ResetValue(LightVisualElement.BackColor2Property, Telerik.WinControls.ValueResetFlags.Local)
	        End If
	    End Sub
	{{endregion}}

![ganttview-formatting-graphicalviewitem-formatting 001](images/ganttview-formatting-graphicalviewitem-formatting001.png)

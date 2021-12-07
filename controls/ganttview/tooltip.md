---
title: ToolTip
page_title: ToolTip - WinForms GanttView Control
description: GanttView supports ToolTip for its elements.
slug: ganttview-tooltip
tags: tooltips,tooltiptextneeded
published: True
position: 16
previous_url: ganttview-tooltip
---

# Tooltip
 
To set a ToolTip value to the RadGanttView elements, we can use the __ToolTipTextNeeded__ event. In its event handler we can set different value of __ToolTipText__ property for the currently hover element. 

![ganttview-today-indicator 001](images/ganttview-tooltip001.png)


{{source=..\SamplesCS\GanttView\TodayIndicator\TodayIndicator.cs region=ToolTip}} 
{{source=..\SamplesVB\GanttView\TodayIndicator\TodayIndicator.vb region=ToolTip}} 

The code snippet below demonstrates how you can use ToolTipTextNeeded event handler to set ToolTipText for the given element.

````C#
private void radGanttView1_ToolTipTextNeeded(object sender, ToolTipTextNeededEventArgs e)
{
    GanttViewTaskElement taskElement = sender as GanttViewTaskElement;
    GanttViewMilestoneElement mileStone = sender as GanttViewMilestoneElement;
    GanttViewSummaryElement summaryItem = sender as GanttViewSummaryElement;


    if (mileStone != null)
    {
        GanttViewMilestoneItemElement itemElement = mileStone.Parent as GanttViewMilestoneItemElement;

        e.ToolTipText = itemElement.Data.Title + " : " + itemElement.Data.Start.ToShortDateString() + " - " + itemElement.Data.End.ToShortDateString();
    }

    if (summaryItem != null)
    {
        GanttGraphicalViewBaseItemElement itemElement = summaryItem.Parent as GanttGraphicalViewBaseItemElement;

        e.ToolTipText = itemElement.Data.Title + " : " + itemElement.Data.Start.ToShortDateString() + " - " + itemElement.Data.End.ToShortDateString();
    }

    if (taskElement != null)
    {
        GanttGraphicalViewBaseItemElement itemElement = taskElement.Parent as GanttGraphicalViewBaseItemElement;

        if (itemElement != null)
            e.ToolTipText = itemElement.Data.Title + " : " + itemElement.Data.Start.ToShortDateString() + " - " + itemElement.Data.End.ToShortDateString();
    }
}

````
````VB.NET
Private Sub radGanttView1_ToolTipTextNeeded(sender As Object, e As ToolTipTextNeededEventArgs)
        Dim taskElement As GanttViewTaskElement = TryCast(sender, GanttViewTaskElement)
        Dim mileStone As GanttViewMilestoneElement = TryCast(sender, GanttViewMilestoneElement)
        Dim summaryItem As GanttViewSummaryElement = TryCast(sender, GanttViewSummaryElement)


        If mileStone IsNot Nothing Then
            Dim itemElement As GanttViewMilestoneItemElement = TryCast(mileStone.Parent, GanttViewMilestoneItemElement)

            e.ToolTipText = itemElement.Data.Title & " : " & itemElement.Data.Start.ToShortDateString() & " - " + itemElement.Data.[End].ToShortDateString()
        End If

        If summaryItem IsNot Nothing Then
            Dim itemElement As GanttGraphicalViewBaseItemElement = TryCast(summaryItem.Parent, GanttGraphicalViewBaseItemElement)

            e.ToolTipText = itemElement.Data.Title & " : " & itemElement.Data.Start.ToShortDateString() & " - " + itemElement.Data.[End].ToShortDateString()
        End If

        If taskElement IsNot Nothing Then
            Dim itemElement As GanttGraphicalViewBaseItemElement = TryCast(taskElement.Parent, GanttGraphicalViewBaseItemElement)

            If itemElement IsNot Nothing Then
                e.ToolTipText = itemElement.Data.Title & " : " & itemElement.Data.Start.ToShortDateString() & " - " + itemElement.Data.[End].ToShortDateString()
            End If
        End If
    End Sub

````

{{endregion}} 


# See Also

* [Properties]({%slug winforms/ganttview/properties%})

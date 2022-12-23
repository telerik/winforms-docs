---
title: Today Indicator
page_title: Today Indicator - WinForms GanttView Control
description: GanttView's today indicator represents the current date and time in the graphical view.
slug: winforms/ganttview-/today-indicator
tags: today,indicator
published: True
position: 15
previous_url: ganttview-today-indicator
---

# Today Indicator
 
The today indicator represents the current date and time in the graphical view of __RadGanttView__. There are two indicators you can show. One is positioned over the timeline and the other is directly over the graphical view. 

![WinForms RadGanttView Today Indicator](images/ganttview-today-indicator001.png)

You can control which one is visible through the __ShowTodayIndicator__ and the __ShowTimelineTodayIndicator__ properties.

You can also directly access the two indicators: 

{{source=..\SamplesCS\GanttView\TodayIndicator\TodayIndicator.cs region=IndicatorsAccess}} 
{{source=..\SamplesVB\GanttView\TodayIndicator\TodayIndicator.vb region=IndicatorsAccess}} 

````C#
GanttViewTodayIndicatorElement todayIndicator = this.radGanttView1.GanttViewElement.GraphicalViewElement.TodayIndicatorElement;
todayIndicator.BackColor = Color.Red;
todayIndicator.BackColor2 = Color.Red;
GanttViewTimelineTodayIndicatorElement timelineTodayIndicator = this.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineTodayIndicatorElement;
timelineTodayIndicator.BackColor = Color.Green;
timelineTodayIndicator.BackColor2 = Color.Green;

````
````VB.NET
Dim todayIndicator As GanttViewTodayIndicatorElement = Me.radGanttView1.GanttViewElement.GraphicalViewElement.TodayIndicatorElement
todayIndicator.BackColor = Color.Red
todayIndicator.BackColor2 = Color.Red
Dim timelineTodayIndicator As GanttViewTimelineTodayIndicatorElement = Me.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineTodayIndicatorElement
timelineTodayIndicator.BackColor = Color.Green
timelineTodayIndicator.BackColor2 = Color.Green

````

{{endregion}} 


# See Also

* [Properties]({%slug winforms/ganttview/properties%})

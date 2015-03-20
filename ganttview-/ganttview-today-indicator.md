---
title: Today Indicator
page_title: Today Indicator
description: Today Indicator
slug: ganttview-today-indicator
tags: today,indicator
published: True
position: 10
---

# Today Indicator



The today indicator represents the current date and time in the graphical view of RadGanttView. There are two indicators you can show. One is positioned over the timeline and the other is directly over the graphical view. ![ganttview-today-indicator 001](images/ganttview-today-indicator001.png)

## 

You can control which one is visible through the __ShowTodayIndicator__ and the __ShowTimelineTodayIndicator__ properties.

You can also directly access the two indicators:

#### __[C#]__

{{region IndicatorsAccess}}
	            GanttViewTodayIndicatorElement todayIndicator = this.radGanttView1.GanttViewElement.GraphicalViewElement.TodayIndicatorElement;
	            todayIndicator.BackColor = Color.Red;
	            todayIndicator.BackColor2 = Color.Red;
	            GanttViewTimelineTodayIndicatorElement timelineTodayIndicator = this.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineTodayIndicatorElement;
	            timelineTodayIndicator.BackColor = Color.Green;
	            timelineTodayIndicator.BackColor2 = Color.Green;
	{{endregion}}



#### __[VB.NET]__

{{region IndicatorsAccess}}
	        Dim todayIndicator As GanttViewTodayIndicatorElement = Me.radGanttView1.GanttViewElement.GraphicalViewElement.TodayIndicatorElement
	        todayIndicator.BackColor = Color.Red
	        todayIndicator.BackColor2 = Color.Red
	        Dim timelineTodayIndicator As GanttViewTimelineTodayIndicatorElement = Me.radGanttView1.GanttViewElement.GraphicalViewElement.TimelineTodayIndicatorElement
	        timelineTodayIndicator.BackColor = Color.Green
	        timelineTodayIndicator.BackColor2 = Color.Green
	{{endregion}}



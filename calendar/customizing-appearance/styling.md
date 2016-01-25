---
title: Styling
page_title: Styling | UI for WinForms Documentation
description: Styling
slug: winforms/calendar/customizing-appearance/styling
tags: styling
published: True
position: 0
previous_url: calendar-customizing-appearance-styling
---

# Styling



## 

__RadCalendar__ can be fully styled through the __Visual Style Builder__. 

Every visual element is inherited from the __CalendarVisualElement__. Some of the most important properties are:

1. __BackColor__ - Gets or sets the back color which will be used in the gradient fill. 


1. __BackColor2__ - Gets or sets the second back color which will be used in the gradient fill. 


1. __BackColor3__ - Gets or sets the third back color which will be used in the gradient fill. 


1. __BackColor4__ - Gets or sets the fourth back color which will be used in the gradient fill. 


1. __NumberOfColors__ - Gets or sets the number of back colors which will take effect in the gradient fill. 


1. __GradientStyles__ - Gets or sets the gradient style which will be used in the gradient fill. 


1. __BorderBoxStyle__ -  Gets or sets the type of border for the visual element. 


1. __BorderColor__ -  Gets or sets the border color. 


1. __BorderColor2__ - Gets or sets the second border color. 


1. __BorderColor3__ - Gets or sets the third border color. 


1. __BorderColor4__ - Gets or sets the fourth border color. 


1. __BorderWidth__ - Gets or sets the width of the visual element's border 


1. __DrawFill__ - Gets or sets whether the gradient fill of the visual element should be drawn. 


1. __DrawBorder__ - Gets or sets whether the border of the visual element should be drawn. 


1. __BorderGradientStyle__ - Gets or sets the border gradient style.

The __CalendarTableElement__ corresponds to a single month view in __RadCalendar__. The __CalendarTableElement__ is the container of RadCalendar cells that represent the days of the month.  

Each day is represented by an instance of __CalendarCellElement__. The logical states of the day are embodied in the __CalendarCellElement__ properties shown below. 

1. __WeekEnd -__ Indicates that the visual element is representing a week end day. 

1. __OtherMonth -__  Indicates that the visual element is representing a day from another month. 


1. __Selected -__ Indicates whether the current visual element is selected 


1. __Today -__ Indicates whether the visual element is representing the current day. 


1. __Focused -__ Indicates whether the visual element is focused. 


1. __IsZooming -__ Indicates whether the visual element is in zoom-mode. 


1. __IsHeader -__ Indicates whether the visual element is representing a header cell. 


1. __SpecialDay -__ Indicates whether the visual element is representing a special day. 


1. __OutOfRange -__ Indicates whether the visual element is representing a day which is out of the specified range.

The logical states represented by these properties can be mapped to styles in __Visual Style Builder__.

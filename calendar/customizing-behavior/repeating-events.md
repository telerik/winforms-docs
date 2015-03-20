---
title: Repeating Events
page_title: Repeating Events
description: Repeating Events
slug: calendar-customizing-behavior-repeating-events
tags: repeating,events
published: True
position: 7
---

# Repeating Events



## 

A __RadCalendarDay__ object can be configured as a repeating event by setting the __Recurring__ to one of the following __RecurringEvents__ enumeration values.

1. __DayInMonth__ - Only the day part of the date is taken into account. That gives the ability to serve events repeated every month on the same day.
            

1. __DayAndMonth__ - The month and the day part of the date are taken into account. That gives the ability to serve events repeated in specific month on the same day.
            

1. __Week__ - The week day is taken into account. That gives the ability to serve events repeated in a specific day of the week.
            

1. __WeekAndMonth__ - The week day and the month are taken into account. That gives the ability to serve events repeated in a specific week day in a specific month.
            

1. __Today__ - Gives the ability to control the visual appearance of today's day.
            

1. __None__ - Default value - means that the day in question is a single point event, no recurrence.
            

The example below creates a RadCalendarDay and assigns the __Date__. The __Recurring__ value of __DayInMonth__causes the day to show for the 5th of every month.![calendar-customizing-behavior-repeating-events 001](images/calendar-customizing-behavior-repeating-events001.png)

#### __[C#] Configuring a recurring event__

{{region calendarDays}}
	            RadCalendarDay day = new RadCalendarDay();
	            day.Date = new DateTime(2011, 2, 5, 0, 0, 0, 0);
	            day.Recurring = RecurringEvents.DayInMonth;
	            day.Selectable = false;
	            radCalendar1.SpecialDays.Add(day);
	{{endregion}}



#### __[VB.NET] Configuring a recurring event__

{{region calendarDays}}
	        Dim day As New RadCalendarDay()
	        day.Date = New DateTime(2011, 2, 5, 0, 0, 0, 0)
	        day.Recurring = RecurringEvents.DayInMonth
	        day.Selectable = False
	        RadCalendar1.SpecialDays.Add(day)
	{{endregion}}



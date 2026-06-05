---
title: Repeating Events
page_title: Repeating Events - WinForms Calendar Control
description: RadCalendarDay can be configured as a repeating event by setting the Recurring property.
slug: winforms/calendar/customizing-behavior/repeating-events
tags: repeating,events
published: True
position: 7
previous_url: calendar-customizing-behavior-repeating-events, /calendar/customizing-behavior/repeating-events
---

# Repeating Events


A __RadCalendarDay__ object can be configured as a repeating event by setting the __Recurring__ property to one of the following __RecurringEvents__ enumeration values.

* __DayInMonth__ - Only the day part of the date is taken into account. That gives the ability to serve events repeated every month on the same day.
            

* __DayAndMonth__ - The month and the day part of the date are taken into account. That gives the ability to serve events repeated in specific month on the same day.
            

* __Week__ - The week day is taken into account. That gives the ability to serve events repeated in a specific day of the week.
            

* __WeekAndMonth__ - The week day and the month are taken into account. That gives the ability to serve events repeated in a specific week day in a specific month.
            

* __Today__ - Gives the ability to control the visual appearance of today's day.
            

* __None__ - Default value - means that the day in question is a single point event, no recurrence.
            

The example below creates a __RadCalendarDay__ and assigns the __Date__. The __Recurring__ value of __DayInMonth__ causes the day to show for the 5th of every month.

![WinForms RadCalendar Repeating Events](images/calendar-features-repeating-events001.png)

__Configuring a recurring event__

<snippet id='calendar-features-repeating-events-calendardays-cs' />
<snippet id='calendar-features-repeating-events-calendardays-vb' />



## See Also

* [Header]({%slug winforms/calendar/customizing-appearance/header%})
* [Footer]({%slug winforms/calendar/customizing-appearance/footer%})
* [Keyboard Navigation]({%slug winforms/calendar/customizing-behavior/keyboard-navigation%})
* [MultiView]({%slug winforms/calendar/customizing-behavior/multiview-mode%})
* [Navigation]({%slug winforms/calendar/customizing-behavior/customizing-navigation%})
* [Column and Row Headers]({%slug winforms/calendar/customizing-behavior/column-and-row-headers%})
* [Selecting Dates]({%slug winforms/calendar/customizing-behavior/selecting-dates%})
* [Zoom]({%slug winforms/calendar/customizing-appearance/zooming%})





---
title: Keyboard Navigation
page_title: Keyboard Navigation - WinForms Calendar Control
description: WinForms Calendar supports keyboard navigation.
slug: winforms/calendar/customizing-behavior/keyboard-navigation
tags: keyboard,navigation
published: True
position: 6
previous_url: calendar-customizing-behavior-keyboard-navigation, /calendar/customizing-behavior/keyboard-navigation
---

# Keyboard Navigation
 

|  |  __Key__  |  __Behavior__  |
| ------ | ------ | ------ |
|![WinForms RadCalendar PgUp](images/calendar-customizing-behavior-keyboard-navigation001.png)|PgUp key|Navigate to previous view|
|![WinForms RadCalendar PgDown](images/calendar-customizing-behavior-keyboard-navigation002.png)|PgDown key|Navigate to next view|
|![WinForms RadCalendar Up Arrow Key](images/calendar-customizing-behavior-keyboard-navigation003.png)|Up arrow key|Navigate to the previous week but preserving the day of the week. If the previous date is part of the previous month the calendar view changes to previous month.|
|![WinForms RadCalendar Down Arrow](images/calendar-customizing-behavior-keyboard-navigation004.png)|Down arrow key|Navigate to the next week but preserving the day of the week. If the next date is part of the next month the calendar view changes to next month.|
|![WinForms RadCalendar Left Arrow Key](images/calendar-customizing-behavior-keyboard-navigation005.png)|Left arrow key|Navigate to the previous day. If the previous day is part of the previous month the calendar view changes to previous month.|
|![WinForms RadCalendar Right Arrow Key](images/calendar-customizing-behavior-keyboard-navigation006.png)|Right arrow  key|Navigate to the next day. If the next day is part of the next month the calendar view changes to next month.|
|![WinForms RadCalendar Ctrl Arrow Key](images/calendar-customizing-behavior-keyboard-navigation007.png) + ![WinForms RadCalendar Left Arrow Key](images/calendar-customizing-behavior-keyboard-navigation005.png)|Ctrl + Left arrow key|Same as Page Down key|
|![WinForms RadCalendar Ctrl Arrow Key](images/calendar-customizing-behavior-keyboard-navigation007.png) + ![WinForms RadCalendar Right Arrow Key](images/calendar-customizing-behavior-keyboard-navigation006.png)|Ctrl + Right arrow key|Same as Page Up key|
|![WinForms RadCalendar Home Key](images/calendar-customizing-behavior-keyboard-navigation008.png)|Home key|Selects the first day of the current month. If __RangeMinDate__ is after the first day of the month, Home navigates to the __RangeMinDate__ value.|
|![WinForms RadCalendar End Key](images/calendar-customizing-behavior-keyboard-navigation009.png)|End key|Selects the last day of the current month. If __RangeMaxDate__ is before the end of the month, End navigates to the __RangeMaxDate__ value.|
||Space key|Selects focused date.|
|![WinForms RadCalendar Enter key](images/calendar-customizing-behavior-keyboard-navigation010.png)|Enter key|Selects focused date|

## See Also

* [Header]({%slug winforms/calendar/customizing-appearance/header%})
* [Footer]({%slug winforms/calendar/customizing-appearance/footer%})
* [Column and Row Headers]({%slug winforms/calendar/customizing-behavior/column-and-row-headers%})
* [MultiView]({%slug winforms/calendar/customizing-behavior/multiview-mode%})
* [Navigation]({%slug winforms/calendar/customizing-behavior/customizing-navigation%})
* [Repeating Events]({%slug winforms/calendar/customizing-behavior/repeating-events%})
* [Selecting Dates]({%slug winforms/calendar/customizing-behavior/selecting-dates%})
* [Zoom]({%slug winforms/calendar/customizing-appearance/zooming%})

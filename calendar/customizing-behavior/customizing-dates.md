---
title: Customizing Dates
page_title: Customizing Dates | UI for WinForms Documentation
description: Customizing Dates
slug: winforms/calendar/customizing-behavior/customizing-dates
tags: customizing,dates
published: True
position: 2
previous_url: calendar-customizing-behavior-customizing-dates
---

# Customizing Dates



## 

RadCalendar provides properties used to select special dates, display selected dates, set the first day of the week, etc. 

* 
The __FirstDayOfWeek__ property specifies the day to display as the first day of the week. This property can be left as "Default" or use the drop down in the Properties Window to select a new day name.


* 
The __SelectedDate__ property specifies the selected date with __AllowMultipleSelect__ set to False.  If __AllowMultipleSelect__ set to true, __SelectedDate__ shows only the last selected date. All selected dates are available through the __SelectedDates__ collection of RadCalendar. 


* 
The __FocusedDate__ property specifies the focused date to display (by default the focused date is the current/today date). 


* 
The  __CurrentDateColumn__ property specifies the column (in multiple view mode) where the single view containing the __FocusedDate__ will be positioned. 


* 
The __CurrentDateRow__ property specifies the row(in multiple view mode) where the single view containing the __FocusedDate__ will be positioned. 


* 
The __RangeMinDate__ property specifies the lowest bound of the valid dates range available for selection and navigation. 


* 
The __RangeMaxDate__ property specifies the the highest bound of the valid dates range available for selection and navigation. 



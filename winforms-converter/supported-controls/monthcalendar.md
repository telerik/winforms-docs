---
title: MonthCalendar
page_title: MonthCalendar | UI for Winforms Documentation
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/monthcalendar
tags: covert, winforms, numericupdown, spineditor
published: True
position: 1
---

# MonthCalendar

The MonthCalendar control in your application will be converted to [RadCalendar]({%slug winforms/calendar%}). The following tables describe which properties and methods are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|CalendarDimensions|Produces Error| |
|FirstDayOfWeek|Replaced|Telerik.WinControls.UI.FirstDayOfWeek|
|MaxSelectionCount |Removed||
|MinDate|Replaced|RangeMinDate|
|MaxDate|Replaced|RangeMaxDate|
|MonthlyBoldedDates|Produces Error||
|RightToLeftLayout|Removed||
|ScrollChange|Replaced|FastNavigationStep|
|SelectionRange|Produces Error||
|ShowToday |Replaced|ShowFooter|
|ShowTodayCircle|Removed||
|ShowWeekNumbers|Replaced|ShowRowHeaders|
|TitleBackColor |Removed||
|TitleForeColor |Removed||
|TodayDate |Removed||
|TrailingForeColor |Removed||

|Methods|Action|RadControls Equivalent|
|---|---|---|
|AddAnnuallyBoldedDate(System.DateTime date)|Produces Error||
|AddBoldedDate(System.DateTime date)|Produces Error||
|AddMonthlyBoldedDate(System.DateTime date)|Produces Error||
|HitTest(System.Drawing.Point point) |Produces Error||
|GetDisplayRange(true)|Produces Error||
|RemoveAllAnnuallyBoldedDates()|Produces Error||
|RemoveAllBoldedDates()|Produces Error||
|RemoveAllMonthlyBoldedDates()|Produces Error||
|RemoveAnnuallyBoldedDate(System.DateTime date)|Produces Error||
|RemoveBoldedDate(System.DateTime date)|Produces Error||
|RemoveMonthlyBoldedDate(System.DateTime date)|Produces Error||
|SetCalendarDimensions(int x, int y)|Produces Error|The following properties need to be set: __AllowMultipleView__, __MultiViewColumns__ and __MultiViewRows__|
|SetDate(System.DateTime date) |Produces Error|In order to set the date, you can set the __FocusedDate__ property|
|SetSelectionRange(System.DateTime date1, System.DateTime date2)|Produces Error||
|UpdateBoldedDates()|Produces Error||

|Events|Action|RadControls Equivalent|
|---|---|---|
|RightToLeftLayoutChanged|Produces Error||
|DateChanged|Produces Error||
|DateSelected|Produces Error||
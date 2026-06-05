---
title: Month View
page_title: Month View - WinForms Scheduler Control
description: The Month view in WinForms Scheduler shows one month at a time, or a preset number of weeks. To move to the next day or previous month, you can use the back and forward keyboard arrows, or the SchedulerNavigator.
slug: winforms/scheduler/views/month-view
tags: month,view
published: True
position: 8
previous_url: scheduler-views-month-view
---

# Month View

## Overview

The Month view shows one month at a time, or a preset number of weeks. To move to the next day or previous month, you can use the back and forward keyboard arrows, or the [SchedulerNavigator]({%slug winforms/scheduler/scheduler-navigator/overview%}) control.

## Structure of Month View

The [Month View]({%slug winforms/scheduler/views/month-view%}) of the scheduler simply has a __Header__, __Month Cells__ for every day in the month and zero or more __Appointment Cells__ in each month cell.

>caption Figure 1: Month View

![WinForms RadScheduler Month View](images/scheduler-views-month-view008.png)

## Set the Month View

The Week View can be set it to be the default view which the user sees:

#### ActiveViewType Property

<snippet id='scheduler-monthview-activeviewtype-cs' />
<snippet id='scheduler-monthview-activeviewtype-vb' />



## Get  Month View

To get the instance to the SchedulerMonthView from the RadScheduler object:

* use the __GetMonthView__ method:

#### GetMonthView Method

<snippet id='scheduler-monthview-getmonthview-cs' />
<snippet id='scheduler-monthview-getmonthview-vb' />



## Showing/Hiding The Weekend

By default the weekends are shown, but you can hide them by using the __ShowWeekend__ property:

#### Show Weekend

<snippet id='scheduler-monthview-showweekend-cs' />
<snippet id='scheduler-monthview-showweekend-vb' />



You can also specify which days to be considered weekends. The WorkWeekStart and WorkWeekEnd properties allow you to achieve this:

#### Set Work Week Start

<snippet id='scheduler-monthview-workweek-cs' />
<snippet id='scheduler-monthview-workweek-vb' />



## Change The Start/End Work Days 

The work days determine the start and end days for the work week. All days outside the work days range are part of the weekend.

#### Start/End Work Days

<snippet id='scheduler-monthview-workdays-cs' />
<snippet id='scheduler-monthview-workdays-vb' />



>caption Figure 2: Shown Weekends

![WinForms RadScheduler Shown Weekends False](images/scheduler-views-month-view001.png)
![WinForms RadScheduler Shown Weekends True](images/scheduler-views-month-view002.png)

## Setting The Number Of Weeks

By default the Month view shows 3 weeks at a time, but this can be changed by using the __WeekCount__ property (the minimum value is 1 week): 

#### Set Number of Weeks

<snippet id='scheduler-monthview-weekcount-cs' />
<snippet id='scheduler-monthview-weekcount-vb' />



## Getting The Week Days Displayed

#### Get Week Days

<snippet id='scheduler-monthview-weekdayscount-cs' />
<snippet id='scheduler-monthview-weekdayscount-vb' />



## Showing Full Month

It is possible to indicate whether the month view should always display exactly one month with the respective number of weeks.

#### Full Month

<snippet id='scheduler-monthview-showfullmonth-cs' />
<snippet id='scheduler-monthview-showfullmonth-vb' />



>caption Figure 3: Show Full Month
![WinForms RadScheduler Show Full Month](images/scheduler-views-month-view003.png)

## Showing/Hiding The Vertical Navigator

#### Hiding The Vertical Indicator

<snippet id='scheduler-monthview-showverticalnavigator-cs' />
<snippet id='scheduler-monthview-showverticalnavigator-vb' />



## Setting The Vertical Navigator Range

#### Navigator Range

<snippet id='scheduler-monthview-verticalnavigatorrange-cs' />
<snippet id='scheduler-monthview-verticalnavigatorrange-vb' />



>caption Figure 4: Navigator Range
![WinForms RadScheduler Navigator Range](images/scheduler-views-month-view004.gif)

## Showing And Hiding The Week (Row) Headers

The week (row) headers display the date range presented by the respective row. By clicking on them, the user can navigate to WeekView with the specified range. Showing/hiding the week (row) headers is done through the __ShowWeeksHeader__ property (the default setting is True). To allow or disallow navigating to __WeekView__ on click, you can set the __EnableWeeksHeader__ property (which also defaults to True)

#### Showing Weeks Headers

<snippet id='scheduler-monthview-showweeksheader-cs' />
<snippet id='scheduler-monthview-showweeksheader-vb' />



## Customizing The Week (Row) Header Format

RadScheduler uses the [.NET Standard DateTime Format Strings](http://msdn.microsoft.com/en-us/library/az4se3k1(VS.71).aspx), which can be set through the HeaderFormat property (either in design time or through code). The default value is "MMMM dd":

#### Setting A Header Format

<snippet id='scheduler-monthview-headerformat-cs' />
<snippet id='scheduler-monthview-headerformat-vb' />



## Showing An Exact Month

You can set the __ShowFullMonth__ property to force the __SchedulerMonthView__ to always display exactly one month no matter how many weeks it contains. When this property is enabled, the view will always navigate to the beginning of the previous/next month and the WeekCount will automatically be updated according to the number of weeks in the target month.

#### Full Month

<snippet id='scheduler-monthview-showfullmonth-cs' />
<snippet id='scheduler-monthview-showfullmonth-vb' />



## Vertical Scrolling

The vertical scrollbar in __MonthView__ allows for quick navigation in large date ranges.  To show or hide the vertical scrollbar you can use the __ShowVerticalNavigator__ property. When the vertical scrollbar is displayed it can navigate through the date range defined by the __RangeStartDate__ and __RangeEndDate__ properties. These properties do not limit keyboard navigation outside this range but only stand for specifying the range of the vertical scrollbar.

#### Verical Scrolling Range

<snippet id='scheduler-monthview-verticalscrolling-cs' />
<snippet id='scheduler-monthview-verticalscrolling-vb' />



## Handling Overflown Cells

RadScheduler handles the overflown cells in month view in two ways. The first one is by displaying a cell overflow button at the bottom of each cell that has more appointments than it can display. Clicking on this button opens a DayView set to the same date the cell represents. This way the user can scroll through and preview all appointments. The second way to handle overflown cells is by displaying a scrollbar at the end of each row if this row contains overflown cells. Using the scrollbar the end user can scroll directly through the appointments. Both of these features can be disabled or enabled using the following properties:

#### Appointments Scrolling

<snippet id='scheduler-monthview-overflow-cs' />
<snippet id='scheduler-monthview-overflow-vb' />



>caption Figure 5: Appointments Scrolling
![WinForms RadScheduler Appointments Scrolling](images/scheduler-views-month-view005.png)

## Modifying The Size Of Rows And Columns In MonthView

The __SchedulerMonthViewElement__ allows you to specify different size for the different columns. To manipulate the size of the columns, you can use the __SetColumnWidth__, __GetColumnWidth__, __SetRowHeight__, __GetRowHeight__ methods. The values passed to the SetColumnWidth and SetRowHeight methods are proportional and the actual width of the columns is calculated based on them. By default all columns have a value of 1 and therefore if you set a value of 2 to any column, it will stay twice as bigger compared to the others.

#### Setting Row Height

<snippet id='scheduler-monthview-columnrowresize-cs' />
<snippet id='scheduler-monthview-columnrowresize-vb' />



>caption Figure 6: Row Height
![WinForms RadScheduler Row Height](images/scheduler-views-month-view006.png)

## Modifying The Size Of The Headers In MonthView

The month view of RadScheduler contains two headers – the horizontal __MonthViewHeader__, which displays the weekdays on top of the columns, and the vertical __MonthViewVerticalHeader__, which displays the date ranges for each row. You can modify the size of these headers by accessing the respective element and its properties:

#### Headers Size

<snippet id='scheduler-monthview-headerresize-cs' />
<snippet id='scheduler-monthview-headerresize-vb' />



>caption Figure 7: Headers Size
![WinForms RadScheduler Headers Size](images/scheduler-views-month-view007.png)

# See Also

* [Common Visual Properties]({%slug winforms/scheduler/views/common-visual-properties%})
* [Working with Views]({%slug winforms/scheduler/views/working-with-views%})
* [Views Walkthrough]({%slug winforms/scheduler/views/views-walkthrough%})
* [Grouping by Resources]({%slug winforms/scheduler/views/grouping-by-resources%})
* [Exact Time Rendering]({%slug winforms/scheduler/views/exact-time-rendering%})

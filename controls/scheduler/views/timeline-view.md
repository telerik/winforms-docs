---
title: Timeline View
page_title: Timeline View - WinForms Scheduler Control
description: WinForms Scheduler's Timeline view allows you to display appointments in horizontally arranged time slots. 
slug: winforms/scheduler/views/timeline-view
tags: timeline,view
published: True
position: 9
previous_url: scheduler-views-timeline-view
---

# Timeline View

RadScheduler's __Timeline__ view allows you to display appointments in horizontally arranged time slots. Consequently, time slots can be configured by duration and the time scale can be set for minutes to years. User capabilities include creating, adding, and modifying appointments at run-time, appointment and cell selection, resizing, drag and drop, keyboard navigation, a customizable timeline context menu and resource grouping support. To move to the next day or previous month, you can use the back and forward keyboard arrows, or the [SchedulerNavigator]({%slug winforms/scheduler/scheduler-navigator/overview%}) control.        

## Structure of Timeline View

The [Timeline View]({%slug winforms/scheduler/views/timeline-view%}) of the scheduler simply has a __Header__, __Columns__ for every hour/day/week/month and zero or more __Appointment Cells__. 

>caption Figure 1: RadScheduler in Timeline View

![WinForms RadScheduler RadScheduler in Timeline View](images/scheduler-views-timeline-view001.gif)

## Set The Timeline View

The Timeline View can be set it to be the default view which the user sees:

#### ActiveViewType Timeline

<snippet id='scheduler-timelineview-activeviewtype1-cs' />
<snippet id='scheduler-timelineview-activeviewtype1-vb' />



## Get The Timeline View

To get the instance to the scheduler timeline view from the __RadScheduler__ object, either:

* the __GetTimelineView__ method:

#### GetTimelineView Method

<snippet id='scheduler-timelineview-timelineview-cs' />
<snippet id='scheduler-timelineview-timelineview-vb' />



>note This method returns null if the active view of the scheduler is not SchedulerTimelineView.
>

* use the the RadScheduler __ActiveView__ property:

#### ActiveView Property

<snippet id='scheduler-timelineview-activeview2-cs' />
<snippet id='scheduler-timelineview-activeview2-vb' />



## Setting The Time Range and First Date

The time range that the timeline shows can be set with the __RangeStartDate__ and __RangeEndDate__  properties, where __RangeEndDate__ must be bigger than __RangeStartDate__. The scheduler will not be able to navigate outside this range.

#### Timeline View Range

The __StartDate__ property sets the first date that is shown in the timeline  __RangeStartDate__ and __RangeEndDate__.

<snippet id='scheduler-timelineview-gettimelineview-cs' />
<snippet id='scheduler-timelineview-gettimelineview-vb' />



To get the duration between __RangeStartDate__ and __RangeEndDate__ you can use the duration __property__:

#### Timeline View Duration

<snippet id='scheduler-timelineview-duration-cs' />
<snippet id='scheduler-timelineview-duration-vb' />



## Setting The Default Time Scale

The default __time scale__ can be set to any of the predefined values, or the user can select a new scale by simply right-clicking in the time table and selecting the preferable setting from the context menu.
        
* __Year__
* __Month__
* __Week__
* __Day__: Тhis is the default value
* __Hour__
* __15 minutes__

To change the time scaling to *Hours*, for example, you need to use the __ShowTimescale__ method:

#### Set Time Scale

<snippet id='scheduler-timelineview-showtimescale-cs' />
<snippet id='scheduler-timelineview-showtimescale-vb' />



## Getting The Scale

To get the currently selected scale, use the __GetScaling__ method. After this you can modify properties of the current scale such as the Format property, which specifies the date-time format of the header cells, and the __DisplayedCellsCount__ property, which specifies the number of cells to be displayed in the view.

#### Current Scaling

<snippet id='scheduler-timelineview-gettimescale-cs' />
<snippet id='scheduler-timelineview-gettimescale-vb' />



## Navigation and Scrolling

In TimelineView there are two scrollbars which stand for navigation between dates and scrolling through appointments. The horizontal one allows you to scroll fast through the dates in the range specified by the RangeStartDate and RangeEndDate properties. The vertical one appears when there is a cell which contains more appointments than it can fit. This scrollbar allows you to scroll the presenter area so you can view the appointments. You can show or hide any of these scrollbars by using the following properties.

#### Navigation Element

<snippet id='scheduler-timelineview-navigationelements-cs' />
<snippet id='scheduler-timelineview-navigationelements-vb' />



## Modifying The Size of The Columns

The SchedulerTimelineViewElement allows you to specify different size for the different columns. To manipulate the size of the columns, you can use the  __SetColumnWidth__ and __GetColumnWidth__ methods. The values passed to the __SetColumnWidth__  method are proportional and the actual width of the columns is calculated based on them. By default all columns have a value of 1 and therefore if you set a value of 2 to any column, it will stay twice as bigger compared to the others.

#### Resizing Columns

<snippet id='scheduler-timelineview-resizecolumns-cs' />
<snippet id='scheduler-timelineview-resizecolumns-vb' />



## Modifying The Size of The Headers

TimelineView contains two header rows. The first one displays the date range of the view that is currently displayed. The second one holds the header cells  for each column and each of them displays the date that corresponds to this column. You can modify the height of both of these headers by using the  following properties of the __SchedulerTimelineViewElement__.

#### Headers Size

<snippet id='scheduler-timelineview-headersizing-cs' />
<snippet id='scheduler-timelineview-headersizing-vb' />



The following picture demonstrates the result of setting the header sizes and resizing the column with index 1.

>caption Figure 2: Headers Size
![WinForms RadScheduler Headers Size](images/scheduler-views-timeline-view002.png)

# See Also

* [Common Visual Properties]({%slug winforms/scheduler/views/common-visual-properties%})
* [Working with Views]({%slug winforms/scheduler/views/working-with-views%})
* [Views Walkthrough]({%slug winforms/scheduler/views/views-walkthrough%})
* [Grouping by Resources]({%slug winforms/scheduler/views/grouping-by-resources%})
* [Exact Time Rendering]({%slug winforms/scheduler/views/exact-time-rendering%})
* [Custom Time Scale]({%slug scheduler-custom-time-scale%})


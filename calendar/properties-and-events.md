---
title: Properties and Events
page_title: Properties and Events | UI for WinForms Documentation
description: This article list the most important properties and events of RadCalendar.
slug: winforms/calendar/important-events
tags: important,events
published: True
position: 3
previous_url: calendar-overview-important-events, calendar-overview-important-properties, /calendar/customizing-behavior/customizing-dates
---

# Properties 

| Property | Description |
| ------ | ------ |
| __AllowMultipleSelect__ |Enables multiple selection of items.|
| __ShowNavigation__ |Gets or sets whether the navigation controls in the title section will be displayed.|
| __FocusedDate__ |Gets or sets the value that is used by RadCalendar to determine the viewable area displayed.|
| __HeaderNavigationMode__ |Gets or sets the navigation mode that will be used when the user clicks on header element. By default its value is HeaderNavigationMode. *Popup* |
| __MonthLayout__ |Specifies the number or rows and columns for the layout.|
| __MonthStep__ |Gets or sets a value determining how many months will be in the popup of the calendar. Setting it to 12/24/36/etc will allow you to show years instead of months.|
| __MultiViewColumns__ |Gets or sets the the count of columns to be displayed by a multi-month __CalendarView__ .|
| __MultiViewRows__ |Gets or sets the the count of rows to be displayed by a multi-month __CalendarView__ .|
| __Orientation__ |Specifies the orientation of the view, whether (days, or weeks) are displayed in rows or columns.|
| __RangeMaxDate__ |Gets or sets the maximum date valid for selection by Telerik RadCalendar.|
| __RangeMinDate__ |Gets or sets the minimal date valid for selection by Telerik RadCalendar.|
| __SelectedDate__ |Sets or returns the currently selected date.|
| __SelectedDates__ |Gets a collection of DateTime objects that represent the selected dates on the __RadCalendar__ control.`|
| __ShowColumnHeaders__ |Show the column headers.|
| __ShowRowHeaders__ |Show the row headers.|
| __ShowOtherMonthsDays__ |Gets or sets whether the month matrix, when rendered will show days from other (previous or next) months or will render only blank cells.|
| __ZoomLevel__ |Gets or sets the level used for the zoom navigation mode. By default its value is ZoomLevel. *Days* .|
|__FirstDayOfWeek__ | Specifies the day to display as the first day of the week. This property can be left as "Default" or use the drop down in the `Properties` window to select a new day name.|
|__CurrentDateColumn__ |  specifies the column (in multiple view mode) where the single view containing the FocusedDate will be positioned.
|__CurrentDateRow__ |   specifies the row(in multiple view mode) where the single view containing the __FocusedDate__ will be positioned.|
|__RowHeaderText__ | Provides custom text for all row header elements.|
|__RowHeaderImage__ | The image displayed for all row header elements.|
|__ColumnHeaderText__ | Provides custom text for all column header elements.|
|__ColumnHeaderImage__ | The image displayed for all column header elements.|
|__ViewSelectorText__ | The text displayed in the view selector element.|
|__ViewSelectorImage__ | The image displayed in the view selector element.|
|__CellVerticalSpacing__| Gets or sets the vertical spacing between the calendar cells.|
|__CellHorizontalSpacing__ | Gets or sets the horizontal spacing between the calendar cells.|

# Events

|Event|Description|
|---|---|
|__ElementRender__| More information is available in the following article [Element Render]({%slug winforms/calendar/customizing-appearance/formatting-items%}).|
|__SelectionChanging__|This event is fired just prior to a selection change and allows you to programmatically cancel the change. The SelectionEventArgs passed to this event include __Date,__ a __DateTimeCollection__ of selected dates and __Cancel__ that can be set to true to disallow the selection from being changed.|
|__SelectionChanged__|This event is fired when a day, week, month or year is changed.|
|__ViewChanging__|This event fires just prior to __ViewChanged__ and allows you to cancel.  The __ViewChangingEventArgs__ passed to this event include the __View__ and a boolean __Cancel__ property.|
|__ViewChanged__|This event is fired when the currently visible view (for example a YearView Or MonthsView) is changed.|
|__ZoomChanging__|This event is fired when the __ZoomLevel__ is changing in HeaderNavigationMode. *Zoom* .|
|__ZoomChanged__|This event is fired when the __ZoomLevel__ is changed in HeaderNavigationMode. *Zoom* .|


## See Also

* [Header]({%slug winforms/calendar/customizing-appearance/header%})

* [Footer]({%slug  winforms/calendar/customizing-appearance/footer%})

* [Zoom]({%slug winforms/calendar/customizing-appearance/zooming%})

* [MultiView]({%slug winforms/calendar/customizing-behavior/multiview-mode%})
* [Navigation]({%slug winforms/calendar/customizing-behavior/customizing-navigation%})



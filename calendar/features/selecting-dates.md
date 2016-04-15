---
title: Selecting Dates
page_title: Selecting Dates | UI for WinForms Documentation
description: Selecting Dates
slug: winforms/calendar/customizing-behavior/selecting-dates
tags: selecting,dates
published: True
position: 4
previous_url: calendar-customizing-behavior-selecting-dates, /calendar/customizing-behavior/selecting-dates
---

# Selecting Dates

To enable selection of dates set the __AllowSelect__ property to *true*. Set __AllowMultipleSelect__ to *true* to enable more than one date at a time.

## Selecting with the keyboard

See [Keyboard Navigation]({%slug winforms/calendar/customizing-behavior/keyboard-navigation%}) for a complete list of keys used to navigate __RadCalendar__.

## Selecting with the mouse

Select a single date by clicking on it. If __AllowMultipleSelect__ is true, you can select multiple dates by holding the `Ctrl` key and clicking each date.

See the [Column and Row Headers]({%slug winforms/calendar/customizing-behavior/column-and-row-headers%}) topic for how to select entire columns and rows at once.

## Selecting using the API

To select a single day assign a __DateTime__ value to the __SelectedDate__ property. To select multiple dates use the __SelectedDates.Add()__ method to add __DateTime__ values to the collection. To have more than one date in the __SelectedDates__ collection you should set the __AllowMultipleSelect__ property to *true*. The code snippet below shows how to select multiple dates through the API. 

#### Selecting dates

{{source=..\SamplesCS\Calendar\Calendar1.cs region=selectingDates}} 
{{source=..\SamplesVB\Calendar\Calendar1.vb region=selectingDates}} 

````C#
radCalendar1.AllowMultipleSelect = true;
radCalendar1.SelectedDates.Add(new DateTime(2006, 10, 20, 0, 0, 0, 0));
radCalendar1.SelectedDates.Add(new DateTime(2006, 10, 19, 0, 0, 0, 0));
radCalendar1.SelectedDates.Add(new DateTime(2006, 10, 18, 0, 0, 0, 0));

````
````VB.NET
RadCalendar1.AllowMultipleSelect = True
RadCalendar1.SelectedDates.Add(New DateTime(2006, 10, 20, 0, 0, 0, 0))
RadCalendar1.SelectedDates.Add(New DateTime(2006, 10, 19, 0, 0, 0, 0))
RadCalendar1.SelectedDates.Add(New DateTime(2006, 10, 18, 0, 0, 0, 0))

````

{{endregion}} 
 
You may also use the SelectedDates.AddRange() method to add an array of DateTime values: 

#### Using the AddRange method


{{source=..\SamplesCS\Calendar\Calendar1.cs region=usingAddRange}} 
{{source=..\SamplesVB\Calendar\Calendar1.vb region=usingAddRange}} 

````C#
radCalendar1.SelectedDate = new System.DateTime(2007, 9, 17, 0, 0, 0, 0);
radCalendar1.SelectedDates.AddRange(new DateTime[] { new DateTime(2007, 9, 17, 0, 0, 0, 0) });

````
````VB.NET
RadCalendar1.SelectedDate = New Date(2007, 9, 17, 0, 0, 0, 0)
RadCalendar1.SelectedDates.AddRange(New Date() {New Date(2007, 9, 17, 0, 0, 0, 0)})

````

{{endregion}} 

## See Also

* [Header]({%slug winforms/calendar/customizing-appearance/header%})
* [Footer]({%slug winforms/calendar/customizing-appearance/footer%})
* [Keyboard Navigation]({%slug  winforms/calendar/customizing-behavior/keyboard-navigation%})
* [MultiView]({%slug winforms/calendar/customizing-behavior/multiview-mode%})
* [Navigation]({%slug winforms/calendar/customizing-behavior/customizing-navigation%})
* [Repeating Events]({%slug winforms/calendar/customizing-behavior/repeating-events%})
* [Column and Row Headers]({%slug winforms/calendar/customizing-behavior/column-and-row-headers%})
* [Zoom]({%slug winforms/calendar/customizing-appearance/zooming%})





---
title: Structure, Properties and Events
page_title: Structure, Properties and Events | UI for WinForms Documentation
description: Structure, Properties and Events
slug: winforms/editors/timepicker/structure,-properties-and-events
tags: structure,,properties,and,events
published: True
position: 2
previous_url: editors-timepicker-structure-properties-and-events
---

# Structure, Properties and Events



## Structure

The following image demonstrates the structure of RadTimePicker control, which might come in handy when you need to access different control elements:
        

![editors-timepicker-structure-properties-and-events 001](images/editors-timepicker-structure-properties-and-events001.png)

## Properties

* __Value__ – used to get or set the control value. It accepts an object of type DateTime, where only the time part is taken under consideration.

* __Culture__ – determines the language of the drop down and the editable area. From here you can control if the format is 12 (“en-US”) or 24 hours (“en-UK”)

* __ThemeName__ – gets or set the name of the theme used for the control

* __CloseButtonText__ – gets or sets the text of the button in the dropdown

* __RowHeight__ – gets or sets the height of the rows in the hour/minutes tables in the drop down

* __ColumnsCount__ – gets or sets the number of the columns in the hour/minutes tables in the drop down

* __HeadersHeight__ – gets or sets the size of the headers (clock, hours and minutes headers) in the drop down

* __ButtonPanelHeight__ – sets or sets the height of the buttons panel at the bottom of the drop down

* __TableWidth__ – gets or sets the width of the hours and minutes tables in the drop down

* __ClockPosition__ gets or sets the position of the clock according to the tables. Currently possible options – ClockBeforeTables, ClockAboveTables and HideClock

* __TimeTables__ – allows you to choose between one table or two tables to display both hours and minutes 

* __Step__ – gets or sets the minutes step

* __ReadOnly__ – makes the control read only – can’t type in it, or change its value from the UI. Also the drop down cannot be opened

* __NullText__ – This property determines the text displayed in RadTimePickerElement when the Value is null

* __TimePickerElement__ – access the RadTimePickerElement

* __MaxValue__ – get or set the maximal time value assigned to the control
        

* __MinValue__ – get or set the minimal time value assigned to the control
        

## Events

* __ValueChanging__ – cancelable event, occurs when the value is changing. 

* __ValueChanged__ – occurs when the value is changed

* __TimeCellFormatting__ – occurs when a cell is being created/shown. Used for formatting the cell’s appearance.

---
title: Properties and Events
page_title: Properties and Events - WinForms TimePicker Control
description: Get familiar with the the most commonly used properties and events of WinForms RadTimePicker.
slug: winforms/editors/timepicker/properties-and-events
tags: properties,and,events
published: True
position: 4
previous_url: editors-timepicker-structure-properties-and-events
---

# Properties

|Property|Description|
|---|---|
|__Value__|Used to get or set the control value. It accepts an object of type DateTime, where only the time part is taken under consideration.|
|__Culture__|Determines the language of the drop down and the editable area. From here you can control if the format is 12 ("en-US") or 24 hours ("en-UK").|
|__CloseButtonText__|Gets or sets the text of the button in the drop down|
|__RowHeight__|Gets or sets the height of the rows in the hour/minutes tables in the drop down.|
|__ColumnsCount__|Gets or sets the number of the columns in the hour/minutes tables in the drop down.|
|__HeadersHeight__|Gets or sets the size of the headers (clock, hours and minutes headers) in the drop down.|
|__ButtonPanelHeight__|Sets or gets the height of the buttons panel at the bottom of the drop down.|
|__TableWidth__|Gets or sets the width of the hours and minutes tables in the drop down.|
|__ClockPosition__|Gets or sets the position of the clock according to the tables. Currently possible options – *ClockBeforeTables*, *ClockAboveTables* and *HideClock*.|
|__TimeTables__|Allows you to choose between one table or two tables to display both hours and minutes.|
|__Step__|Gets or sets the minutes step.|
|__ReadOnly__|Makes the control read only – can’t type in it, or change its value from the UI. Also the drop down cannot be opened.|
|__NullText__|This property determines the text displayed in RadTimePicker when the __Value__ is *null*.|
|__MaxValue__|Get or set the maximal time value assigned to the control.|
|__MinValue__|Get or set the minimal time value assigned to the control.|
|__TimePickerElement__|Gives access the RadTimePickerElement.|
 
 

## Events

|Events|Description|
|---|---|
|__ValueChanging__|Cancelable event, occurs when the value is changing.|
|__ValueChanged__|occurs when the value is changed.|
| __TimeCellFormatting__|occurs when a cell is being created/shown. Used for formatting the cell’s appearance.|
 
# See Also

* [Structure]({%slug winforms/editors/timepicker/structure%})
* [Localization]({%slug winforms/editors/timepicker/localization%})
* [Free Form Date Time Parsing]({%slug winforms/editors/timepicker/free-form-date-time-parsing%}) 
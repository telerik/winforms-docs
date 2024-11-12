---
title: Properties and Events
page_title: Properties and Events - WinForms TimeOnlyPicker Control
description: Get familiar with the the most commonly used properties and events of WinForms RadTimeOnlyPicker.
slug: editors-timeonlypicker-properties-and-events
tags: properties,and,events
published: True
position: 4
---

# Properties

|Property|Description|
|---|---|
|__MaskedEditBox__|Gets the masked edit box.|
|__DropDownButton__|Gets the drop-down button.|
|__UpButton__|Gets the up arrow button.|
|__DownButton__|Gets the down arrow button.|
|__PopupForm__|Gets the pop-up form.|
|__SpinButtonsStackLayout__|Gets the Telerik.WinControls.UI.StackLayoutElement that contains the spin buttons.|
|__PopupMinSize__|Determines the minimum size of the pop-up.|
|__Format__|Gets or sets the format string.|
|__ColumnsCount__|Gets or sets the number of the columns in the hour/minutes tables in the drop down.|
|__HeadersHeight__|Gets or sets the size of the headers (clock, hours and minutes headers) in the drop down.|
|__ButtonPanelHeight__|Sets or gets the height of the buttons panel at the bottom of the drop down.|
|__TableWidth__|Gets or sets the width of the hours and minutes tables in the drop down.|
|__TimeTables__|Allows you to choose between one table or two tables to display both hours and minutes.|
|__ShowSpinButtons__|Indicates whether to show the spin buttons.|
|__ClockPosition__|Gets or sets the position of the clock according to the tables. Currently possible options – *ClockBeforeTables*, *ClockAboveTables* and *HideClock*.|
|__Step__|Gets or sets the minutes step.|
|__ReadOnly__|Makes the control read only – can’t type in it, or change its value from the UI. Also the drop down cannot be opened.|
|__NullText__|This property determines the text displayed in RadTimeOnlyPicker when the __Value__ is *null*.|
|__Value__|Used to get or set the control value. It accepts an object of type __TimeOnly__.|
|__MaxValue__|Get or set the maximal time value assigned to the control.|
|__MinValue__|Get or set the minimal time value assigned to the control.|
|__RowHeight__|Gets or sets the height of the rows in the hour/minutes tables in the drop down.|
|__Culture__|Determines the language of the drop down and the editable area. From here you can control if the format is 12 ("en-US") or 24 hours ("en-UK").|
|__CloseButtonText__|Gets or sets the text of the button in the drop down|
|__TimeOnlyPickerElement__|Gives access the RadTimeOnlyPickerElement.|
 
## Events

|Events|Description|
|---|---|
|__ValueChanging__|Cancelable event, occurs when the value is changing.|
|__ValueChanged__|occurs when the value is changed.|
|__TimeCellFormatting__|occurs when a cell is being created/shown. Used for formatting the cell’s appearance.|
 
## See Also

* [Structure]({%slug editors-timeonlypicker-structure%})
* [Localization]({%slug editors-timeonlypicker-localization%})
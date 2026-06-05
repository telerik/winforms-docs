---
title: GridViewDateTimeColumn
page_title: GridViewDateTimeColumn - WinForms GridView Control
description: WinForms GridViewDateTimeColumn provides date entry and formatting for DateTime data types.
slug: winforms/gridview/columns/column-types/gridviewdatetimecolumn
tags: gridviewdatetimecolumn
published: True
position: 8
previous_url: gridview-columns-gridviewdatetimecolumn
---

# GridViewDateTimeColumn

__GridViewDateTimeColumn__ provides date entry and formatting for DateTime data types. You may enter the date and time directly into the editor or drop down the calendar to choose a date. The __FormatString__ property sets the format of the date when the date is not currently being edited. The __CustomFormat__ property is used to format the date once the user clicks on the cell to invoke the editor.

>caption Figure 1: GridViewDateTimeColumn in Edit Mode

![WinForms RadGridView GridViewDateTimeColumn in Edit Mode](images/gridview-columns-gridviewdatetimecolumn001.png)

#### Formatting the date.

<snippet id='gridview-gridviewdatetimecolumn1-adddatetimecolumn-cs' />
<snippet id='gridview-gridviewdatetimecolumn1-adddatetimecolumn-vb' />

>note The formatting for date and time values also responds to globalization settings.

<snippet id='gridview-gridviewdatetimecolumn2-settingcurrentculture-cs' />
<snippet id='gridview-gridviewdatetimecolumn2-settingcurrentculture-vb' />

The code below demonstrates how to change date formatting in edit mode (while the cell is being edited). There are two ways to achieve that - by setting the __Format__ property of the column to *Custom* and the __CustomFormat__ property of the column to a desired format, or by setting the same properties of the editor itself. Please note that we are using the __CellEditorInitialized__ event which is fired when the initialization of an editor is done in order to access the editor:

<snippet id='gridview-gridviewdatetimecolumn1-changeeditordateformat-cs' />
<snippet id='gridview-gridviewdatetimecolumn1-changeeditordateformat-vb' />
<snippet id='gridview-gridviewdatetimecolumn1-changeeditordateformat1-cs' />
<snippet id='gridview-gridviewdatetimecolumn1-changeeditordateformat1-vb' />

If we do not use the `CellEditorInitialized`, but `CellBeginEdit` (it is fired before `CellEditorInitialized`), our __Format__ setting will be overridden by the initialization of the editor. 

You can also change the way the dates in the column are filtered. This is how the column can be adjusted to filter only by __Dates__.

<snippet id='gridview-gridviewdatetimecolumn1-changefilteringmode-cs' />
<snippet id='gridview-gridviewdatetimecolumn1-changefilteringmode-vb' />

## DateTimeKind property

This property allows you to transform the date/time values from database to the local time. By default __RadGridView__ supposes that the date/time values are stored in UTC in the database.

| Member Name | Description |
| ------ | ------ |
|Local|If Local is assigned to a column, in this mode, its values will first converted into Local time.|
|Unspecified|Value will not converted.|
|Utc|Value will not converted.|

## EditorType

The __EditorType__ allows you to easily change the editor type. It could be set to three values:       

* __DateTimePicker:__ this is the default value and the editor will be a standard RadDateTimePicker.

* __TimePicker:__ the editor will be a __RadTimePicker__.

* __DateTimePickerSpinMode:__ this type of editor shows up/down buttons instead of a drop down with a calendar.
            
# See Also
* [GridViewBrowseColumn]({%slug winforms/gridview/columns/column-types/gridviewbrowsecolumn%})

* [GridViewCalculatorColumn]({%slug winforms/gridview/columns/column-types/gridviewcalculatorcolumn%})

* [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%})

* [GridViewColorColumn]({%slug winforms/gridview/columns/column-types/gridviewcolorcolumn%})

* [GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%})

* [GridViewCommandColumn]({%slug winforms/gridview/columns/column-types/gridviewcommandcolumn%})

* [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%})

* [GridViewHyperlinkColumn]({%slug winforms/gridview/columns/column-types/gridviewhyperlinkcolumn%})

* [GridViewSparklineColumn]({%slug gridview-columntypes-sparklinecolumn%})

* [How to Show DateTime Values Stored in a UNIX Format with Filtering Still Working in RadGridView]({%slug gridview-datetimecolumn-unix-format%})


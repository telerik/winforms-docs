---
title: Date Formats
page_title: Date Formats - WinForms DateTimePicker Control
description: Get familiar with the standard format characters supported by RadDateTimePicker.
slug: winforms/editors/datetimepicker/internationalization/date-formats
tags: date,formats
published: True
position: 2
previous_url: editors-datetimepicker-internationalization-date-formats
---

# Date Formats

>A details explanation about the default date format strings can be found in this [MSDN article](https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-date-and-time-format-strings).

The table below displays a list of the standard format characters supported by __RadDateTimePicker__. The format characters are case-sensitive; for example, 'f' and 'F' represent different patterns.
 
| __Format Character__ | __Associated Property/ Description__ |
|----|----|
|d|ShortDatePattern|
|D|LongDatePattern|
|f|Full date and time (long date and short time)|
|F|FullDateTimePattern (long date and long time)|
|g|General (short date and short time)|
|G|General (short date and long time)|
|m, M|MonthDayPattern|
|r, R|RFC1123Pattern|
|s|SortableDateTimePattern (based on ISO 8601) using local time|
|t|ShortTimePattern|
|T|LongTimePattern|
|u|UniversalSortableDateTimePattern using the format for universal time display|
|U|Full date and time (long date and long time) using universal time|

The table below shows a list of patterns that can be combined to create custom patterns. The patterns are case-sensitive; for example, "MM" is recognized, but "mm" is not. If the custom pattern contains white-space characters or characters enclosed in single quotation marks, the output string will also contain those characters. Characters not defined as part of a format pattern or as format characters are reproduced literally.
 

| __Format Pattern__ | __Description__ |
|----|----|
|dd|The day of the month. Single-digit days will have a leading zero.|
|ddd|The abbreviated name of the day of the week, as defined in AbbreviatedDayNames.|
|M|The month, from 1 through 12.|
|MM|The numeric month. Single-digit months will have a leading zero.|
|MMM|The abbreviated name of the month, as defined in AbbreviatedMonthNames.|
|MMMM|The full name of the month, as defined in MonthNames.|
|y|The year without the century. If the year without the century is less than 10, the year is displayed with no leading zero.|
|yy|The year without the century. If the year without the century is less than 10, the year is displayed with a leading zero.|
|yyyy|The year in four digits, including the century.|
|gg|The period or era. This pattern is ignored if the date to be formatted does not have an associated period or era string.|
|h|The hour in a 12-hour clock. Single-digit hours will not have a leading zero.|
|hh|The hour in a 12-hour clock. Single-digit hours will have a leading zero.|
|H|The hour in a 24-hour clock. Single-digit hours will not have a leading zero.|
|HH|The hour in a 24-hour clock. Single-digit hours will have a leading zero.|
|m|The minute. Single-digit minutes will not have a leading zero.|
|mm|The minute. Single-digit minutes will have a leading zero.|
|s|The second. Single-digit seconds will not have a leading zero.|
|ss|The second. Single-digit seconds will have a leading zero.|
|t|The first character in the AM/PM designator defined in AMDesignator or PMDesignator, if any.|
|tt|The AM/PM designator defined in AMDesignator or PMDesignator, if any.|

>note It is possible to define your own format and set the RadDateTimePicker.**Format** property to **Custom** . Then, specify the desired **CustomFormat**, e.g. "**dd/MM/yyyy**".

{{source=..\SamplesCS\Editors\DateTimePicker2.cs region=customFormat}} 
{{source=..\SamplesVB\Editors\DateTimePicker2.vb region=customFormat}} 

````C#
this.radDateTimePicker1.Format = DateTimePickerFormat.Custom;
this.radDateTimePicker1.CustomFormat = "yyyy/MM/dd";

````
````VB.NET
Me.radDateTimePicker1.Format = DateTimePickerFormat.Custom
Me.radDateTimePicker1.CustomFormat = "yyyy/MM/dd"

````

{{endregion}}

# See Also

* [CultureInfo and RegionInfo Basics]({%slug winforms/editors/datetimepicker/internationalization/cultureinfo-and-regioninfo-basics%})
* [Internationalization]({%slug winforms/editors/datetimepicker/internationalization/internationalization%})

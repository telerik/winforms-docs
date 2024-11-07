---
title: Date Formats
page_title: Date Formats - WinForms DateOnlyPicker Control
description: Get familiar with the standard format characters supported by RadDateOnlyPicker.
slug: editors-dateonlypicker-features-date-formats
tags: date,formats, netcore
published: True
position: 4
---

# Date Formats

>A details explanation about the default date format strings can be found in this [MSDN article](https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-date-and-time-format-strings).

The table below displays a list of the standard format characters supported by __RadDateOnlyPicker__.
 
| __Format Character__ | __Associated Property/ Description__ |
|----|----|
|d|ShortDatePattern|
|D|LongDatePattern|
|m, M|MonthDayPattern|
|r, R|RFC1123Pattern|
|y, Y|YearMonthPattern|

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

>note It is possible to define your own format and set the RadDateOnlyPicker.**Format** property to **Custom** . Then, specify the desired **CustomFormat**, e.g. "**dd/MM/yyyy**".

````C#
this.radDateOnlyPicker1.Format = DateTimePickerFormat.Custom;
this.radDateOnlyPicker1.CustomFormat = "yyyy/MM/dd";

````
````VB.NET
Me.RadDateOnlyPicker1.Format = DateTimePickerFormat.Custom
Me.RadDateOnlyPicker1.CustomFormat = "yyyy/MM/dd"

````


## See Also

* [CultureInfo and RegionInfo Basics]({%slug editors-dateonlypicker-features-cultureinfo-and-regioninfo-basics%})
* [Internationalization]({%slug editors-dateonlypicker-internationalization%})

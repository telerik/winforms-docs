---
title: Format String
page_title: Format String - RadTimeSpanPicker
description: RadTimeSpanPicker is a UI component that provides a full control over picking a specific time span and duration.
slug: radtimespanpicker-format-string
tags: radtimespanpicker
published: True
position: 6
---

# Format String

To build a custom format string you can use the format specifiers provided by Microsoft. The format specifiers are listed here: [Format Specifiers](https://docs.microsoft.com/en-us/dotnet/standard/base-types/custom-timespan-format-strings).

If you want to add a specific content to the string you will need to enclose in with single quotes. Here is an example that shows this.

#### Using a custom format string

{{source=..\SamplesCS\Editors\TimeSpanCode.cs region=FormatString}} 
{{source=..\SamplesVB\Editors\TimeSpanCode.vb region=FormatString}}
````C#
radTimeSpanPicker1.Format = "dd\'days \'hh\'hours \'mm\'minutes \'ss\'seconds \'fff\'milliseconds\'";

````
````VB.NET
radTimeSpanPicker1.Format = "dd'days 'hh'hours 'mm'minutes 'ss'seconds 'fff'milliseconds'"

```` 

{{endregion}} 

You can find in the screenshot below the obtained result.

![radtimespanpicker-format-string001](images/radtimespanpicker-format-string001.png)

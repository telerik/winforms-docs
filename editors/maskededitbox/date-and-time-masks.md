---
title: Date and Time Masks
page_title: Date and Time Masks | UI for WinForms Documentation
description: Date and Time Masks
slug: winforms/editors/maskededitbox/date-and-time-masks
tags: date,and,time,masks
published: True
position: 3
---

# Date and Time Masks
 
The tables below describe the mask characters that can be used when the __MaskType__ is __DateTime__. Note that the format characters are case sensitive.
      

## Standard Date Format codes

Full list of the supported masks can be found in the following MSDN article: [Standard DateTime masks](http://msdn.microsoft.com/en-us/library/az4se3k1(v=VS.71).aspx)

 
| __Format Character__ | __Description__ |
|----|----|
|d|Short date pattern|
|D|Long date pattern|
|f|Full date and time (long date and short time)|
|F|Full date time pattern (long date and long time)|
|g|General (short date and short time)|
|G|General (short date and long time)|
|m, M|Month day pattern|
|r, R|RFC1123 pattern|
|s|Sortable date time pattern (based on ISO 8601) using local time|
|t|Short time pattern|
|T|Long time pattern|

##  Custom Date Format codes

Where standard date codes are too restrictive, create your own custom formats using the format patterns listed below.
        

Full list of the supported masks can be found in the following MSDN article: [Custom DateTime masks](http://msdn.microsoft.com/en-us/library/8kb3ddd4(v=vs.71).aspx)

For example, a DateFormat of "ddd, MMMM yyyy - dd" might display:![editors-maskededitbox-date-and-time-masks 001](images/editors-maskededitbox-date-and-time-masks001.png)
 

| __Format Pattern__ | __Description__ |
|----|----|
|dd|The numeric day of the month.|
|ddd|The abbreviated name of the day of the week.|
|M|The month name followed by the numeric day.|
|MM|The numeric month.|
|MMM|The abbreviated name of the month.|
|MMMM|The full name of the month.|
|y|The full month name and year numeric.|
|yy|The year without the century.|
|yyy|The year in four digits, including the century.|
|h|The hour in a 12-hour clock.|
|hh|The hour in a 12-hour clock.|
|H|The hour in a 24-hour clock.|
|HH|The hour in a 24-hour clock.|
|m|The minute.|
|mm|The minute.|
|s|The second.|
|ss|The second.|
|t|The first character in the AM/PM designator.|
|tt|The AM/PM designator.|

## Accessing the MaskDateTimeProvider

When the mask type is set to *DateTime* you can access the MaskDateTimeProvider by casting to that appropriate type. 

{{source=..\SamplesCS\Editors\MaskEditBox1.cs region=provider}} 
{{source=..\SamplesVB\Editors\MaskEditBox1.vb region=provider}} 

````C#

            radMaskedEditBox1.MaskType = MaskType.DateTime;
            MaskDateTimeProvider provider = this.radMaskedEditBox1.MaskedEditBoxElement.Provider as MaskDateTimeProvider;
            provider.AutoSelectNextPart = true;
````
````VB.NET

        RadMaskedEditBox1.MaskType = MaskType.DateTime
        Dim provider As MaskDateTimeProvider = TryCast(Me.RadMaskedEditBox1.MaskedEditBoxElement.Provider, MaskDateTimeProvider)
        provider.AutoSelectNextPart = True

        '
````

{{endregion}} 
 
More information about this provider can be found in the last section of the following article: [RadDateTimePicker Properties]({%slug winforms/editors/datetimepicker/raddatetimepicker-properties%})

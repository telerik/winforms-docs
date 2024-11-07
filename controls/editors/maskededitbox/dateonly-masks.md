---
title: DateOnly(.Net Only) Masks
page_title: DateOnly Masks - RadMaskedEditBox
description: The following tables  describe the mask characters that can be used when the MaskType is DateOnly. Note that the format characters are case sensitive.
slug: editors-maskededitbox-dateonly-masks
tags: dateonly, masks,.net
published: True
position: 7
---

# DateOnly Masks
 
The tables below describe the mask characters that can be used when the **MaskType** is *DateOnly*. Note that the format characters are case sensitive.

## Standard DateOnly Format codes

| __Format Character__ | __Associated Property/ Description__ |
|----|----|
|d|ShortDatePattern|
|D|LongDatePattern|
|m, M|MonthDayPattern|
|r, R|RFC1123Pattern|
|y, Y|YearMonthPattern|

##  Custom DateOnly Format codes

Where standard DateOnly codes are too restrictive, create your own custom formats using the format patterns listed below.

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

## Accessing the MaskDateOnlyProvider

When the mask type is set to *DateOnly* you can access the **MaskDateOnlyProvider** by casting to that appropriate type.

````C#

this.radMaskedEditBox1.MaskType = MaskType.DateOnly;
MaskDateOnlyProvider provider = this.radMaskedEditBox1.MaskedEditBoxElement.Provider as MaskDateOnlyProvider;

````
````VB.NET

Me.radMaskedEditBox1.MaskType = MaskType.DateOnly
Dim provider As MaskDateOnlyProvider = TryCast(Me.radMaskedEditBox1.MaskedEditBoxElement.Provider, MaskDateOnlyProvider)

````

## See Also

* [Standard]({%slug winforms/editors/maskededitbox/standard-masks%})
* [Numeric Masks]({%slug winforms/editors/maskededitbox/numeric-masks%})
* [Working with RadMaskedEditBox]({%slug winforms/editors/maskededitbox/working-with-radmaskededitbox%})

---
title: TimeOnly(.Net Only) Masks
page_title: TimeSpan Masks - RadMaskedEditBox
description: The following tables  describe the mask characters that can be used when the MaskType is TimeOnly. Note that the format characters are case sensitive.
slug: editors-maskededitbox-timeonly-masks
tags: timeonly, masks,.net
published: True
position: 6
---

# TimeOnly Masks
 
The tables below describe the mask characters that can be used when the **MaskType** is *TimeOnly*. Note that the format characters are case sensitive.

## Standard TimeOnly Format codes

| __Format Character__ | __Description__ |
|----|----|
|t|ShortTimePattern|
|T|LongTimePattern|
|r, R|RFC1123Pattern|

##  Custom TimeOnly Format codes

Where standard TimeOnly codes are too restrictive, create your own custom formats using the format patterns listed below.

| __Format Pattern__ | __Description__ |
|----|----|
|h|The number of whole hours in the time interval that aren't counted as part of days. Single-digit hours don't have a leading zero.|
|hh|The number of whole hours in the time interval that aren't counted as part of days. Single-digit hours have a leading zero.|
|m|The number of whole minutes in the time interval that aren't included as part of hours or days. Single-digit minutes don't have a leading zero.|
|mm|The number of whole minutes in the time interval that aren't included as part of hours or days. Single-digit minutes have a leading zero.|
|s|The number of whole seconds in the time interval that aren't included as part of hours, days, or minutes. Single-digit seconds don't have a leading zero.|
|ss|The number of whole seconds in the time interval that aren't included as part of hours, days, or minutes. Single-digit seconds have a leading zero.|
|f|The tenths of a second in a time interval.|
|ff|The hundredths of a second in a time interval.|
|fff|The milliseconds in a time interval.|
|F|The tenths of a second in a time interval. Nothing is displayed if the digit is zero.|
|FF|The hundredths of a second in a time interval. Any fractional trailing zeros or two zero digits aren't included.|
|FFF|The milliseconds in a time interval. Any fractional trailing zeros aren't included.|

## Accessing the MaskTimeOnlyProvider

When the mask type is set to *TimeOnly* you can access the **MaskTimeOnlyProvider** by casting to that appropriate type.

````C#

this.radMaskedEditBox1.MaskType = MaskType.TimeOnly;
MaskTimeOnlyProvider provider = this.radMaskedEditBox1.MaskedEditBoxElement.Provider as MaskTimeOnlyProvider;
provider.MillisecondsStep = 5;

````
````VB.NET

Me.radMaskedEditBox1.MaskType = MaskType.TimeOnly
Dim provider As MaskTimeOnlyProvider = TryCast(Me.radMaskedEditBox1.MaskedEditBoxElement.Provider, MaskTimeOnlyProvider)
provider.MillisecondsStep = 5

````

## See Also

* [Standard]({%slug winforms/editors/maskededitbox/standard-masks%})
* [Numeric Masks]({%slug winforms/editors/maskededitbox/numeric-masks%})
* [Working with RadMaskedEditBox]({%slug winforms/editors/maskededitbox/working-with-radmaskededitbox%})

---
title: TimeSpan Masks
page_title: TimeSpan Masks - RadMaskedEditBox
description: The following tables  describe the mask characters that can be used when the MaskType is DateTime. Note that the format characters are case sensitive.
slug: winforms/editors/maskededitbox/timespan-masks
tags: timespan, masks
published: True
position: 5 
---

# TimeSpan Masks
 
The tables below describe the mask characters that can be used when the **MaskType** is *TimeSpan*. Note that the format characters are case sensitive.

## Standard TimeSpan Format codes

A full list of the supported masks can be found in the following MSDN article: [Standard TimeSpan masks](https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-timespan-format-strings)

| __Format Character__ | __Description__ |
|----|----|
|c|Constant (invariant) format|
|g|General short format|
|G|General long format|


##  Custom TimeSpan Format codes

Where standard TimeSpan codes are too restrictive, create your own custom formats using the format patterns listed below.

A full list of the supported masks can be found in the following MSDN article: [Custom TimeSpan masks](https://docs.microsoft.com/en-us/dotnet/standard/base-types/custom-timespan-format-strings)

| __Format Pattern__ | __Description__ |
|----|----|
|d|The number of whole days in the time interval.|
|dd|The number of whole days in the time interval, padded with leading zeros as needed.|
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

## Accessing the MaskTimeSpanProvider

When the mask type is set to *TimeSpan* you can access the **MaskTimeSpanProvider** by casting to that appropriate type.


````C#

    this.radMaskedEditBox1.MaskType = MaskType.TimeSpan; 
    MaskTimeSpanProvider provider = this.radMaskedEditBox1.MaskedEditBoxElement.Provider as MaskTimeSpanProvider;
    provider.MillisecondsStep = 5;

````
````VB.NET

    Me.radMaskedEditBox1.MaskType = MaskType.TimeSpan
    Dim provider As MaskTimeSpanProvider = TryCast(Me.radMaskedEditBox1.MaskedEditBoxElement.Provider, MaskTimeSpanProvider)
    provider.MillisecondsStep = 5

````

{{endregion}} 

## See Also

* [Standard]({%slug winforms/editors/maskededitbox/standard-masks%})
* [Numeric Masks]({%slug winforms/editors/maskededitbox/numeric-masks%})
* [Working with RadMaskedEditBox]({%slug winforms/editors/maskededitbox/working-with-radmaskededitbox%})

---
title: Mask Types and Providers
page_title: Mask Types - RadMaskedEditBox
description: A sample setup demonstrating how to configure RadMaskedEditBox with a custom phone mask and a short date pattern.
slug: winforms/editors/maskededitbox/mask-types-and-providers
tags: mask, types, providers
published: True
position: 3 
---

# Mask Types and Providers

The following table lists the available mask types that **RadMaskedEditBox** offers and the respective **IMaskProvider** that handles the user's mouse and keyboard input:

|MaskType|IMaskProvider|
|----|----|
|MaskType.**None**|TextBoxProvider|
|MaskType.**DateTime**|[**MaskDateTimeProvider**]({%slug winforms/editors/maskededitbox/date-and-time-masks%})|
|MaskType.**Numeric**|[**NumericMaskTextBoxProvider**]({%slug winforms/editors/maskededitbox/numeric-masks%})|
|MaskType.**Standard**|[**StandartMaskTextBoxProvider**]({%slug winforms/editors/maskededitbox/standard-masks%})|
|MaskType.**Regex**|**RegexMaskTextBoxProvider** - you can define [Regex expressions](https://docs.microsoft.com/en-us/dotnet/standard/base-types/regular-expressions) as masks.|
|MaskType.**IP**|**IPMaskTextBoxProvider** - used for IP validation)|
|MaskType.**EMail**|**EMailMaskTextBoxProvider** - used for email validation|
|MaskType.**FreeFormDateTime**|**FreeFormDateTimeProvider** - you can find more information how this DateTime parsing logic works: [Parsing Dates]({%slug winforms/editors/maskededitbox/parsing-dates%})|
|MaskType.**TimeSpan**|[**MaskTimeSpanProvider**]({%slug winforms/editors/maskededitbox/timespan-masks%})|
|MaskType.**DateOnly** (.Net Only)|[**MaskDateOnlyProvider**]({%slug winforms/editors/maskededitbox/timespan-masks%})|
|MaskType.**TimeOnly** (.Net Only)|[**MaskTimeOnlyProvider**]({%slug editors-maskededitbox-timeonly-masks%})|

The provider can be accessed by the MaskedEditBoxElement.**Provider** property. You should cast it to the respective type in order to access the relevant API that the specific provider offers. 


## See Also

* [Structure]({%slug winforms/editors/maskededitbox/structure%})
* [Smart Tag]({%slug winforms/editors/maskededitbox/design-time/smart-tag%})
* [Working with RadMaskedEditBox]({%slug winforms/editors/maskededitbox/working-with-radmaskededitbox%})

---
title: Standard Masks
page_title: Standard Masks | RadMaskedEditBox
description: When the MaskType property is set to Standard the user is allowed to enter digits, letters, special characters.
slug: winforms/editors/maskededitbox/standard-masks
tags: standard,masks
published: True
position: 4
previous_url: editors-maskededitbox-standart-masks
---

# Standard Masks

The table below describe the mask characters that can be used when the __MaskType__ property is set to __Standard__.

| __Mask Character__ | __Description__ |
|----|----|
|0|Digit, required. This element will accept any single digit between 0 and 9.|
|9|Digit or space, optional.|
|#|Digit or space, optional. If this position is blank in the mask, it will be rendered as the character in the [PromptChar]({%slug winforms/editors/maskededitbox/working-with-radmaskededitbox%}) property. For example, "$######.##" displays as a literal "$", accepts a numeric amount with six places and two places to the right of the decimal, i.e. $123456.56.|
|L|Accepts letters only.|
|?|Letter, optional.|
|&|Character, required.|
|C|Character, optional.|
|A|Alphanumeric, required. Accepts any symbol.|
|a|Alphanumeric, optional.|
|.|Decimal placeholder.|
|,|Thousands placeholder.|
|:|Time separator.|
|/|Date separator.|
|$|Currency symbol.|
|<|Shift down. Converts all characters that follow to lowercase.|
|>|Shift up. Converts all characters that follow to uppercase.|
| \| |Disable a previous shift up or shift down.|
| \\ |Escape. Escapes a mask character, turning it into a literal. "\\" is the escape sequence for a backslash.|
|All other characters|All non-mask elements will appear as themselves within __RadMaskedEditBox__ . Literals always occupy a static position in the mask at run time, and cannot be moved or deleted by the user|

>note By default, when the user is typing before already typed text, the text is overridden. If the *Insert* key is pressed you can insert characters instead of replacing them.
>

## See Also

* [Date and Time Masks]({%slug winforms/editors/maskededitbox/date-and-time-masks%})
* [Numeric Masks]({%slug winforms/editors/maskededitbox/numeric-masks%})
* [Working with RadMaskedEditBox]({%slug winforms/editors/maskededitbox/working-with-radmaskededitbox%})

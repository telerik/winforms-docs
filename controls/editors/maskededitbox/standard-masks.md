---
title: Standard Masks
page_title: Standard Masks - WinForms MaskedEditBox Control
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

### Accessing the StandardMaskTextBoxProvider

When the mask type is set to *Standard* you can access the **StandardMaskTextBoxProvider** by casting to that appropriate type.

{{source=..\SamplesCS\Editors\MaskEditBox1.cs region=StandardProvider}} 
{{source=..\SamplesVB\Editors\MaskEditBox1.vb region=StandardProvider}} 

````C#
this.radMaskedEditBox1.MaskType = Telerik.WinControls.UI.MaskType.Standard;
StandardMaskTextBoxProvider provider = this.radMaskedEditBox1.MaskedEditBoxElement.Provider as StandardMaskTextBoxProvider;

````
````VB.NET
Me.radMaskedEditBox1.MaskType = Telerik.WinControls.UI.MaskType.Standard
Dim provider As StandardMaskTextBoxProvider = TryCast(Me.radMaskedEditBox1.MaskedEditBoxElement.Provider, StandardMaskTextBoxProvider)

````

{{endregion}} 

### Useful properties

**StandardMaskTextBoxProvider** exposes the following useful properties: 

* **Mask**: Gets the mask.
* **Value**: Gets or sets the value.
* **MaskCompleted**: Gets a value indicating whether all required inputs have been entered into the formatted string.
* **MaskFull**: Gets a value indicating whether all required and optional inputs have been entered into the formatted string.
* **PromptChar**: Gets or sets the character used to prompt the user for input.
* **ResetOnPrompt**: Gets or sets a value that determines how an input character that matches the prompt character should be handled. When *true*, the prompt character entered as input causes the current editable position in the mask to be reset. Otherwise, if *false*, the entered prompt character has to be processed as a normal input character. The default is *true*.
* **ResetOnSpace**: Gets or sets a value that determines how a space input character should be handled. When *true*, entering the space input character causes the current editable position in the mask to be reset. Otherwise, if *false*, the entered space character has to be processed as a normal input character. The default is *true*.

>note By default, when the user is typing before already typed text, the text is overridden. If the *Insert* key is pressed you can insert characters instead of replacing them.
>

## See Also

* [Date and Time Masks]({%slug winforms/editors/maskededitbox/date-and-time-masks%})
* [Numeric Masks]({%slug winforms/editors/maskededitbox/numeric-masks%})
* [Working with RadMaskedEditBox]({%slug winforms/editors/maskededitbox/working-with-radmaskededitbox%})

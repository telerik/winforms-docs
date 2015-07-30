---
title: Mnemonics
page_title: Mnemonics | UI for WinForms Documentation
description: Mnemonics
slug: winforms/buttons/mnemonics
tags: mnemonics
published: True
position: 7
---

# Mnemonics



## 

RadButton, RadCheckBox, RadRadioButton, and RadToggleButton support mnemonics. 

All you need to do is to specify the character that will be used for a given control by placing the __&__ character before the desired symbol. The following example demonstrates how the __r__ key is used for radButton1 mnemonic:

{{source=..\SamplesCS\Buttons\Button.cs region=mnemonics}} 
{{source=..\SamplesVB\Buttons\Button.vb region=mnemonics}} 

````C#

            this.radButton1.Text = "&radButton1";
````
````VB.NET
        Me.radButton1.Text = "&radButton1"
        '
````

{{endregion}} 




__UseMnemonic__ is a boolean property which controls whether the __&__ character is displayed as the symbol itself or whether it is used to designate a mnemonic (visualized as an underscore). Its default value is __true__ i.e. mnemonics are used by default.

For the example above about radButton1, pressing the __r__ key is the same as clicking on the button.

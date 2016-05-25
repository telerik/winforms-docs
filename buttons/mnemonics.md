---
title: Mnemonics
page_title: Mnemonics | UI for WinForms Documentation
description: RadButton, RadCheckBox, RadRadioButton, and RadToggleButton support mnemonics. 
slug: winforms/buttons/mnemonics
tags: mnemonics
published: True
position: 7
previous_url: buttons-mnemonics
---

# Mnemonics

__RadButton__, __RadCheckBox__, __RadRadioButton__, and __RadToggleButton__ support mnemonics. 

All you need to do is to specify the character that will be used for a given control by placing the __&__ character before the desired symbol. The following example demonstrates how the __r__ key is used for radButton1 mnemonic:

{{source=..\SamplesCS\Buttons\Button.cs region=mnemonics}} 
{{source=..\SamplesVB\Buttons\Button.vb region=mnemonics}} 

````C#
this.radButton1.Text = "&radButton1";

````
````VB.NET
Me.radButton1.Text = "&radButton1"

````

{{endregion}} 

![buttons-mnemonics](images/buttons-mnemonics001.png)

The __UseMnemonic__ property is a boolean property which controls whether the __&__ character is displayed as the symbol itself or whether it is used to designate a mnemonic (visualized as an underscore). Its default value is *true* i.e. mnemonics are used by default.

For the example, about radButton1, pressing the __r__ key is the same as clicking on the button.

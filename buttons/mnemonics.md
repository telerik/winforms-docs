---
title: Mnemonics
page_title: Mnemonics
description: Mnemonics
slug: buttons-mnemonics
tags: mnemonics
published: True
position: 7
---

# Mnemonics



## 

RadButton, RadCheckBox, RadRadioButton, and RadToggleButton support mnemonics. 

All you need to do is to specify the character that will be used for a given control by placing the __&__character before the desired symbol. The following example demonstrates how the __r__key is used for radButton1 mnemonic:

#### __[C#]__

{{source=..\SamplesCS\Buttons\Button.cs region=mnemonics}}
	
	            this.radButton1.Text = "&radButton1";
	
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Buttons\Button.vb region=mnemonics}}
	        Me.radButton1.Text = "&radButton1"
	{{endregion}}



__UseMnemonic__is a boolean property which controls whether the __&__character is displayed as the symbol itself or whether it is used to designate a mnemonic (visualized as an underscore). Its default value is __true__i.e. mnemonics are used by default.

For the example above about radButton1, pressing the __r__ key is the same as clicking on the button.

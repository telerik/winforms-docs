---
title: Getting Started (RadButtons)
page_title: Getting Started (RadButtons)
description: Getting Started (RadButtons)
slug: shortcuts-getting-started-(radbuttons)
tags: getting,started,(radbuttons)
published: True
position: 1
---

# Getting Started (RadButtons)



## 

As stated in the [Overview]({%slug shortcuts-overview%}) 
          article, RadShortcuts are assigned at RadItem level. That said, you can't assign a shortcut directly to a
          RadControl (RadButton for example). Instead, you should assign the shortcut to the main element of a RadControl. 
          For example, considering our buttons, you can assign shortcuts to them as it is shown below:
        

#### __[C#]__

{{region buttonsShortcuts}}
	            this.radButton1.ButtonElement.Shortcuts.Add(new RadShortcut(Keys.Control, Keys.B));
	            this.radRadioButton1.ButtonElement.Shortcuts.Add(new RadShortcut(Keys.Control, Keys.R));
	            this.radSplitButton1.DropDownButtonElement.Shortcuts.Add(new RadShortcut(Keys.Control, Keys.S));
	            this.radToggleButton1.ButtonElement.Shortcuts.Add(new RadShortcut(Keys.Control, Keys.T));
	{{endregion}}



#### __[VB.NET]__

{{region buttonsShortcuts}}
	        Me.RadButton1.ButtonElement.Shortcuts.Add(New RadShortcut(Keys.Control, Keys.B))
	        Me.RadRadioButton1.ButtonElement.Shortcuts.Add(New RadShortcut(Keys.Control, Keys.R))
	        Me.RadSplitButton1.DropDownButtonElement.Shortcuts.Add(New RadShortcut(Keys.Control, Keys.S))
	        Me.RadToggleButton1.ButtonElement.Shortcuts.Add(New RadShortcut(Keys.Control, Keys.T))
	{{endregion}}



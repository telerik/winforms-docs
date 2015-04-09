---
title: Button
page_title: Button
description: Button
slug: buttons-button-overview
tags: button
published: True
position: 0
---

# Button

![buttons-button-overview 001](images/buttons-button-overview001.png)

__RadButton__is a replacement of the standard WinForms Button. __RadButton__supports themes.
        

* To add a __RadButton__ to your form, drag a __RadButton__ from the toolbox onto the surface of the form designer.

* To programmatically add a RadButton to a form, create a new instance of a __RadButton__, and add it to the form __Controls__ collection.

#### __[C#] Adding a RadButton at runtime__

{{source=..\SamplesCS\Buttons\Button.cs region=creatingbutton}}
	
	            RadButton myNewRadButton = new RadButton();
	            myNewRadButton.Text = "My New RadButton";
	            myNewRadButton.Width = 150;
	            myNewRadButton.Height = 50;
	            this.Controls.Add(myNewRadButton);
	
	{{endregion}}



#### __[VB.NET] Adding a RadButton at runtime__

{{source=..\SamplesVB\Buttons\Button.vb region=creatingbutton}}
	        Dim myNewRadButton As New RadButton()
	        myNewRadButton.Text = "My New RadButton"
	        myNewRadButton.Width = 150
	        myNewRadButton.Height = 50
	        Me.Controls.Add(myNewRadButton)
	{{endregion}}



## Antialiased text

Use the following code snippet to set the __TextRenderingHint__property of the __TextPrimitive__to use antialiasing:
        

#### __[C#]__

{{source=..\SamplesCS\Buttons\Button.cs region=textrenderinghint}}
	
	            ((TextPrimitive)myNewRadButton.ButtonElement.Children[1].Children[1]).TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAlias;
	
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Buttons\Button.vb region=textrenderinghint}}
	        DirectCast(myNewRadButton.ButtonElement.Children(1).Children(1), TextPrimitive).TextRenderingHint = Drawing.Text.TextRenderingHint.AntiAlias
	{{endregion}}



You can alternatively create a theme using the Visual Style Builder which sets the property for the TextPrimitive node.
        

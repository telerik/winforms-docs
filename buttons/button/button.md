---
title: Overview
page_title: Button | UI for WinForms Documentation
description: Button
slug: winforms/buttons/button
tags: button
published: True
position: 0
---

# Button

![buttons-button-overview 001](images/buttons-button-overview001.png)

__RadButton__ is a replacement of the standard WinForms Button. __RadButton__ supports themes.
        

* To add a __RadButton__ to your form, drag a __RadButton__ from the toolbox onto the surface of the form designer.

* To programmatically add a RadButton to a form, create a new instance of a __RadButton__, and add it to the form __Controls__ collection.

__[C#] Adding a RadButton at runtime__

{{source=..\SamplesCS\Buttons\Button.cs region=creatingbutton}} 
{{source=..\SamplesVB\Buttons\Button.vb region=creatingbutton}} 

````C#
RadButton myNewRadButton = new RadButton();
myNewRadButton.Text = "My New RadButton";
myNewRadButton.Width = 150;
myNewRadButton.Height = 50;
this.Controls.Add(myNewRadButton);

````
````VB.NET
Dim myNewRadButton As New RadButton()
myNewRadButton.Text = "My New RadButton"
myNewRadButton.Width = 150
myNewRadButton.Height = 50
Me.Controls.Add(myNewRadButton)

````

{{endregion}} 




## Antialiased text

Use the following code snippet to set the __TextRenderingHint__ property of the __TextPrimitive__ to use antialiasing: 

{{source=..\SamplesCS\Buttons\Button.cs region=textrenderinghint}} 
{{source=..\SamplesVB\Buttons\Button.vb region=textrenderinghint}} 

````C#
((TextPrimitive)myNewRadButton.ButtonElement.Children[1].Children[1]).TextRenderingHint = System.Drawing.Text.TextRenderingHint.AntiAlias;

````
````VB.NET
DirectCast(myNewRadButton.ButtonElement.Children(1).Children(1), TextPrimitive).TextRenderingHint = Drawing.Text.TextRenderingHint.AntiAlias

````

{{endregion}} 


You can alternatively create a theme using the Visual Style Builder which sets the property for the TextPrimitive node.
        

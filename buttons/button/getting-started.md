---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: To add a RadButton to your form, drag a RadButton from the toolbox onto the surface of the form designer.
slug: winforms/buttons/button/getting-started
tags: button, getting-started
published: True
position: 4 
---

# Getting Started

* To add a __RadButton__ to your form, drag a __RadButton__ from the toolbox onto the surface of the form designer.

* To programmatically add a __RadButton__ to a form, create a new instance of a __RadButton__, and add it to the form __Controls__ collection.

#### Adding a RadButton at runtime 

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

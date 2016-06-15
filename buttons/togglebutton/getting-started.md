---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: RadToggleButton is designed to manage states on your form. It shares many features with the RadCheckBox, but provides a different visual effect than the standard check mark. 
slug: winforms/buttons/togglebutton/getting-started
tags: togglebutton
published: True
position: 3 
---

# Getting Started

* To add a __RadToggleButton__ to your form, drag a __RadToggleButton__ from the toolbox onto the surface of the form designer.

* To programmatically add a __RadToggleButton__ to a form, create a new instance of a __RadToggleButton__, and add it to the form __Controls__ collection.

#### Adding a RadToggleButton at runtime 

{{source=..\SamplesCS\Buttons\ToggleButton.cs region=creatingbutton}} 
{{source=..\SamplesVB\Buttons\ToggleButton.vb region=creatingbutton}} 

````C#
RadToggleButton myToggleButton = new RadToggleButton();
myToggleButton.Text = "Pin";
myToggleButton.Width = 150;
myToggleButton.Height = 50;
this.Controls.Add(myToggleButton);

````
````VB.NET
Dim myToggleButton As New RadToggleButton()
myToggleButton.Text = "Pin"
myToggleButton.Width = 150
myToggleButton.Height = 50
Me.Controls.Add(myToggleButton)

````

{{endregion}} 


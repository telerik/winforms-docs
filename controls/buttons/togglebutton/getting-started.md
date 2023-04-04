---
title: Getting Started
page_title: Getting Started - WinForms ToggleButton Control
description: WinForms ToggleButton is designed to manage states on your form. It shares many features with the RadCheckBox, but provides a different visual effect than the standard check mark. 
slug: winforms/buttons/togglebutton/getting-started
tags: togglebutton
published: True
position: 3 
---

# Getting Started with WinForms ToggleButton

You can add ____ either at design time or at run time:

## Design Time

1. To add a __RadToggleButton__ to your form, drag a __RadToggleButton__ from the toolbox onto the surface of the form designer.
2. In the *Properties* section in Visual Studio you can change the __Text__ property.
3. Double click the __RadToggleButton__ at design time in order to generate the __ToggleStateChanged__ event handler.

## Run Time

To programmatically add a __RadToggleButton__ to a form, create a new instance of a __RadToggleButton__, and add it to the form __Controls__ collection.

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


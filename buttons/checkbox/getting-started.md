---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: RadCheckBox is designed to provide an interface element that can represent an On or Off state using a check mark.
slug: winforms/buttons/checkbox/getting-started
tags: checkbox
published: True
position: 3
previous_url: buttons-checkbox-getting-started
---

# Getting Started

* To add a __RadCheckBox__ to your form, drag a __RadCheckBox__ from the toolbox onto the surface of the form designer.

* To programmatically add a __RadCheckBox__ to a form, create a new instance of a __RadCheckBox__, and add it to the form __Controls__ collection.

#### Adding a RadCheckBox at runtime 

{{source=..\SamplesCS\Buttons\CheckBox.cs region=AddCheckBox}} 
{{source=..\SamplesVB\Buttons\CheckBox.vb region=AddCheckBox}} 

````C#
 RadCheckBox checkBox = new RadCheckBox();
 checkBox.ToggleState = Telerik.WinControls.Enumerations.ToggleState.On;
 checkBox.Text = "Is active";
 this.Controls.Add(checkBox);

````
````VB.NET
Dim checkBox As New RadCheckBox()
checkBox.ToggleState = Telerik.WinControls.Enumerations.ToggleState.[On]
checkBox.Text = "Is active"
Me.Controls.Add(checkBox)

````

{{endregion}} 







---
title: Getting Started
page_title: Getting Started - WinForms CheckBox Control
description: WinForms CheckBox is designed to provide an interface element that can represent an On or Off state using a check mark.
slug: winforms/buttons/checkbox/getting-started
tags: checkbox
published: True
position: 3
---

# Getting Started

You can add __RadCheckBox__ either at design time or at run time:

## Design Time

1. To add a __RadCheckBox__ to your form, drag a __RadCheckBox__ from the toolbox onto the surface of the form designer.
2. In the *Properties* section of Visual Studio you can change the displayed text next to the check-box by setting the __Text__ property.
3. Double click the check-box in the designer in order to generate the __ToggleStateChanged__ event.
4. Click `F5` to start the application.

## Run Time

To programmatically add a __RadCheckBox__ to a form, create a new instance of a __RadCheckBox__, and add it to the form __Controls__ collection.

#### Adding a RadCheckBox at runtime 

{{source=..\SamplesCS\Buttons\CheckBox.cs region=AddCheckBox}} 
{{source=..\SamplesVB\Buttons\CheckBox.vb region=AddCheckBox}} 

````C#
public void AddCheckBox()
{
    RadCheckBox checkBox = new RadCheckBox();
    checkBox.ToggleState = Telerik.WinControls.Enumerations.ToggleState.On;
    checkBox.Text = "Is active";
    this.Controls.Add(checkBox);
}

````
````VB.NET
Public Sub AddCheckBox()
    Dim checkBox As New RadCheckBox()
    checkBox.ToggleState = Telerik.WinControls.Enumerations.ToggleState.[On]
    checkBox.Text = "Is active"
    Me.Controls.Add(checkBox)
End Sub

````

{{endregion}} 

# See Also

* [How to Change the CheckBox's Size]({%slug change-checkbox-size%})






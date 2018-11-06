---
title: Accessing and customizing elements
page_title: Accessing and customizing elements | UI for WinForms Documentation
description: RadToggleButton is designed to manage states on your form. It shares many features with the RadCheckBox, but provides a different visual effect than the standard check mark. 
slug: winforms/buttons/togglebutton/accessing-and-customizing-elements
tags: togglebutton
published: True
position: 0
previous_url: buttons-togglebutton-accessing-and-customizing-elements
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/buttons/togglebutton/structure%}) of the __RadToggleButton__.
      

## Design time

You can access and modify the style for different elements in __RadToggleButton__ by using the Element hierarchy editor.

>caption Fig.1 Element hierarchy editor

![togglebutton-customizing-appearance-accessing-and-customizing-elements 001](images/togglebutton-customizing-appearance-accessing-and-customizing-elements001.png)

## Programmatically

You can customize the nested elements at run time as well:
>caption Fig.2 Customize elements

![togglebutton-customizing-appearance-accessing-and-customizing-elements 002](images/togglebutton-customizing-appearance-accessing-and-customizing-elements002.png)

#### Customize elements 

{{source=..\SamplesCS\Buttons\ToggleButton.cs region=AccessingCustomizingElements}} 
{{source=..\SamplesVB\Buttons\ToggleButton.vb region=AccessingCustomizingElements}} 

````C#
this.radToggleButton1.ButtonElement.TextElement.ForeColor = Color.Red;
this.radToggleButton1.ButtonElement.ButtonFillElement.BackColor = Color.Aqua;
this.radToggleButton1.ButtonElement.BorderElement.BoxStyle = Telerik.WinControls.BorderBoxStyle.FourBorders;
this.radToggleButton1.ButtonElement.BorderElement.TopColor = Color.Aqua;
this.radToggleButton1.ButtonElement.BorderElement.BottomColor = Color.Aqua;
this.radToggleButton1.ButtonElement.BorderElement.LeftColor = Color.Red;
this.radToggleButton1.ButtonElement.BorderElement.RightColor = Color.Red;

````
````VB.NET
Me.radToggleButton1.ButtonElement.TextElement.ForeColor = Color.Red
Me.radToggleButton1.ButtonElement.ButtonFillElement.BackColor = Color.Aqua
Me.radToggleButton1.ButtonElement.BorderElement.BoxStyle = Telerik.WinControls.BorderBoxStyle.FourBorders
Me.radToggleButton1.ButtonElement.BorderElement.TopColor = Color.Aqua
Me.radToggleButton1.ButtonElement.BorderElement.BottomColor = Color.Aqua
Me.radToggleButton1.ButtonElement.BorderElement.LeftColor = Color.Red
Me.radToggleButton1.ButtonElement.BorderElement.RightColor = Color.Red

````

{{endregion}} 
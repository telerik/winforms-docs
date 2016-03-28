---
title: Accessing and customizing elements
page_title: Accessing and customizing elements | UI for WinForms Documentation
description: RadButton is a themable replacement of the standard WinForms Button. It can be clicked by using the mouse, Enter key, or Spacebar, if the button has focus.
slug: winforms/buttons/button/customizing-appearance/accessing-and-customizing-elements 
tags: button, appearance
published: True
position: 0 
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/buttons/button/structure%}) of the __RadButton__.
      

## Design time

You can access and modify the style for different elements in __RadButton__ by using the Element hierarchy editor.

>caption Fig.1 Element hierarchy editor

![button-customizing-appearance-accessing-and-customizing-elements 001](images/button-customizing-appearance-accessing-and-customizing-elements001.png)

## Programmatically

You can customize the nested elements at run time as well:
>caption Fig.2 Customize elements

![button-customizing-appearance-accessing-and-customizing-elements 002](images/button-customizing-appearance-accessing-and-customizing-elements002.png)

#### Customize elements 

{{source=..\SamplesCS\Buttons\Button.cs region=AccessingCustomizingElements}} 
{{source=..\SamplesVB\Buttons\Button.vb region=AccessingCustomizingElements}} 

````C#
this.radButton1.ButtonElement.TextElement.ForeColor = Color.Red;
this.radButton1.ButtonElement.ButtonFillElement.BackColor = Color.Aqua;
this.radButton1.ButtonElement.BorderElement.BoxStyle = Telerik.WinControls.BorderBoxStyle.FourBorders;
this.radButton1.ButtonElement.BorderElement.TopColor = Color.Aqua;
this.radButton1.ButtonElement.BorderElement.BottomColor = Color.Aqua;
this.radButton1.ButtonElement.BorderElement.LeftColor = Color.Red;
this.radButton1.ButtonElement.BorderElement.RightColor = Color.Red;

````
````VB.NET
Me.radButton1.ButtonElement.TextElement.ForeColor = Color.Red
Me.radButton1.ButtonElement.ButtonFillElement.BackColor = Color.Aqua
Me.radButton1.ButtonElement.BorderElement.BoxStyle = Telerik.WinControls.BorderBoxStyle.FourBorders
Me.radButton1.ButtonElement.BorderElement.TopColor = Color.Aqua
Me.radButton1.ButtonElement.BorderElement.BottomColor = Color.Aqua
Me.radButton1.ButtonElement.BorderElement.LeftColor = Color.Red
Me.radButton1.ButtonElement.BorderElement.RightColor = Color.Red

````

{{endregion}} 
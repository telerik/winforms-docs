---
title: Accessing and Customizing Element
page_title: Accessing and Customizing Element - WinForms DropDownButton Control
description: RadDropDownButton provides a menu-like interface open from a button. Each of the items of RadDropDownButton can be set to perform an action when clicked.
slug: winforms/buttons/dropdownbutton/accessing-and-customizing-elements
tags: dropdownbutton
published: True
position: 0
previous_url: buttons-dropdownbutton-accessing-and-customizing-elements
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/buttons/dropdownbutton/structure%}) of the __RadDropDownButton__.
      

## Design time

You can access and modify the style for different elements in __RadDropDownButton__ by using the Element hierarchy editor. It can be accessed by selecting the *Edit UI Elements* item from the Smart Tag.

>caption Figure 1: Element hierarchy editor

![WinForms RadButtons Element hierarchy editor](images/dropdownbutton-customizing-appearance-accessing-and-customizing-elements001.png)

## Programmatically

You can customize the nested elements at run time as well:
>caption Figure 2: Customize elements

![WinForms RadButtons Customize elements](images/dropdownbutton-customizing-appearance-accessing-and-customizing-elements002.png)

#### Customize elements 

{{source=..\SamplesCS\Buttons\DropDownButton.cs region=AccessingCustomizingElements}} 
{{source=..\SamplesVB\Buttons\DropDownButton.vb region=AccessingCustomizingElements}} 

````C#
this.radDropDownButton1.DropDownButtonElement.ActionButton.ButtonFillElement.BackColor = Color.Red;
this.radDropDownButton1.DropDownButtonElement.ActionButton.ForeColor = Color.Yellow;
this.radDropDownButton1.DropDownButtonElement.ArrowButton.Fill.BackColor = Color.Yellow;
this.radDropDownButton1.DropDownButtonElement.ArrowButton.Border.BoxStyle = Telerik.WinControls.BorderBoxStyle.SingleBorder;
this.radDropDownButton1.DropDownButtonElement.ArrowButton.Border.ForeColor = Color.Black;

````
````VB.NET
Me.radDropDownButton1.DropDownButtonElement.ActionButton.ButtonFillElement.BackColor = Color.Red
Me.radDropDownButton1.DropDownButtonElement.ActionButton.ForeColor = Color.Yellow
Me.radDropDownButton1.DropDownButtonElement.ArrowButton.Fill.BackColor = Color.Yellow
Me.radDropDownButton1.DropDownButtonElement.ArrowButton.Border.BoxStyle = Telerik.WinControls.BorderBoxStyle.SingleBorder
Me.radDropDownButton1.DropDownButtonElement.ArrowButton.Border.ForeColor = Color.Black

````

{{endregion}}  


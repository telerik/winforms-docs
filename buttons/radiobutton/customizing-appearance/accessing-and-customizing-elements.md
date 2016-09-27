---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements | UI for WinForms Documentation
description: RadRadioButton replaces the WinForms RadioButton control and adds robust data binding, state management, and design options. 
slug: winforms/buttons/radiobutton/accessing-and-customizing-elements
tags: radiobutton
published: True
position: 0
previous_url: buttons-radiobutton-accessing-and-customizing-elements
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/buttons/radiobutton/structure%}) of the __RadRadioButton__.
      

## Design time

You can access and modify the style for different elements in __RadRadioButton__ by using the Element hierarchy editor. It can be accessed by selecting the *Edit UI Elements* item from the Smart Tag.

>caption Figure 1: Element hierarchy editor

![radiobutton-customizing-appearance-accessing-and-customizing-elements 001](images/radiobutton-customizing-appearance-accessing-and-customizing-elements001.png)

## Programmatically

You can customize the nested elements at run time as well:
>caption Figure 2: Customize elements

![radiobutton-customizing-appearance-accessing-and-customizing-elements 002](images/radiobutton-customizing-appearance-accessing-and-customizing-elements002.png)

#### Customize elements 

{{source=..\SamplesCS\Buttons\RadioButton.cs region=AccessingCustomizingElements}} 
{{source=..\SamplesVB\Buttons\RadioButton.vb region=AccessingCustomizingElements}} 

````C#
this.radRadioButton1.ButtonElement.ForeColor = Color.Green;
this.radRadioButton1.ButtonElement.ShowBorder = true;
this.radRadioButton1.ButtonElement.BorderElement.ForeColor = Color.Black;

````
````VB.NET
Me.radRadioButton1.ButtonElement.ForeColor = Color.Green
Me.radRadioButton1.ButtonElement.ShowBorder = True
Me.radRadioButton1.ButtonElement.BorderElement.ForeColor = Color.Black

````

{{endregion}} 
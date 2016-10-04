---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements | RadRibbonForm
description: RadRibbonForm control is designed to host a RadRibbonBar control and mimic the Microsoft Office 2007 UI form style.
slug: winforms/forms-and-dialogs/ribbonform/accessing-and-customizing-elements
tags: ribbonform
published: True
position: 0 
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/forms-and-dialogs/ribbonform/structure%}) of the __RadRibbonForm__.
      

## Design time

You can access and modify the style for different elements in __RadRibbonForm__ by using the Element hierarchy editor.
>caption Figure 1: Element hierarchy editor

![forms-and-dialogs-ribbonform-accessing-and-customizing-elements 001](images/forms-and-dialogs-ribbonform-accessing-and-customizing-elements001.png)

## Programmatically

You can customize the nested elements at run time as well:
>caption Figure 2: Customize elements

![forms-and-dialogs-ribbonform-accessing-and-customizing-elements 002](images/forms-and-dialogs-ribbonform-accessing-and-customizing-elements002.png)

#### Customize elements 

{{source=..\SamplesCS\Forms And Dialogs\RadRibbonForm1.cs region=RibbonForm}} 
{{source=..\SamplesVB\Forms And Dialogs\RadRibbonForm1.vb region=RibbonForm}} 

````C#
this.AllowAero = false;
this.RibbonBar.RibbonBarElement.CaptionFill.BackColor = Color.Lime; 

````
````VB.NET
Me.AllowAero = False
Me.RibbonBar.RibbonBarElement.CaptionFill.BackColor = Color.Lime

````

{{endregion}} 

---
title: How to Change the Font of Telerik RadControls
description: Get familiar with the Font settings of the Telerik Controls    
type: how-to
page_title: How to Change the Font of Telerik RadControls   
slug: change-the-font
position: 5
tags: common, control, font
ticketid: 1526097
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2021.1.223|Telerik UI for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

A common requirement is to change the font for all Telerik RadControls in your project with a single global setting, e.g. setting the form's **Font** property. Is this even possible?

## Solution

The short answer to this question is that there is no global setting which would change the font of all controls in your application. This should be done on per control/element basis in code or by modifying the desired theme. 

The standard Microsoft controls are inheriting the font from the Form. With the Telerik UI for WinForms suite, the font is set in the theme explicitly for each control. The Telerik UI for WinForms controls suite is architecturally designed to have similar to the WPF structure, which allows easy access and modifications to each element in the element hierarchy ([Telerik Presentation Framework]({%slug winforms/telerik-presentation-framework/overview%})) and thus allows theming support - 30 professionally designed [themes]({%slug winforms/themes/using-default-themes%}) are available out of the box. The font of a particular control is usually defined in the theme and that's why it is not inherited by its parent.

The correct way to change the font of your controls is to set it individually to each control. Please note that for some controls (like **RadLabel**), it is enough to set the **Font** property, while for others (like **RadGridView**), you will need to introduce this setting in a formatting event, e.g. the **CellFormatting** event that **RadGridView** offers.

Another way to change the font is to modify the desired theme: [How to Customize a Theme]({%slug customize-a-theme%}).

 





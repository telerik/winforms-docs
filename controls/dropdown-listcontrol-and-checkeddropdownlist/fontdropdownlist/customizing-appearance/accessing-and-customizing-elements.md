---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements - RadFontDropDownList
description: RadFontDropDownList represents a drop down list with built-in fonts that are installed on the system. 
slug: winforms/editors/fontdropdownlist/accessing-and-customizing-elements
tags: fontdropdownlist, customize
published: True
position: 0
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/editors/fontdropdownlist/structure%}) of **RadFontDropDownList**.
      

## Design time

You can access and modify the style for the different elements in the editable area of **RadFontDropDownList** by using the *Element hierarchy editor*.

>note In order to access the *Element hierarchy editor* select **RadFontDropDownList** and click the small arrow on the top right position in order to open the Smart Tag. Then, click the *Edit UI Elements*.

>caption Figure 1: Element hierarchy editor

![WinForms RadFontDropDownList Element hierarchy editor](images/editors-fontdropdownlist-accessing-and-customizing-elements001.png)

## Programmatically

You can customize the nested elements at run time as well:

>caption Figure 2: Customize elements

![WinForms RadFontDropDownList Customize elements](images/editors-fontdropdownlist-accessing-and-customizing-elements002.png)

#### Customize elements 

{{source=..\SamplesCS\Editors\FontDropDownList.cs region=CustomizeElements}} 
{{source=..\SamplesVB\Editors\FontDropDownList.vb region=CustomizeElements}} 

````C#
this.radFontDropDownList1.BackColor = Color.Yellow;
this.radFontDropDownList1.PopupEditorElement.ArrowButtonElement.Fill.BackColor = Color.Aqua;
this.radFontDropDownList1.PopupEditorElement.ArrowButtonElement.Fill.GradientStyle = GradientStyles.Solid;
this.radFontDropDownList1.EditableAreaElement.ForeColor = Color.Red;
this.radFontDropDownList1.EditableAreaElement.DrawBorder = true;
this.radFontDropDownList1.EditableAreaElement.BorderColor = Color.Red;
this.radFontDropDownList1.EditableAreaElement.BorderGradientStyle = GradientStyles.Solid;

````
````VB.NET
Me.RadFontDropDownList1.BackColor = Color.Yellow
Me.RadFontDropDownList1.PopupEditorElement.ArrowButtonElement.Fill.BackColor = Color.Aqua
Me.RadFontDropDownList1.PopupEditorElement.ArrowButtonElement.Fill.GradientStyle = GradientStyles.Solid
Me.RadFontDropDownList1.EditableAreaElement.ForeColor = Color.Red
Me.RadFontDropDownList1.EditableAreaElement.DrawBorder = True
Me.RadFontDropDownList1.EditableAreaElement.BorderColor = Color.Red
Me.RadFontDropDownList1.EditableAreaElement.BorderGradientStyle = GradientStyles.Solid

````

{{endregion}} 
 
In order to style the pop-up items it is suitable to use the [Formatting Items]({%slug winforms/editors/fontdropdownlist/accessing-and-customizing-elements/formatting-items%}) event.

---
title: Displaying RadDropDownButton as an SVG Image in WinForms
description: Learn how to display RadDropDownButton as an SVG image.
type: how-to
page_title: How to Display RadDropDownButton as an SVG Image in WinForms
slug: dropdownbutton-display-svg-image
tags: buttons, winforms, svg image, dropdownbutton, customization
res_type: kb
ticketid: 1677727
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.1.211|RadTreeView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In the following scenario, we will demonstrate how to customize a Telerik RadDropDownButton control to look like an SVG image and then display a drop-down menu with items.

## Solution

To achieve this functionality, we can set several properties of the control:

````C#
// Hide the arrow part of the RadDropDownButton
this.radDropDownButton1.ShowArrow = false;

//Remove the text from the RadDropDownButton
this.radDropDownButton1.Text = "";

//Set the background color to transparent
this.radDropDownButton1.BackColor = System.Drawing.Color.Transparent;

//Assign an SVG image to the RadDropDownButton
this.radDropDownButton1.SvgImageXml = resources.GetString("radDropDownButton1.SvgImageXml");

//Add clickable items to the RadDropDownButton's dropdown using RadMenuItems**:
this.radDropDownButton1.Items.AddRange(new Telerik.WinControls.RadItem[] {
       this.radMenuItem1,
       this.radMenuItem2,
       this.radMenuItem3,
       this.radMenuItem4,
       this.radMenuItem5
   });

````

This approach allows you to display an SVG image while providing a list of clickable items. 

## See Also

- [RadDropDownButton Documentation](https://docs.telerik.com/devtools/winforms/controls/buttons/dropdownbutton/dropdownbutton)

---
title: Customizing Appearance 
page_title: Customizing Appearance - WinForms DataEntry Control
description: Learn how one can customize the RadDataEntry appearance.
slug: winforms/dataentry/customizing-appearance
tags: appearance
published: True
position: 0
---

# Customizing Appearance

Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/dataentry/control-element-structure%}) of the RadDataEntry.

## Design Time

You can access and modify the style for different elements in __RadDataEntry__ by using the `Element Hierarchy Editor`.

>caption Figure 1: Element Hierarchy Editor

![WinForms RadDataEntry Element Hierarchy Editor](images/dataentry-customizing-appearance001.png)   

## Programmatically

The following snippet show how you can customize the RadDataEntry styles at runtime. 

#### Change Border Color

<snippet id='dataentry-customizing-appearance-setbordercolor-cs'/>
<snippet id='dataentry-customizing-appearance-setbordercolor-vb'/>



>caption Figure 2: The changed border.

![WinForms RadDataEntry Changed Border](images/dataentry-customizing-appearance002.png)  

## Changing The Styles Of The Underlying Controls. 

The following snippet shows how you access the underlying controls and change the their styles:

#### Set Labels ForeColor

<snippet id='dataentry-customizing-appearance-labelcolor-cs'/>
<snippet id='dataentry-customizing-appearance-labelcolor-vb'/>



>caption Figure 3: Set Labels ForeColor.

![WinForms RadDataEntry Set Labels ForeColor](images/dataentry-customizing-appearance003.png)  

## Changing Validation Panel BackColor

The following code snippets represent how to change the BackColor property of Validation Panel:

### Change Back Color

<snippet id='dataentry-customizing-appearance-changebackcolor-cs'/>
<snippet id='dataentry-customizing-appearance-changebackcolor-vb'/>



>caption Figure 4: Set Validaton Panel BackColor.

![WinForms RadDataEntry Set Validaton Panel BackColor](images/dataentry-customizing-appearance004.png)  

# See Also

 * [Structure]({%slug winforms/dataentry/control-element-structure%})
 * [Getting Started]({%slug winforms/dataentry/getting-started%})
 * [Properties, events and attributes]({%slug winforms/dataentry/properties,-events-and-attributes%})
 * [Themes]({%slug winforms/dataentry/themes%})
 * [Change the editor to RadDropDownList]({%slug winforms/dataentry/how-to/change-the-editor-to-a-bound-raddropdownlist%})

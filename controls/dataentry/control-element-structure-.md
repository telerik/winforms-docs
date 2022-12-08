---
title: Structure 
page_title: Structure - WinForms DataEntry Control
description: Get familiar with the DataEntry elements structure.
slug: winforms/dataentry/control-element-structure
tags: control,element,structure,
published: True
position: 1
previous_url: dataentry-overview-control-element-structure
---

# Control Element Structure 

__RadDataEntry__ control inherits __RadScrollablePanel__ control, so __RadDataEntry__ has support for horizontal and vertical scrollbars. In __RadDataEntry__ there is embedded Validation Panel that can be used to show some additional information according the validation requirements. The figure below demonstrates the structure of __RadDataEntry__.

>caption Figure 1: RadDataEntry Structure
![WinForms RadDataEntry Structure](images/dataentry-overview-control-element-structure001.png)

__RadDataEntry__ generates content item for each public property that can be edited. These items represent one __RadPanel__ with hidden border and inside this panel, there are two labels and one editor.

>caption Figure 2: RadDataEntry Item Layout        
![WinForms RadDataEntry Item Layout](images/dataentry-overview-control-element-structure002.png)

The validation label does not have any text by default. It is designed to be used in cases where users want to show some additional information.
        
# See Also

 * [Getting Started]({%slug  winforms/dataentry/getting-started%})
 * [Properties, events and attributes]({%slug  winforms/dataentry/properties,-events-and-attributes%})
 * [Themes]({%slug winforms/dataentry/themes%})
 * [Change the editor to RadDropDownList]({%slug  winforms/dataentry/how-to/change-the-editor-to-a-bound-raddropdownlist%})

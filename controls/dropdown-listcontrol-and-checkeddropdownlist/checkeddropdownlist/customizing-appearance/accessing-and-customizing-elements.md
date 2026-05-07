---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements - RadCheckedDropDownList
description: RadCheckedDropDownList combines RadDropDownList and RadAutoCompleteBox in order to provide functionality to check items in the drop down area and tokenize them in the text area. 
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/accessing-and-customizing-elements
tags: checkeddropdownlist
published: True
position: 2
---

# Accessing and Customizing Elements
 
Accessing and customizing elements can be performed either at design time, or at run time. Before proceeding with this topic, it is recommended to get familiar with the [visual structure]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/control-element-structure%}) of the __RadCheckedDropDownList__.
      

## Design time

You can access and modify the style for different elements in __RadCheckedDropDownList__ by using the *Element hierarchy editor*.

>note In order to access the *Element hierarchy editor* select RadCheckedDropDownList and click the small arrow on the top right position in order to open the Smart Tag. Then, click the *Edit UI Elements*.

>caption Figure 1: Element Hierarchy Editor

![WinForms RadCheckedDropDownList Element Hierarchy Editor](images/dropdown-and-listcontrol-checkeddropdownlist-accessing-and-customizing-elements001.png)

## Programmatically

You can customize the nested elements at run time as well:

>caption Figure 2: Customize Elements

![WinForms RadCheckedDropDownList Customize Elements](images/dropdown-and-listcontrol-checkeddropdownlist-accessing-and-customizing-elements002.png)

#### Customize elements 

<snippet id='checkeddropdownlist-accessing-and-customizing-elements-customizeelements-cs' />
<snippet id='checkeddropdownlist-accessing-and-customizing-elements-customizeelements-vb' />



 
In order to style the pop-up items it is suitable to use the [Formatting Items]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/customization%}) event.

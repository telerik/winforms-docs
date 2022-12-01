---
title: Structure
page_title: Structure - WinForms DropDownList Control
description: Get familiar with the inner structure and organization of the elements which build the WinForms DropDownList control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/structure
tags: structure
published: True
position: 1
previous_url: dropdown-and-listcontrol-dropdownlist-structure
---

# Structure

This article describes the inner structure and organization of the elements which build the __RadDropDownList__ control.
        
>caption Figure 1: RadDropDownList visual structure

![WinForms RadDropDownList RadDropDownList visual structure](images/dropdown-and-listcontrol-dropdownlist-structure001.png)

1. __StackLayoutElement__: Serves as a container element defining a stack layout.
            

1. __RadDropDownListEditableAreaElement__: Contains a __RadDropDownTextBoxElement__ responsible for handling user input.
            

1. __RadDropDownListArrowButtonElement__: Expands the __RadListElement__.
            

1. __RadListElement__: Parent element containing the populated items and the scroll bar.
            

1. __RadScrollbarElement__: Scrolls through the items.
            

1. __RadListVisualItem__: Visual representation of the populated __RadListDataItem__.
            

1. __SizeGripElement__: Resizes the drop down element.


# See Also

* [RadControlSpy]({%slug winforms/tools/controlspy%})
            

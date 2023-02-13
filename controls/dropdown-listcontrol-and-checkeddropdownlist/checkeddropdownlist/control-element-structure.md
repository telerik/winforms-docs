---
title: Structure
page_title: Structure - WinForms CheckedDropDownList Control
description: Learn the inner structure and organization of the elements which build the WinForms CheckedDropDownList control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/control-element-structure
tags: control,element,structure
published: True
position: 1
previous_url: dropdown-and-listcontrol-checkeddropdownlist-control-element-structure
---

# Structure
 
This article describes the inner structure and organization of the elements which build __RadCheckedDropDownList__  control.
        
>caption Figure 1: RadCheckedDropDownList's elements hierarchy

![WinForms RadCheckedDropDownList Elements Hierarchy](images/dropdown-and-listcontrol-checkedropdownlist-structure001.png)

>caption Figure 2: RadCheckedDropDownList's structure

![WinForms RadCheckedDropDownList Structure](images/dropdown-and-listcontrol-checkedropdownlist-structure002.png)

1. __RadCheckedDropDownListElement__: The main element of the control which holds all other elements. It can be accessed by the RadCheckedDropDownList.__CheckedDropDownListElement__ property. It also gives you access to the popup which shows when the arrow button is clicked: RadCheckedDropDownList.CheckedDropDownListElement.__PopupForm__.  
  1.1. __RadCheckedDropDownListEditableAreaElement__: Contains the [editor]({%slug winforms/editors/autocompletebox%}) and the arrow button.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.1.1. __CheckedDropDownAutoCompleteBoxElement__: An instance of the [RadAutoCompleteBox]({%slug winforms/editors/autocompletebox%})   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.1.1.1. __AutoCompleteBoxViewElement__  
  1.2. __RadDropDownListArrowButtonElement__: Expands the RadListElement.
 

# See Also

* [RadControlSpy]({%slug winforms/tools/controlspy%})
* [Getting Started]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/getting-started%})

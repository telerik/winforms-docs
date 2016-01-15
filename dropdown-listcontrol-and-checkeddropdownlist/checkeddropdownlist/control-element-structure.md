---
title: Control Element Structure
page_title: Control Element Structure | UI for WinForms Documentation
description: Control Element Structure
slug: winforms/dropdown,-listcontrol-and-checkeddropdownlist/checkeddropdownlist/control-element-structure
tags: control,element,structure
published: True
position: 1
---

# Control Element Structure
 
This article will show you the most important parts of the structure of __RadCheckedDropDownList__

## 

Below are the key elements in __RadCheckedDropDownList__:
        

* __RadCheckedDropDownListElement__: The main element of the control which holds all other elements. Can be accessed as follows: *RadCheckedDropDownList.__CheckedDropDownListElement__. It also gives you access to the popup which shows when the arrow button is clicked: RadCheckedDropDownList.CheckedDropDownListElement.__PopupForm__*

* __RadCheckedDropDownListEditableAreaElement__: Contains the [editor]({%slug winforms/editors/autocompletebox%}) and the arrow button
            

* __CheckedDropDownAutoCompleteBoxElement__: An instance of the [RadAutoCompleteBox]({%slug winforms/editors/autocompletebox%})

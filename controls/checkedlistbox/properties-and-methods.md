---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - UI for WinForms Documentation
description: RadCheckedListBox is an enhanced alternative to the standard Windows Forms checked list box control. 
slug: winforms/checkedlistbox/properties-and-methods
tags: properties,and,methods
published: True
position: 3
previous_url: checkedlistbox-features
---

# Properties and Methods

## Properties

This section demonstrates specific for the __RadCheckedListBox__ control properties.      

1\. __CheckOnClickMode__

* __Off__ – to toggle item's __CheckState__ the user has to click on the check-box.

* __FirstClick__ – each click over the item toggles its check-box.

* __SecondClick__ – clicking over unselected item, selects it. If item is selected each next click toggles its checkbox.

2\. __CheckBoxesAlignment__ - this new property comes in order to extend the __CheckBoxesPosition__, which supports 4 positions (Left, Right, Top, Bottom). CheckBoxesAlignment gives the user full control over the CheckBoxes alignment within the item.
            

* __Near__ – when __CheckBoxesPosition__ is set to *Left* or *Right* it means Top alignment. When __CheckBoxesPosition__ is set to *Top* or *Bottom* it means *Left*.

* __Center__ – means center of the item depending on the __CheckBoxesPosition__ value.

* __Far__ - when __CheckBoxesPosition__ is set to *Left* or *Right* it means *Bottom* alignment. When __CheckBoxesPosition__ is set to *Top* or *Bottom* it means *Right*.

## Methods

* __CheckAllItems__ – Checks all items.
            
* __UncheckAllItems__ – Unchecks all items.

* __CheckSelectedItems__ – Checks selected items.
            
* __UncheckSelectedItems__ – Unchecks selected items.

## Events

* __ItemCheckedChanging__: Occurs when a __ListViewDataItem__ is about to be checked. It is a cancelable event.
* __ItemCheckedChanged__: Occurs when a __ListViewDataItem__ is checked.

            

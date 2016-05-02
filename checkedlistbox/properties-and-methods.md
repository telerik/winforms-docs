---
title: Properties and Methods
page_title: Properties and Methods | UI for WinForms Documentation
description: Properties and Methods
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

* __Off__ – to toggle item CheckState the user has to click on the checkbox.

* __FirstClick__ – each click over the item toggles its checkbox.

* __SecondClick__ – click over unselected item selects it. If item is selected each next click toggles its checkbox.

2\. __CheckBoxesAlignment__ - this new property comes in order to extend the __CheckBoxesPosition__, which supports 4 positions (Left, Right, Top, Bottom). CheckBoxesAlignment gives the user full control over the CheckBoxes alignment within the item.
            

* __Near__ – when CheckBoxesPosition is set to Left or Right it means Top alignment. When CheckBoxesPosition is set to Top or Bottom it means Left.

* __Center__ – means center of the item depending on the CheckBoxesPosition value.

* __Far__ - when CheckBoxesPosition is set to Left or Right it means Bottom alignment. When CheckBoxesPosition is set to Top or Bottom it means Right.

## Using the Space Bar

The space bar allows you to toggle selected items check state with a single hit. Pressing space bar selects current item if it is not selected. When current item is selected and the space bar key is pressed there are two cases:
        

* Toggle selected items, if all items CheckStates are equal.

* Check selected items, if at least one item has different CheckState. ![checkedlistbox-features 001](images/checkedlistbox-features001.gif)

1. Initially there are three selected items and another one is focused.

1. Selects the focused item.

1. Checks all selected items (that's why selected items has different CheckState).

1. Toggles selected items CheckState.

## Methods

* __CheckAllItems__ – Checks all items.
            
* __UncheckAllItems__ – Unchecks all items.

* __CheckSelectedItems__ – Checks selected items.
            
* __UncheckSelectedItems__ – Unchecks selected items.
            

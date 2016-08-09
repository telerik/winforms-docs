---
title: Selection
page_title: Selection | RadListControl
description: RadListControl is the an alternative to the Microsoft ListBox control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features/selection
tags: listcontrol, selection
published: True
position: 3  
---

# Selection

__RadListControl__ has a __SelectionMode__ property that can be used to constrain the selection in different ways The available modes are:

* __None__: The *None* mode is pretty self descriptive. It does not allow selecting items at all. 
* __One__: The *One* means that only one item can be selected at a time.
* __MultiSimple__: It allows toggling the selected state of an item by clicking on it or pressing the space bar. Using the keyboard arrow keys in *MultiSimple* mode moves only the active item. The active item is different than the normal and selected items. It has no fill color, only an outline. There can be only one active item at any given moment.
* __MultiExtended__: It is a combination of *One* and *MultiSimple* and on top of that provides the ability to select a range of items. *MultiExtended* by default behaves like *One*. When the `Control` key is pressed, it behaves like *MultiSimple* and when the `Shift` key is pressed, it allows the user to select a range of items starting from the currently selected item and ending with the clicked item.
 

---
title: Overview
page_title: Overview
description: DropDownButton
slug: buttons-dropdownbutton-overview
tags: dropdownbutton
published: True
position: 2
---

# DropDownButton



## 

__RadDropDownButton__ provides a menu-like interface open from a button.

![buttons-dropdownbutton-overview 001](images/buttons-dropdownbutton-overview001.png)

Each of the items of __RadDropDownButton__can be set to perform an action when clicked. In addition, the items can contain other items, allowing you to create any hierarchy that fits your needs of subitems. 

To use __RadDropDownButton__, drag a __RadDropDownButton__ on the surface of your form designer from the Toolbox. Like a standard button, you can control the displayed text by setting the __Text__ property. Unlike a standard button, __RadDropDownButton__ displays drop-down items when clicked; so handling the __Click__ event of this button is not appropriate. Instead, work directly with the events for each item. To learn how to create and use items on a __RadDropDownButton__see [Working with Telerik RadDropDownButton Items]({%slug buttons-dropdownbutton-working-with-raddropdownbutton-items%}).

__RadDropDownButton__is visually indistinguishable from __RadSplitButton__, but there is an important programmatic distinction. On __RadSplitButton__ the __DefaultItem__ property indicates the item whose __Click__event should be triggered when the button is clicked. If you want a button that does something when clicked as well as when a selection is made from the menu, you should use a __RadSplitButton__instead of a __RadDropDownButton__.

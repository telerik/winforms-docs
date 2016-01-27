---
title: Overview
page_title: MultiColumnComboBox | UI for WinForms Documentation
description: MultiColumnComboBox
slug: winforms/multicolumncombobox
tags: multicolumncombobox
published: True
position: 0
previous_url: multicolumncombobox-overview
---

# MultiColumnComboBox



## 

The multi-column combobox is a special case of combobox control with RadGridView integrated in its drop-down. The control combines the functionality and features of RadComboBox and RadGridView. Structure

The image below represents the structure of the multi-column combobox.
>caption 

![multicolumncombobox-overview 001](images/multicolumncombobox-overview001.png)



The drop-down element is an object of type __MultiColumnComboBoxElement__. Use this element to set the [drop-down style]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdownstyle%}), [animation]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/animation-effects%}) and [sizing]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdown-resizing%}) as you would do for the regular combobox.  

The __EditorControl__ property of the __MultiColumnComboBoxElement__ gives you a reference to the __RadGridView__ control. Using that reference you can obtain the RadGridView object and work as with normal RadGridView control. Refer to RadGridView documentation for additional information on RadGridView.

The current version has one limitation that you should consider:

* You cannot use the auto-complete mode of RadDropDownList

* The RadGridView control hosted in the drop-down does not allow editing operations

* The RadGridView control hosted in the drop-down does not support filtering, grouping and sorting operations.

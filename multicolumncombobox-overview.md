---
title: MultiColumnComboBox
page_title: MultiColumnComboBox
description: MultiColumnComboBox
slug: multicolumncombobox-overview
tags: multicolumncombobox
published: True
position: 27
---

# MultiColumnComboBox



## 

The multi-column combobox is a special case of combobox control with RadGridView integrated in its drop-down. The control combines the functionality and features of RadComboBox and RadGridView. Structure

The image below represents the structure of the multi-column combobox.

![multicolumncombobox-overview 001](images/multicolumncombobox-overview001.png)



The drop-down element is an object of type __MultiColumnComboBoxElement__. Use this element to set the [drop-down style](8A628922-8097-4004-86BC-FC9867F69520), [animation](B5F911BA-D4C6-49B8-8F1E-8D01A95F4DC6) and [sizing](F67129EE-E012-4983-8E3B-8A83BA1FD5B2) as you would do for the regular combobox.  

The __EditorControl__ property of the __MultiColumnComboBoxElement__ gives you a reference to the __RadGridView__ control. Using that reference you can obtain the RadGridView object and work as with normal RadGridView control. Refer to RadGridView documentation for additional information on RadGridView.

The current version has one limitation that you should consider:

* You cannot use the auto-complete mode of RadDropDownList

* The RadGridView control hosted in the drop-down does not allow editing operations

* The RadGridView control hosted in the drop-down does not support filtering, grouping and sorting operations.

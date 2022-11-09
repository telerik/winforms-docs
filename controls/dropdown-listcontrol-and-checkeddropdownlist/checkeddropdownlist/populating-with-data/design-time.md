---
title: Design Time
page_title: Design Time - RadCheckedDropDownList
description: RadCheckedDropDownList combines RadDropDownList and RadAutoCompleteBox in order to provide functionality to check items in the drop down area and tokenize them in the text area. 
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/design-time
tags: checkeddropdownlist
published: True
position: 0 
---

# Design time
 
This article demonstrates how to populate __RadCheckedDropDownList__ with data at design time. The *RadCheckedListDataItem Collection Editor* allows you to do that.

>caption Figure 1: RadCheckedListDataItem Collection Editor

![dropdown-and-listcontrol-checkeddropdownlist-populating-with-data-design-time 001](images/dropdown-and-listcontrol-checkeddropdownlist-populating-with-data-design-time001.png)


You can access it through the *Smart tag >> Edit Items* option:

>caption Figure 2: Smart tag options

![dropdown-and-listcontrol-checkeddropdownlist-populating-with-data-design-time 002](images/dropdown-and-listcontrol-checkeddropdownlist-populating-with-data-design-time002.png)

Another possibility to open the editor is via the __Items__ collection in the *Properties* Visual Studio section:

>caption Figure 3:  Visual Studio Properties window

![dropdown-and-listcontrol-checkeddropdownlist-populating-with-data-design-time 003](images/dropdown-and-listcontrol-checkeddropdownlist-populating-with-data-design-time003.png)

You can add two item types:

* __RadCheckedListDataItem__ – it represents a logical data item which can display specific text, image and checkbox.You can customize its look through the *Properties* section on the right side of the item in the *RadCheckedListDataItem Collection Editor*.

>caption Figure 4: Sample RadCheckedListDataItem

![dropdown-and-listcontrol-checkeddropdownlist-populating-with-data-design-time 004](images/dropdown-and-listcontrol-checkeddropdownlist-populating-with-data-design-time004.png)

Below you can find the properties associated with the __RadCheckedListDataItem__:

>caption Figure 5:  RadCheckedListDataItem's properties

![dropdown-and-listcontrol-checkeddropdownlist-populating-with-data-design-time 005](images/dropdown-and-listcontrol-checkeddropdownlist-populating-with-data-design-time005.png)

* __DescriptionTextCheckedListDataItem__ – similar to the __RadCheckedListDataItem__. In addition, it displays some description below the item’s text.

>caption Figure 6:  Sample DescriptionTextCheckedListDataItem

![dropdown-and-listcontrol-checkeddropdownlist-populating-with-data-design-time 006](images/dropdown-and-listcontrol-checkeddropdownlist-populating-with-data-design-time006.png)


You have two additional properties: __DescriptionFont__ and __DescriptionText__ which specifies the font and the text associated with the item’s description.

>caption Figure 7:  DescriptionTextCheckedListDataItem's properties

![dropdown-and-listcontrol-checkeddropdownlist-populating-with-data-design-time 007](images/dropdown-and-listcontrol-checkeddropdownlist-populating-with-data-design-time007.png)

# See Also

* [Adding Items Programmatically]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/adding-items-programmatically%})
* [Data Binding]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/data-binding%})

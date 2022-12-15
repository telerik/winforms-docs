---
title: Design Time
page_title: Design Time - WinForms DropDownList Control
description: Learn how to populate WinForms DropDownList with data at design time. 
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/populating-with-data/design-time
tags: design,time
published: True
position: 0
previous_url: dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time
---

# Design time
 
This article demonstrates how to populate __RadDropDownList__ with data at design time. The *RadListDataItem Collection Editor* allows you to do that.

>caption Figure 1: RadListDataItem Collection Editor

![WinForms RadDropDownList RadListDataItem Collection Editor](images/dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time001.png)

You can access it through the *Smart tag >> Edit Items* option:

>caption Figure 2: Smart tag options

![WinForms RadDropDownList Smart Tag Options](images/dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time002.png)

Another possibility to open the editor is via the __Items__ collection in the *Properties* Visual Studio section:

>caption Figure 3:  Visual Studio Properties window

![WinForms RadDropDownList Visual Studio Properties Window](images/dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time003.png)

You can add two item types:

* __RadListDataItem__ – it represents a logical data item which can display specific text and image.You can customize its look through the *Properties* section on the right side of the item in the *RadListDataItem Collection Editor*.

>caption Figure 4: Sample RadListDataItem

![WinForms RadDropDownList Sample RadListDataItem](images/dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time004.png)

Below you can find the properties associated with the __RadListDataItem__:

>caption Figure 5:  RadListDataItem's properties

![WinForms RadDropDownList RadListDataItem's Properties](images/dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time005.png)

* __DescriptionTextListDataItem__ – similar to the __RadListDataItem__. In addition, it displays some description below the item’s text.

>caption Figure 6:  Sample DescriptionTextListDataItem

![WinForms RadDropDownList Sample DescriptionTextListDataItem](images/dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time006.png)


You have two additional properties: __DescriptionFont__ and __DescriptionText__ which specifies the font and the text associated with the item’s description.

>caption Figure 7:  DescriptionTextListDataItem's properties

![WinForms RadDropDownList DescriptionTextListDataItem's Properties](images/dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time007.png)

# See Also

* [Adding Items Programmatically]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/populating-with-data/adding-items-programmatically%})
* [Data Binding]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/populating-with-data/data-binding%})

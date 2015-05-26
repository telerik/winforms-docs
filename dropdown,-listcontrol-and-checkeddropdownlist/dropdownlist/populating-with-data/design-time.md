---
title: Design time
page_title: Design time | UI for WinForms Documentation
description: Design time
slug: winforms/dropdown,-listcontrol-and-checkeddropdownlist/dropdownlist/populating-with-data/design-time
tags: design,time
published: True
position: 0
---

# Design time



This article demonstrates how to populate __RadDropDownList__ with data at design time.
        The *RadListDataItem Collection Editor *allows you to do that.
      ![dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time 001](images/dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time001.png)

Figure 1. RadListDataItem Collection Editor

## 

You can access it through the *Smart tag >> Edit Items* option:![dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time 002](images/dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time002.png)

Figure 2. Smart tag options

Another possibility to open the editor is via the __Items__ collection in the
        *Properties* Visual Studio section:![dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time 003](images/dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time003.png)

Figure 3.  Visual Studio Properties window

You can add two item types:

* __RadListDataItem__ – it represents a logical data item which can display specific text and image. 
              You can customize its look through the Properties section on the right side of the item in the *RadListDataItem Collection Editor*.
            ![dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time 004](images/dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time004.png)Figure 4.  Sample RadListDataItemBelow you can find the properties associated with the __RadListDataItem__:![dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time 005](images/dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time005.png)Figure 5.  RadListDataItem's properties

* __DescriptionTextListDataItem__ – similar to the __RadListDataItem__. In addition, 
              it displays some description below the item’s text.
            ![dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time 006](images/dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time006.png)Figure 6.  Sample DescriptionTextListDataItemYou have two additional properties: __DescriptionFont__ and __DescriptionText__ which 
            specifies the font and the text associated with the item’s description.![dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time 007](images/dropdown-and-listcontrol-dropdownlist-populating-with-data-design-time007.png)Figure 7.  DescriptionTextListDataItem's properties

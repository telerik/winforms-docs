---
title: Adding columns
page_title: Adding columns | UI for WinForms Documentation
description: Adding columns
slug: winforms/listview/working-with-design-time/adding-columns
tags: adding,columns
published: True
position: 0
---

# Adding columns



## 

When RadListView __ViewType__ is set to __DetailsView__, the data can be displayed in columns view. Adding columns to the control at design time, is done by populating the __Columns__ collection of RadListView. This collection can be accessed either through the __Columns__ property in the property grid of the control or through the __Smart Tag__ of RadListView.
        

![listview-working-with-design-time-adding-columns 001](images/listview-working-with-design-time-adding-columns001.png)

![listview-working-with-design-time-adding-columns 002](images/listview-working-with-design-time-adding-columns002.png)

Once __ListViewDetailColumn__ collection editor is open, you can add as many columns as you need, and also, you can modify their properties in the property grid.

![listview-working-with-design-time-adding-columns 003](images/listview-working-with-design-time-adding-columns003.png)

Once the __Columns__ collection is populated, you can assign values for each column of each ListViewDataItem, by making use of the __SubItems__ property (this property is available in design-time only):

![listview-working-with-design-time-adding-columns 004](images/listview-working-with-design-time-adding-columns004.png)

Here is the result of the explained operations:

![listview-working-with-design-time-adding-columns 005](images/listview-working-with-design-time-adding-columns005.png)

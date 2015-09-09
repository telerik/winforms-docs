---
title: Adding groups
page_title: Adding groups | UI for WinForms Documentation
description: Adding groups
slug: winforms/listview/working-with-design-time/adding-groups
tags: adding,groups
published: True
position: 1
---

# Adding groups



## 

Items in RadListView can be grouped conveniently into different groups, which will enhance your end-user experience when working with RadListView. Grouping the items at design time can be achieved by setting the __EnableCustomGroups__ and __ShowGroups__ properties of the control to true and, adding the desired groups into the __Groups__ collection of RadListControl. This collection is accessible either through the __Smart Tag__ of the control or through the __Groups__ collection property located in the property grid.
![listview-working-with-design-time-adding-groups 001](images/listview-working-with-design-time-adding-groups001.png)

![listview-working-with-design-time-adding-groups 002](images/listview-working-with-design-time-adding-groups002.png)

Once the __ListViewDataItemGroup__ collection is opened, you can add the desired groups by using the __Add__ button on the bottom, and also, you can modify the group settings in the property grid.

![listview-working-with-design-time-adding-groups 003](images/listview-working-with-design-time-adding-groups003.png)

After the desired groups are added, you can easily assign each __ListViewDataItem__ to the group of your choice by setting the __ListViewDataItem.Group__ property:

![listview-working-with-design-time-adding-groups 004](images/listview-working-with-design-time-adding-groups004.png)

Here is how the grouped items will look like:

![listview-working-with-design-time-adding-groups 005](images/listview-working-with-design-time-adding-groups005.png)

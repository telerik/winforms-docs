---
title: Adding groups
page_title: Adding groups | RadListView
description: Telerik RadListView control is created as a result of the concord of the powerful data layer used by RadGridView and RadListControl, together with the outstanding Telerik Presentation Framework.
slug: winforms/listview/working-with-design-time/adding-groups
tags: adding,groups
published: True
position: 2
previous_url: listview-working-with-design-time-adding-groups
---

# Adding groups
 
Items in **RadListView** can be grouped conveniently into different groups, which will enhance your end-user experience when working with **RadListView**. Grouping the items at design time can be achieved by setting the __EnableCustomGroups__ and __ShowGroups__ properties of the control to true and, adding the desired groups into the __Groups__ collection of **RadListView**. This collection is accessible either through the __Smart Tag__ of the control or through the __Groups__ collection property located in the property grid.

>caption Figure 1: Groups option in Smart tag

![listview-working-with-design-time-adding-groups 001](images/listview-working-with-design-time-adding-groups001.png)

>caption Figure 2: Groups option in Properties section

![listview-working-with-design-time-adding-groups 002](images/listview-working-with-design-time-adding-groups002.png)

Once the __ListViewDataItemGroup Collection Editor__ is opened, you can add the desired groups by using the __Add__ button on the bottom, and also, you can modify the group settings in the property grid.

>caption Figure 3: ListViewDataItemGroup Collection Editor

![listview-working-with-design-time-adding-groups 003](images/listview-working-with-design-time-adding-groups003.png)

After the desired groups are added, you can easily assign each __ListViewDataItem__ to the group of your choice by setting the ListViewDataItem.__Group__ property:

>caption Figure 4: Specifying item's group

![listview-working-with-design-time-adding-groups 004](images/listview-working-with-design-time-adding-groups004.png)

Here is how the grouped items will look like:

![listview-working-with-design-time-adding-groups 005](images/listview-working-with-design-time-adding-groups005.png)

# See Also

* [Design Time Basics]({%slug winforms/listview/working-with-design-time/design-time%})	 
* [Adding items]({%slug winforms/listview/working-with-design-time/adding-items%})	
* [Adding columns]({%slug winforms/listview/working-with-design-time/adding-columns%})	

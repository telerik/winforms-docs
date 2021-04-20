---
title: Adding columns
page_title: Adding columns - WinForms ListView Control
description: When the RadListView.ViewType property is set to DetailsView, the data can be displayed in columns view.
slug: winforms/listview/working-with-design-time/adding-columns
tags: adding,columns
published: True
position: 1
previous_url: listview-working-with-design-time-adding-columns
---

# Adding columns

When the RadListView.**ViewType** property is set to *DetailsView*, the data can be displayed in columns view. Adding columns to the control at design time, is done by populating the **Columns** collection of **RadListView**. This collection can be accessed either through the __Columns__ property in the property grid of the control or through the __Smart Tag__ of **RadListView**.        

>caption Figure 1: Columns option in Smart Tag

![listview-working-with-design-time-adding-columns 001](images/listview-working-with-design-time-adding-columns001.png)

>caption Figure 2: Columns option in Properties section

![listview-working-with-design-time-adding-columns 002](images/listview-working-with-design-time-adding-columns002.png)

Once __ListViewDetailColumn Collection Editor__ is opened, you can add as many columns as you need, and also, you can modify their properties in the property grid.

>caption Figure 3: ListViewDetailColumn Collection Editor

![listview-working-with-design-time-adding-columns 003](images/listview-working-with-design-time-adding-columns003.png)

Once the __Columns__ collection is populated, you can assign values for each column of each **ListViewDataItem**, by making use of the __SubItems__ property (this property is available in design-time only):

>caption Figure 4: Fill cells' values

![listview-working-with-design-time-adding-columns 004](images/listview-working-with-design-time-adding-columns004.png)

Here is the result of the explained operations:

![listview-working-with-design-time-adding-columns 005](images/listview-working-with-design-time-adding-columns005.png)

> Note if you assign a DataSource programmatically, this will use the default column widths. To handle this scenario, use the **ColumnCreating** event to access column by field name and set the desired width there.


# See Also

* [Design Time Basics]({%slug winforms/listview/working-with-design-time/design-time%})	
* [Adding groups]({%slug winforms/listview/working-with-design-time/adding-groups%})	
* [Adding items]({%slug winforms/listview/working-with-design-time/adding-items%})	 

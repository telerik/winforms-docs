---
title: Basic Grouping
page_title: Basic Grouping
description: Basic Grouping
slug: gridview-grouping-basic-grouping
tags: basic,grouping
published: True
position: 0
---

# Basic Grouping



There is a special area at the top of the grid where grouping options are displayed. This is the __GridGroupingPanel__. When the grid
      is grouped, all group fields appear in this GroupPanel as elements along with the sort order, e.g. Country, Order Date. You can add or rearrange sorting fields by 
      dragging and dropping the header of the column you wish to use for grouping.
      See the [End-user Capabilities Grouping]({%slug gridview-end-user-capabilities-grouping%}) topic 
      for more on basic grouping behavior from the user perspective.

The __GridViewTemplate__ properties that govern grouping behavior are:

* __EnableGrouping__: Allows grouping to occur programmatically or by user drag and drop. By default this property is __True__.

* __AllowDragToGroup__: Allows the end-user to drag column headers to the grouping panel. By default this property is __True__.

* __AutoExpandGroups__: Groups are automatically expanded as grouping expressions are added either programmatically or by drag-and-drop. This property is __False__by default.

Once grouped, you can additionally sort the grid data, using the default sorting mechanism.

The example below allows GroupDescriptors to be added programmatically, but does not allow the user to group via drag and drop. The groups are automatically expanded.![gridview-grouping-basic-grouping 001](images/gridview-grouping-basic-grouping001.png)

#### __[C#] Setting grouping properties__

{{region settingGroupingProperties}}
	            this.radGridView1.MasterTemplate.EnableGrouping = true;
	            this.radGridView1.MasterTemplate.AllowDragToGroup = false;
	            this.radGridView1.MasterTemplate.AutoExpandGroups = true;
	{{endregion}}



#### __[VB.NET] Setting grouping properties__

{{region settingGroupingProperties}}
	        Me.RadGridView1.MasterTemplate.EnableGrouping = True
	        Me.RadGridView1.MasterTemplate.AllowDragToGroup = False
	        Me.RadGridView1.MasterTemplate.AutoExpandGroups = True
	{{endregion}}



## GroupPanel

You can hide the GroupPanel using the following code:

#### __[C#] Hide the group panel__

{{region hideTheGroupPanel}}
	            this.radGridView1.ShowGroupPanel = false;
	{{endregion}}



#### __[VB.NET] Hide the group panel__

{{region hideTheGroupPanel}}
	        Me.RadGridView1.ShowGroupPanel = False
	{{endregion}}





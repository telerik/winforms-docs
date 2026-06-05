---
title: Basic Grouping
page_title: Basic Grouping - WinForms GridView Control
description: Get familiar with the built-in grouping functionality supported in WinForms GridView.
slug: winforms/gridview/grouping/basic-grouping
tags: basic,grouping
published: True
position: 0
previous_url: gridview-grouping-basic-grouping
---

# Basic Grouping

There is a special area at the top of the grid where grouping options are displayed. This is the __GridGroupingPanel__. When the grid is grouped, all group fields appear in this GroupPanel as elements along with the sort order, e.g. Country, Order Date. You can add or rearrange sorting fields by dragging and dropping the header of the column you wish to use for grouping. See the [End-user Capabilities Grouping]({%slug winforms/gridview/end-user-capabilities/grouping%}) topic for more on basic grouping behavior from the user perspective.

The __GridViewTemplate__ properties that govern grouping behavior are:

* __EnableGrouping:__ Allows grouping to occur programmatically or by user drag and drop. By default this property is __True__.

* __AllowDragToGroup:__ Allows the end-user to drag column headers to the grouping panel. By default this property is __True__.

* __AutoExpandGroups:__ Groups are automatically expanded as grouping expressions are added either programmatically or by drag-and-drop. This property value is __False__ by default.

* __GroupExpandAnimationType:__ Gets or set a value indicating the animation effect that will be used when expanding/collapsing groups.

Once grouped, you can additionally sort the grid data, using the default sorting mechanism.

The example below allows GroupDescriptors to be added programmatically, but does not allow the user to group via drag and drop. The groups are automatically expanded.

>note When there are more that one groups on the same level the information in the group header row is separated by the "," character. This character is taken for the current culture settings: `Thread.CurrentThread.CurrentCulture.TextInfo.ListSeparator`.

>caption Figure 1: The grid is grouped by several fields.
 
![WinForms RadGridView The grid is grouped by several fields](images/gridview-grouping-basic-grouping001.png)


#### Setting grouping properties

<snippet id='gridview-grouping-settinggroupingproperties-cs' />
<snippet id='gridview-grouping-settinggroupingproperties-vb' />

## GroupPanel

You can hide the __GroupPanel__ using the following code:

#### Hide the group panel

<snippet id='gridview-grouping-hidethegrouppanel-cs' />
<snippet id='gridview-grouping-hidethegrouppanel-vb' />

The __ShowGroupPanelScrollbars__ property indicates whether the group panel will show scroll-bars or it will expand to show all group headers.  

#### Show the group panel scroll-bar

<snippet id='gridview-grouping-showgrouppanelscrollbars-cs' />
<snippet id='gridview-grouping-showgrouppanelscrollbars-vb' />

|ShowGroupPanelScrollbars = *false* |ShowGroupPanelScrollbars = *true* |
| ------ | ------ |
|![WinForms RadGridView ShowGroupPanelScrollbars False](images/gridview-grouping-basic-grouping002.png)|![WinForms RadGridView ShowGroupPanelScrollbars True](images/gridview-grouping-basic-grouping003.png)|
# See Also
* [Custom Grouping]({%slug winforms/gridview/grouping/custom-grouping%})

* [Events]({%slug winforms/gridview/grouping/events%})

* [Formatting Group Header Row]({%slug winforms/gridview/grouping/formatting-group-header-row%})

* [Group Aggregates]({%slug winforms/gridview/grouping/group-aggregates%})

* [Groups Collection]({%slug winforms/gridview/grouping/groups-collection%})

* [Setting Groups Programmatically]({%slug winforms/gridview/grouping/setting-groups-programmatically%})

* [Sorting group rows]({%slug winforms/gridview/grouping/sorting-group-rows%})

* [Using Grouping Expressions]({%slug winforms/gridview/grouping/using-grouping-expressions%})

* [Show Summary Values for Collapsed Groups in RadGridView ]({%slug group-rows-with-summary-values%})


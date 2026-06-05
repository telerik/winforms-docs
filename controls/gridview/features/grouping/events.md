---
title: Events
page_title: Events - WinForms GridView Control
description: Learn how to use the GroupByChanged and GroupByChanging events to control the groping operation.
slug: winforms/gridview/grouping/events
tags: events
published: True
position: 7
previous_url: gridview-grouping-events
---

# Events

There are two events that are raised, when the data in the RadGridView is grouped. The first one is the __GroupByChanging__ event which is raised before the data is grouped and he second one is the __GroupByChanged__ event raised after the data is grouped.

<snippet id='gridview-groupingevents-eventhandlers-cs' />
<snippet id='gridview-groupingevents-eventhandlers-vb' />

From the event arguments of both events you can access the following data:

* __Action:__ An enumeration with values: *Add*, *Remove*, *ItemChanged* and *Reset*.The __Action__ property notifies if a __GroupDescriptor__ is added, removed, modified or the __GroupDescriptors__ collection is cleared.
		  
* __NewItems:__ A List of *added*, *edited* or *removed*__GroupDescriptors__. For each __GroupDescriptor__ you can get its __GroupNames__, __Format__, __Aggregates__ and __Expression__.

You are also able to cancel the grouping operation by setting the __Cancel__ property to *True*

<snippet id='gridview-groupingevents-cancelgrouping-cs' />
<snippet id='gridview-groupingevents-cancelgrouping-vb' />

Since the __GroupDescriptors__ collection implements the __INotifyPropertyChanged__ interface, you can use its __CollectionChanged__ event:

<snippet id='gridview-groupingevents-subscribetocollectionchanged-cs' />
<snippet id='gridview-groupingevents-subscribetocollectionchanged-vb' />
<snippet id='gridview-groupingevents-collectionchangedhandler-cs' />
<snippet id='gridview-groupingevents-collectionchangedhandler-vb' />

The arguments of this event provide the same data as the __GroupByChanged__ event.

>note As of **R1 2021** RadGridView offers two new events: 
>
* **GroupSortChanging**: Fires when the user changes the sorting of the group. The action can be canceled.
* **GroupSortChanged**: Fires after the user has changed the sorting of the group.
>
The **GridViewGroupSortChangingEventArgs** gives you access to the GridViewTemplate, GroupDescriptor and the new ListSortDirection.
>

# See Also
* [Basic Grouping]({%slug winforms/gridview/grouping/basic-grouping%})

* [Custom Grouping]({%slug winforms/gridview/grouping/custom-grouping%})

* [Formatting Group Header Row]({%slug winforms/gridview/grouping/formatting-group-header-row%})

* [Group Aggregates]({%slug winforms/gridview/grouping/group-aggregates%})

* [Groups Collection]({%slug winforms/gridview/grouping/groups-collection%})

* [Setting Groups Programmatically]({%slug winforms/gridview/grouping/setting-groups-programmatically%})

* [Sorting group rows]({%slug winforms/gridview/grouping/sorting-group-rows%})

* [Using Grouping Expressions]({%slug winforms/gridview/grouping/using-grouping-expressions%})


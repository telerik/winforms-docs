---
title: Events
page_title: Events - WinForms GridView Control
description: WinForms GridView offers several events related to the sorting behavior. Learn which are they. 
slug: winforms/gridview/sorting/events
tags: events
published: True
position: 4
previous_url: gridview-sorting-events
---

# Events

There are two events that are raised when the data in the RadGridView is sorted. The first one is the __SortChanging__ event which is raised before the data is sorted. The second one is the __SortChanged__ event and it is raised after the data is sorted.

<snippet id='gridview-sortingevents-sortingevents1-cs' />
<snippet id='gridview-sortingevents-sortingevents-vb' />

From the event arguments of both events you can access the following data:

* __Action:__ An enumeration with values: *Add*, *Remove*, *ItemChanged* and *Reset*. The __Action__ property notifies if a __SortDescriptor__ is added, removed, modified or the __SortDescriptors__ collection is cleared.

* __NewItems:__ Is a List of added, edited or removed __SortDescriptors__. For each __SortDescriptor__ you can get its __PropertyName__ and __Direction__.

You are also able to cancel the sorting operation by setting the __Cancel__ property to *True*.
 
<snippet id='gridview-sortingevents-cancelsorting-cs' />
<snippet id='gridview-sortingevents-cancelsorting-vb' />

Since the __SortDescriptors__ collection implements the __INotifyPropertyChanged__ interface, you can use its __CollectionChanged__ event (The arguments of this event provide the same data as the __SortChanged__ event).

<snippet id='gridview-sortingevents-collectionchanged-cs' />
<snippet id='gridview-sortingevents-collectionchanged-vb' />
<snippet id='gridview-sortingevents-collectionchanged1-cs' />
<snippet id='gridview-sortingevents-collectionchanged1-vb' />

>note As of **R1 2021** RadGridView offers two new events: 
>
* **GroupSortChanging**: Fires when the user changes the sorting of the group. The action can be canceled.
* **GroupSortChanged**: Fires after the user has changed the sorting of the group.
>
The **GridViewGroupSortChangingEventArgs** gives you access to the GridViewTemplate, GroupDescriptor and the new ListSortDirection.
>


# See Also
* [Basic Sorting]({%slug winforms/gridview/sorting/basic-sorting%})

* [Custom Sorting]({%slug winforms/gridview/sorting/custom-sorting%})

* [Setting Sorting Programmatically]({%slug winforms/gridview/sorting/setting-sorting-programmatically%})

* [Sorting Expressions]({%slug winforms/gridview/sorting/sorting-expressions%})


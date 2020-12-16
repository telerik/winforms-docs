---
title: Events
page_title: Events | RadGridView
description: This article shows how one can use the GroupByChanged and GroupByChanging events to control the groping operation.
slug: winforms/gridview/grouping/events
tags: events
published: True
position: 7
previous_url: gridview-grouping-events
---

# Events

There are two events that are raised, when the data in the RadGridView is grouped. The first one is the __GroupByChanging__ event which is raised before the data is grouped and he second one is the __GroupByChanged__ event raised after the data is grouped.

{{source=..\SamplesCS\GridView\Grouping\GroupingEvents.cs region=eventHandlers}} 
{{source=..\SamplesVB\GridView\Grouping\GroupingEvents.vb region=eventHandlers}}

````C#
void radGridView1_GroupByChanging1(object sender, Telerik.WinControls.UI.GridViewCollectionChangingEventArgs e)
{
    e.Cancel = true;
}

````
````VB.NET
Private Sub RadGridView1_GroupByChanging1(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangingEventArgs) Handles RadGridView1.GroupByChanging
    e.Cancel = True
End Sub

````

{{endregion}} 

From the event arguments of both events you can access the following data:

* __Action:__ An enumeration with values: *Add*, *Remove*, *ItemChanged* and *Reset*.The __Action__ property notifies if a __GroupDescriptor__ is added, removed, modified or the __GroupDescriptors__ collection is cleared.
		  
* __NewItems:__ A List of *added*, *edited* or *removed*__GroupDescriptors__. For each __GroupDescriptor__ you can get its __GroupNames__, __Format__, __Aggregates__ and __Expression__.

You are also able to cancel the grouping operation by setting the __Cancel__ property to *True*

{{source=..\SamplesCS\GridView\Grouping\GroupingEvents.cs region=cancelGrouping}} 
{{source=..\SamplesVB\GridView\Grouping\GroupingEvents.vb region=cancelGrouping}} 
````C#
void radGridView1_GroupByChanging1(object sender, Telerik.WinControls.UI.GridViewCollectionChangingEventArgs e)
{
    e.Cancel = true;
}

````
````VB.NET
Private Sub RadGridView1_GroupByChanging1(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangingEventArgs) Handles RadGridView1.GroupByChanging
    e.Cancel = True
End Sub

````

{{endregion}} 

Since the __GroupDescriptors__ collection implements the __INotifyPropertyChanged__ interface, you can use its __CollectionChanged__ event:

{{source=..\SamplesCS\GridView\Grouping\GroupingEvents.cs region=subscribeToCollectionChanged}} 
{{source=..\SamplesVB\GridView\Grouping\GroupingEvents.vb region=subscribeToCollectionChanged}} 
````C#
radGridView1.GroupDescriptors.CollectionChanged += new Telerik.WinControls.Data.NotifyCollectionChangedEventHandler(GroupDescriptors_CollectionChanged);

````
````VB.NET
AddHandler Me.RadGridView1.GroupDescriptors.CollectionChanged, AddressOf GroupDescriptors_CollectionChanged

````

{{endregion}} 


{{source=..\SamplesCS\GridView\Grouping\GroupingEvents.cs region=CollectionChangedHandler}} 
{{source=..\SamplesVB\GridView\Grouping\GroupingEvents.vb region=CollectionChangedHandler}} 

````C#
void GroupDescriptors_CollectionChanged(object sender, Telerik.WinControls.Data.NotifyCollectionChangedEventArgs e)
{
}

````
````VB.NET
Private Sub GroupDescriptors_CollectionChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.Data.NotifyCollectionChangedEventArgs)
End Sub

````

{{endregion}} 

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


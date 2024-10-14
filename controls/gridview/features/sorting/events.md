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

{{source=..\SamplesCS\GridView\Sorting\SortingEvents.cs region=SortingEvents1}} 
{{source=..\SamplesVB\GridView\Sorting\SortingEvents.vb region=SortingEvents}} 

````C#
void radGridView1_SortChanging(object sender, Telerik.WinControls.UI.GridViewCollectionChangingEventArgs e)
{
}
void radGridView1_SortChanged(object sender, Telerik.WinControls.UI.GridViewCollectionChangedEventArgs e)
{
}

````
````VB.NET
Private Sub RadGridView1_SortChanging(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangingEventArgs) Handles RadGridView1.SortChanging
End Sub
Private Sub RadGridView1_SortChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangedEventArgs) Handles RadGridView1.SortChanged
End Sub

````

{{endregion}}

From the event arguments of both events you can access the following data:

* __Action:__ An enumeration with values: *Add*, *Remove*, *ItemChanged* and *Reset*. The __Action__ property notifies if a __SortDescriptor__ is added, removed, modified or the __SortDescriptors__ collection is cleared.

* __NewItems:__ Is a List of added, edited or removed __SortDescriptors__. For each __SortDescriptor__ you can get its __PropertyName__ and __Direction__.

You are also able to cancel the sorting operation by setting the __Cancel__ property to *True*.
 
{{source=..\SamplesCS\GridView\Sorting\SortingEvents.cs region=CancelSorting}} 
{{source=..\SamplesVB\GridView\Sorting\SortingEvents.vb region=CancelSorting}} 
````C#
private void radGridView1_SortChanging1(object sender, GridViewCollectionChangingEventArgs e)
{
    e.Cancel = true;
}

````
````VB.NET
Private Sub RadGridView1_SortChanging1(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangingEventArgs) Handles RadGridView1.SortChanging
    e.Cancel = True
End Sub

````

{{endregion}} 

Since the __SortDescriptors__ collection implements the __INotifyPropertyChanged__ interface, you can use its __CollectionChanged__ event (The arguments of this event provide the same data as the __SortChanged__ event).

{{source=..\SamplesCS\GridView\Sorting\SortingEvents.cs region=CollectionChanged}} 
{{source=..\SamplesVB\GridView\Sorting\SortingEvents.vb region=CollectionChanged}} 
````C#
this.radGridView1.SortDescriptors.CollectionChanged += new Telerik.WinControls.Data.NotifyCollectionChangedEventHandler(SortDescriptors_CollectionChanged);

````
````VB.NET
AddHandler Me.RadGridView1.SortDescriptors.CollectionChanged, AddressOf SortDescriptors_CollectionChanged

````

{{endregion}} 

{{source=..\SamplesCS\GridView\Sorting\SortingEvents.cs region=CollectionChanged1}} 
{{source=..\SamplesVB\GridView\Sorting\SortingEvents.vb region=CollectionChanged1}} 

````C#
void SortDescriptors_CollectionChanged(object sender, Telerik.WinControls.Data.NotifyCollectionChangedEventArgs e)
{
    
}

````
````VB.NET
Private Sub SortDescriptors_CollectionChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.Data.NotifyCollectionChangedEventArgs)
End Sub

````

{{endregion}} 

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


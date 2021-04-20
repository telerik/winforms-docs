---
title: Events
page_title: Events - WinForms GridView Control
description: Learn what events are fired when the user is performing a filtering operation in WinForms GridView.
slug: winforms/gridview/filtering/events
tags: events
published: True
position: 7
previous_url: gridview-filtering-events
---

# Events

There are two events that are raised when the data in the RadGridView is filtered. The first one is the __FilterChanging__ event and it is raised before the data is filtered. The second one is the __FilterChanged__ event which is raised after the data is filtered.

{{source=..\SamplesCS\GridView\Filtering\FilteringEvents.cs region=events1}} 
{{source=..\SamplesVB\GridView\Filtering\FilteringEvents.vb region=events1}} 
````C#
void radGridView1_FilterChanged(object sender, Telerik.WinControls.UI.GridViewCollectionChangedEventArgs e)
{
    
}

void radGridView1_FilterChanging(object sender, Telerik.WinControls.UI.GridViewCollectionChangingEventArgs e)
{

}


````
````VB.NET
Private Sub RadGridView1_FilterChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangedEventArgs) Handles RadGridView1.FilterChanged

End Sub

Private Sub RadGridView1_FilterChanging(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangingEventArgs) Handles RadGridView1.FilterChanging

End Sub

````

{{endregion}} 

From the event arguments of both events you can access the following data:

* __Action:__ an enumeration with values: *Add*, *Remove*, *ItemChanged* and *Reset*. The __Action__ property notifies if a __FilterDescriptor__ is *added*, *removed*, *modified* or the __FilterDescriptors__ collection is *cleared*.

* __NewItems:__ List of added, edited or removed __FilterDescriptors__. For each __FilterDescriptor__ you can get its *PropertyName*, *Operator*, *Value* and *Expression*.

You are also able to cancel the filtering operation by setting the __Cancel__ property to *True*.

{{source=..\SamplesCS\GridView\Filtering\FilteringEvents.cs region=cancelFilteringEvent}} 
{{source=..\SamplesVB\GridView\Filtering\FilteringEvents.vb region=cancelFilteringEvent}} 
````C#
void radGridView1_FilterChanging1(object sender, Telerik.WinControls.UI.GridViewCollectionChangingEventArgs e)
{
    e.Cancel = true;
}

````
````VB.NET
Private Sub RadGridView1_FilterChanging1(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangingEventArgs) Handles RadGridView1.FilterChanging
    e.Cancel = True
End Sub

````

{{endregion}} 

Since the __FilterDescriptors__ collection implements the __INotifyCollectionChanged__ interface, you can use its __CollectionChanged__ event:

{{source=..\SamplesCS\GridView\Filtering\FilteringEvents.cs region=collectionChanged}} 
{{source=..\SamplesVB\GridView\Filtering\FilteringEvents.vb region=collectionChanged}} 
````C#
this.radGridView1.FilterDescriptors.CollectionChanged += new Telerik.WinControls.Data.NotifyCollectionChangedEventHandler(FilterDescriptors_CollectionChanged);

````
````VB.NET
AddHandler Me.RadGridView1.FilterDescriptors.CollectionChanged, AddressOf FilterDescriptors_CollectionChanged

````

{{endregion}} 

{{source=..\SamplesCS\GridView\Filtering\FilteringEvents.cs region=collectionChanged1}} 
{{source=..\SamplesVB\GridView\Filtering\FilteringEvents.vb region=collectionChanged1}} 

````C#
void FilterDescriptors_CollectionChanged(object sender, Telerik.WinControls.Data.NotifyCollectionChangedEventArgs e)
{
    
}

````
````VB.NET
Private Sub FilterDescriptors_CollectionChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.Data.NotifyCollectionChangedEventArgs)
    Throw New NotImplementedException
End Sub

````

{{endregion}} 

The arguments of this event provide the same data as the __FilterChanged__ event.
        
# See Also
* [Basic Filtering]({%slug winforms/gridview/filtering/basic-filtering%})

* [Customizing composite filter dialog]({%slug winforms/gridview/filtering/composite-filter-dialog%})

* [Custom Filtering]({%slug winforms/gridview/filtering/custom-filtering%})

* [Excel-like filtering]({%slug winforms/gridview/filtering/excel-like-filtering%})

* [FilterExpressionChanged Event]({%slug winforms/gridview/filtering/filterexpressionchanged-event%})

* [Filtering Row]({%slug winforms/gridview/filtering/filtering-row%})

* [Put a filter cell into edit mode programmatically]({%slug winforms/gridview/filtering/put-a-filter-cell-into-edit-mode-programmatically%})

* [Setting Filters Programmatically (composite descriptors)]({%slug winforms/gridview/filtering/setting-filters-programmatically-(composite-descriptors)%})


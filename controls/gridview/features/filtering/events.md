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

<snippet id='gridview-filteringevents-events1-cs' />
<snippet id='gridview-filteringevents-events1-vb' />

From the event arguments of both events you can access the following data:

* __Action:__ an enumeration with values: *Add*, *Remove*, *ItemChanged* and *Reset*. The __Action__ property notifies if a __FilterDescriptor__ is *added*, *removed*, *modified* or the __FilterDescriptors__ collection is *cleared*.

* __NewItems:__ List of added, edited or removed __FilterDescriptors__. For each __FilterDescriptor__ you can get its *PropertyName*, *Operator*, *Value* and *Expression*.

You are also able to cancel the filtering operation by setting the __Cancel__ property to *True*.

<snippet id='gridview-filteringevents-cancelfilteringevent-cs' />
<snippet id='gridview-filteringevents-cancelfilteringevent-vb' />

Since the __FilterDescriptors__ collection implements the __INotifyCollectionChanged__ interface, you can use its __CollectionChanged__ event:

<snippet id='gridview-filteringevents-collectionchanged-cs' />
<snippet id='gridview-filteringevents-collectionchanged-vb' />
<snippet id='gridview-filteringevents-collectionchanged1-cs' />
<snippet id='gridview-filteringevents-collectionchanged1-vb' />

The arguments of this event provide the same data as the __FilterChanged__ event.
        
## See Also
* [Basic Filtering]({%slug winforms/gridview/filtering/basic-filtering%})

* [Customizing composite filter dialog]({%slug winforms/gridview/filtering/composite-filter-dialog%})

* [Custom Filtering]({%slug winforms/gridview/filtering/custom-filtering%})

* [Excel-like filtering]({%slug winforms/gridview/filtering/excel-like-filtering%})

* [FilterExpressionChanged Event]({%slug winforms/gridview/filtering/filterexpressionchanged-event%})

* [Filtering Row]({%slug winforms/gridview/filtering/filtering-row%})

* [Put a filter cell into edit mode programmatically]({%slug winforms/gridview/filtering/put-a-filter-cell-into-edit-mode-programmatically%})

* [Setting Filters Programmatically (composite descriptors)]({%slug winforms/gridview/filtering/setting-filters-programmatically-(composite-descriptors)%})


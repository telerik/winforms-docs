---
title: Events
page_title: Events
description: Events
slug: gridview-filtering-events
tags: events
published: True
position: 7
---

# Events



## 

There are two events that are raised  when the data in the RadGridView is filtered. The first one is the __FilterChanging__ event
          and it is raised before the data is filtered. The second one is the __FilterChanged__ event which is raised after
          the data is filtered.
        

#### __[C#]__

{{source=..\SamplesCS\GridView\Filtering\Filtering Events.cs region=events}}
	            radGridView1.FilterChanging += new Telerik.WinControls.UI.GridViewCollectionChangingEventHandler(radGridView1_FilterChanging);
	            radGridView1.FilterChanged += new Telerik.WinControls.UI.GridViewCollectionChangedEventHandler(radGridView1_FilterChanged);
	{{endregion}}



#### __[C#]__

{{source=..\SamplesCS\GridView\Filtering\Filtering Events.cs region=events1}}
	        void radGridView1_FilterChanged(object sender, Telerik.WinControls.UI.GridViewCollectionChangedEventArgs e)
	        {
	            
	        }
	
	        void radGridView1_FilterChanging(object sender, Telerik.WinControls.UI.GridViewCollectionChangingEventArgs e)
	        {
	
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\GridView\Filtering\Filtering Events.vb region=events}}
	    Private Sub RadGridView1_FilterChanging(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangingEventArgs) Handles RadGridView1.FilterChanging
	
	    End Sub
	
	    Private Sub RadGridView1_FilterChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangedEventArgs) Handles RadGridView1.FilterChanged
	
	    End Sub
	{{endregion}}



From the event arguments of both events you can access the following data:

* __Action__ – an enumeration with values: *Add*, *Remove*,
              *ItemChanged* and *Reset*. The __Action__ property notifies
              if a __FilterDescriptor__ is *added*, *removed*,
              *modified* or the __FilterDescriptors__ collection is *cleared*.
            

* __NewItems__ - List of added, edited or removed __FilterDescriptors__.
              For each __FilterDescriptor__ you can get its *PropertyName*, *Operator*,
              *Value* and *Expression*.
            

You are also able to cancel the filtering operation by setting the __Cancel__ property to *True*.
        

#### __[C#]__

{{source=..\SamplesCS\GridView\Filtering\Filtering Events.cs region=cancelFilteringEvent}}
	        void radGridView1_FilterChanging1(object sender, Telerik.WinControls.UI.GridViewCollectionChangingEventArgs e)
	        {
	            e.Cancel = true;
	        } 
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\GridView\Filtering\Filtering Events.vb region=cancelFilteringEvent}}
	    Private Sub RadGridView1_FilterChanging1(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangingEventArgs) Handles RadGridView1.FilterChanging
	        e.Cancel = True
	    End Sub
	{{endregion}}



Since the __FilterDescriptors__ collection implements the __INotifyCollectionChanged__ interface,
          you can use its __CollectionChanged__ event:
        

#### __[C#]__

{{source=..\SamplesCS\GridView\Filtering\Filtering Events.cs region=collectionChanged}}
	            this.radGridView1.FilterDescriptors.CollectionChanged += new Telerik.WinControls.Data.NotifyCollectionChangedEventHandler(FilterDescriptors_CollectionChanged);
	{{endregion}}



#### __[C#]__

{{source=..\SamplesCS\GridView\Filtering\Filtering Events.cs region=collectionChanged1}}
	        void FilterDescriptors_CollectionChanged(object sender, Telerik.WinControls.Data.NotifyCollectionChangedEventArgs e)
	        {
	            
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\GridView\Filtering\Filtering Events.vb region=collectionChanged}}
	        AddHandler Me.RadGridView1.FilterDescriptors.CollectionChanged, AddressOf FilterDescriptors_CollectionChanged
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\GridView\Filtering\Filtering Events.vb region=collectionChanged1}}
	    Private Sub FilterDescriptors_CollectionChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.Data.NotifyCollectionChangedEventArgs)
	        Throw New NotImplementedException
	    End Sub
	{{endregion}}



The arguments of this event provide the same data as the __FilterChanged__ event.
        

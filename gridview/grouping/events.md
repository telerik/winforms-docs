---
title: Events
page_title: Events
description: Events
slug: gridview-grouping-events
tags: events
published: True
position: 7
---

# Events



## 

There are two events that are raised, when the data in the RadGridView is grouped. The first one is the __GroupByChanging__ 
        	event which is raised before the data is grouped and he second one is the __GroupByChanged__ event raised after the data is grouped.
        

#### __[C#]__

{{region subscribeToEvents}}
	            radGridView1.GroupByChanging += new Telerik.WinControls.UI.GridViewCollectionChangingEventHandler(radGridView1_GroupByChanging);
	            radGridView1.GroupByChanged += new Telerik.WinControls.UI.GridViewCollectionChangedEventHandler(radGridView1_GroupByChanged);
	{{endregion}}



#### __[C#]__

{{region eventHandlers}}
	        void radGridView1_GroupByChanged(object sender, Telerik.WinControls.UI.GridViewCollectionChangedEventArgs e)
	        {
	            
	        }
	
	        void radGridView1_GroupByChanging(object sender, Telerik.WinControls.UI.GridViewCollectionChangingEventArgs e)
	        {
	
	        }
	{{endregion}}



#### __[VB.NET]__

{{region eventHandlers}}
	    Private Sub RadGridView1_GroupByChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangedEventArgs) Handles RadGridView1.GroupByChanged
	
	    End Sub
	
	    Private Sub RadGridView1_GroupByChanging(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangingEventArgs) Handles RadGridView1.GroupByChanging
	
	    End Sub
	{{endregion}}



From the event arguments of both events you can access the following data:

* __Action__ - an enumeration with values: *Add*, *Remove*, 
		  		*ItemChanged* and *Reset*.The __Action__ property notifies if
		  		a __GroupDescriptor__ is added, removed, modified or the __GroupDescriptors__ collection is cleared.
		  

* __NewItems__ - a List of *added*, *edited* or 
		  	*removed*__GroupDescriptors__. For each __GroupDescriptor__ 
		  	you can get its __GroupNames__, __Format__, __Aggregates__ and __Expression__.
		 

You are also able to cancel the grouping operation by setting the __Cancel__ property to *True*

#### __[C#]__

{{region cancelGrouping}}
	        void radGridView1_GroupByChanging1(object sender, Telerik.WinControls.UI.GridViewCollectionChangingEventArgs e)
	        {
	            e.Cancel = true;
	        }
	{{endregion}}



#### __[VB.NET]__

{{region cancelGrouping}}
	    Private Sub RadGridView1_GroupByChanging1(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangingEventArgs) Handles RadGridView1.GroupByChanging
	        e.Cancel = True
	    End Sub
	{{endregion}}



Since the __GroupDescriptors__ collection implements the __INotifyPropertyChanged__ interface, 
			you can use its __CollectionChanged__ event:
		

#### __[C#]__

{{region subscribeToCollectionChanged}}
	            radGridView1.GroupDescriptors.CollectionChanged += new Telerik.WinControls.Data.NotifyCollectionChangedEventHandler(GroupDescriptors_CollectionChanged);
	{{endregion}}



#### __[C#]__

{{region CollectionChangedHandler}}
	        void GroupDescriptors_CollectionChanged(object sender, Telerik.WinControls.Data.NotifyCollectionChangedEventArgs e)
	        {
	
	        }
	{{endregion}}



#### __[VB.NET]__

{{region subscribeToCollectionChanged}}
	        AddHandler Me.RadGridView1.GroupDescriptors.CollectionChanged, AddressOf GroupDescriptors_CollectionChanged
	{{endregion}}



#### __[VB.NET]__

{{region CollectionChangedHandler}}
	    Private Sub GroupDescriptors_CollectionChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.Data.NotifyCollectionChangedEventArgs)
	
	    End Sub
	{{endregion}}



The arguments of this event provide the same data as the __GroupByChanged__ event.

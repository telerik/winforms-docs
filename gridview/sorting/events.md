---
title: Events
page_title: Events
description: Events
slug: gridview-sorting-events
tags: events
published: True
position: 4
---

# Events



## 

There are two events that are raised when the data in the RadGridView is sorted. The first one is the __SortChanging__ event which
        	is raised before the data is sorted. The second one is the __SortChanged__ event and it is raised after the data is sorted
        

#### __[C#]__

{{region SortingEvents}}
	            radGridView1.SortChanged += new Telerik.WinControls.UI.GridViewCollectionChangedEventHandler(radGridView1_SortChanged);
	            radGridView1.SortChanging += new Telerik.WinControls.UI.GridViewCollectionChangingEventHandler(radGridView1_SortChanging);
	{{endregion}}



#### __[C#]__

{{region SortingEvents1}}
	        void radGridView1_SortChanging(object sender, Telerik.WinControls.UI.GridViewCollectionChangingEventArgs e)
	        {
	
	        }
	
	        void radGridView1_SortChanged(object sender, Telerik.WinControls.UI.GridViewCollectionChangedEventArgs e)
	        {
	
	        }
	{{endregion}}



#### __[VB.NET]__

{{region SortingEvents}}
	    Private Sub RadGridView1_SortChanging(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangingEventArgs) Handles RadGridView1.SortChanging
	
	    End Sub
	
	    Private Sub RadGridView1_SortChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangedEventArgs) Handles RadGridView1.SortChanged
	
	    End Sub
	{{endregion}}



From the event arguments of both events you can access the following data:

* __Action__ – an enumeration with values: *Add*, *Remove*, *ItemChanged* 
		  		and *Reset*The __Action__ property notifies if a __SortDescriptor__ is added, removed, modified or 
		    	the __SortDescriptors__ collection is cleared.
		    

* __NewItems__ - is a List of added, edited or removed __SortDescriptors__. For each __SortDescriptor__ you can
		  	get its __PropertyName__ and __Direction__

You are also able to cancel the sorting operation by setting the __Cancel__ property to *True*

#### __[C#]__

{{region CancelSorting}}
	        private void radGridView1_SortChanging1(object sender, GridViewCollectionChangingEventArgs e)
	        {
	            e.Cancel = true;
	        }
	{{endregion}}



#### __[VB.NET]__

{{region CancelSorting}}
	    Private Sub RadGridView1_SortChanging1(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCollectionChangingEventArgs) Handles RadGridView1.SortChanging
	        e.Cancel = True
	    End Sub
	{{endregion}}



Since the __SortDescriptors__ collection implements the __INotifyPropertyChanged__ interface, you can use its __CollectionChanged__ event:

#### __[C#]__

{{region CollectionChanged}}
	            this.radGridView1.SortDescriptors.CollectionChanged += new Telerik.WinControls.Data.NotifyCollectionChangedEventHandler(SortDescriptors_CollectionChanged);
	{{endregion}}



#### __[C#]__

{{region CollectionChanged1}}
	        void SortDescriptors_CollectionChanged(object sender, Telerik.WinControls.Data.NotifyCollectionChangedEventArgs e)
	        {
	            
	        }
	{{endregion}}



#### __[VB.NET]__

{{region CollectionChanged}}
	        AddHandler Me.RadGridView1.SortDescriptors.CollectionChanged, AddressOf SortDescriptors_CollectionChanged
	{{endregion}}



#### __[VB.NET]__

{{region CollectionChanged1}}
	    Private Sub SortDescriptors_CollectionChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.Data.NotifyCollectionChangedEventArgs)
	
	    End Sub
	{{endregion}}



The arguments of this event provide the same data as the __SortChanged__ event.

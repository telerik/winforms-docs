---
title: Filtering
page_title: Filtering
description: Filtering
slug: listview-features-filtering
tags: filtering
published: True
position: 1
---

# Filtering



## 

RadListView allows filtering operations in all views. To enable filtering operations use
        	the __EnableFiltering__ property of the control:
        

#### __[C#] Enable filtering__

{{source=..\SamplesCS\ListView\Features\ListViewFiltering.cs region=EnableFiltering}}
	            radListView1.EnableFiltering = true;
	{{endregion}}



#### __[VB.NET] Enable filtering__

{{source=..\SamplesVB\ListView\Features\ListViewFiltering.vb region=EnableFiltering}}
	        RadListView1.EnableFiltering = True
	{{endregion}}



Once the filtering is enabled, we have to create a new __FilterDescriptor__ 
			and assign its __PropertyName__, __FilterOperator__ 
			and __SearchCriteria__. First, let’s filter the items by their value and look
			for items starting with *“Local”*.
		

#### __[C#] Filter by value__

{{source=..\SamplesCS\ListView\Features\ListViewFiltering.cs region=FilterDescriptor}}
	            FilterDescriptor valueFilter = new FilterDescriptor("Value", FilterOperator.StartsWith, "Local");
	            radListView1.FilterDescriptors.Add(valueFilter);
	{{endregion}}



#### __[VB.NET] Filter by value__

{{source=..\SamplesVB\ListView\Features\ListViewFiltering.vb region=FilterDescriptor}}
	        Dim valueFilter As New FilterDescriptor("Value", FilterOperator.StartsWith, "Local")
	        RadListView1.FilterDescriptors.Add(valueFilter)
	{{endregion}}



![listview-features-filtering 001](images/listview-features-filtering001.png)

When a column name is specified as __PropertyName__ of the filter descriptor,
        	RadListView will filter by the values of the specified column:
        

#### __[C#] Filter by type__

{{source=..\SamplesCS\ListView\Features\ListViewFiltering.cs region=FilterDescriptor1}}
	            FilterDescriptor typeFilter = new FilterDescriptor("Type", FilterOperator.Contains, "Disk");
	            radListView1.FilterDescriptors.Add(typeFilter);
	{{endregion}}



#### __[VB.NET] Filter by type__

{{source=..\SamplesVB\ListView\Features\ListViewFiltering.vb region=FilterDescriptor1}}
	        Dim typeFilter As New FilterDescriptor("Type", FilterOperator.Contains, "Disk")
	        RadListView1.FilterDescriptors.Add(typeFilter)
	{{endregion}}



![listview-features-filtering 002](images/listview-features-filtering002.png)

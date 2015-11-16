---
title: Filtering
page_title: Filtering | UI for WinForms Documentation
description: Filtering
slug: winforms/listview/features/filtering
tags: filtering
published: True
position: 2
---

# Filtering



## 

RadListView allows filtering operations in all views. To enable filtering operations use the __EnableFiltering__ property of the control: 

#### Enable filtering

{{source=..\SamplesCS\ListView\Features\ListViewFiltering.cs region=EnableFiltering}} 
{{source=..\SamplesVB\ListView\Features\ListViewFiltering.vb region=EnableFiltering}} 

````C#
radListView1.EnableFiltering = true;

````
````VB.NET
RadListView1.EnableFiltering = True

````

{{endregion}} 

Once the filtering is enabled, we have to create a new __FilterDescriptor__ and assign its __PropertyName__, __FilterOperator__ and __SearchCriteria__. First, let’s filter the items by their value and look for items starting with *“Local”*.

#### Filter by value

{{source=..\SamplesCS\ListView\Features\ListViewFiltering.cs region=FilterDescriptor}} 
{{source=..\SamplesVB\ListView\Features\ListViewFiltering.vb region=FilterDescriptor}} 

````C#
FilterDescriptor valueFilter = new FilterDescriptor("Value", FilterOperator.StartsWith, "Local");
radListView1.FilterDescriptors.Add(valueFilter);

````
````VB.NET
Dim valueFilter As New FilterDescriptor("Value", FilterOperator.StartsWith, "Local")
RadListView1.FilterDescriptors.Add(valueFilter)

````

{{endregion}} 

![listview-features-filtering 001](images/listview-features-filtering001.png)

When a column name is specified as __PropertyName__ of the filter descriptor, RadListView will filter by the values of the specified column:

#### Filter by type

{{source=..\SamplesCS\ListView\Features\ListViewFiltering.cs region=FilterDescriptor1}} 
{{source=..\SamplesVB\ListView\Features\ListViewFiltering.vb region=FilterDescriptor1}} 

````C#
FilterDescriptor typeFilter = new FilterDescriptor("Type", FilterOperator.Contains, "Disk");
radListView1.FilterDescriptors.Add(typeFilter);

````
````VB.NET
Dim typeFilter As New FilterDescriptor("Type", FilterOperator.Contains, "Disk")
RadListView1.FilterDescriptors.Add(typeFilter)

````

{{endregion}} 

![listview-features-filtering 002](images/listview-features-filtering002.png)

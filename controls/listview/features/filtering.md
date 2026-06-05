---
title: Filtering
page_title: Filtering - WinForms ListView Control
description: WinForms ListView allows filtering operations in all views.
slug: winforms/listview/features/filtering
tags: filtering
published: True
position: 3
previous_url: listview-features-filtering
---

# Filtering

__RadListView__ allows filtering operations in all views. To enable filtering operations use the __EnableFiltering__ property of the control: 

#### Enable Filtering

<snippet id='listview-listviewfiltering-enablefiltering-cs' />
<snippet id='listview-listviewfiltering-enablefiltering-vb' />



Once the filtering is enabled, we have to create a new __FilterDescriptor__ and assign its __PropertyName__, __FilterOperator__ and __SearchCriteria__. First, let’s filter the items by their value and look for items starting with *“Local”*.

#### Filter by Value

<snippet id='listview-listviewfiltering-filterdescriptor-cs' />
<snippet id='listview-listviewfiltering-filterdescriptor-vb' />



|Before Filtering|After Filtering|
|----|----|
|![WinForms RadListView Before Filtering](images/listview-features-filtering001.png)|![WinForms RadListView After Filtering](images/listview-features-filtering003.png)|
 
When a column name is specified as __PropertyName__ of the filter descriptor, **RadListView** will filter by the values of the specified column:

#### Filter by type

<snippet id='listview-listviewfiltering-filterdescriptor1-cs' />
<snippet id='listview-listviewfiltering-filterdescriptor1-vb' />



|Before|After|
|----|----|
|![WinForms RadListView Before](images/listview-features-filtering002.png)|![WinForms RadListView After](images/listview-features-filtering004.png)|

## Custom Filtering

**RadListView** provides a flexible mechanism for defining a custom filtering logic by using a custom filter predicate. The following example demonstartes how to apply a FilterPredicate in order to filter all items which contain "C":

#### Custom FilterPredicate 

<snippet id='listview-listviewfiltering-customfilterpredicate-cs' />
<snippet id='listview-listviewfiltering-customfilterpredicate-vb' />



#### Apply the custom FilterPredicate 

<snippet id='listview-listviewfiltering-applycustomfilterpredicate-cs' />
<snippet id='listview-listviewfiltering-applycustomfilterpredicate-vb' />



>caption Figure 3: Custom Filtering

![WinForms RadListView Custom Filtering](images/listview-features-filtering005.png)

# See Also

* [Grouping]({%slug winforms/listview/features/grouping%})	
* [Sorting]({%slug winforms/listview/features/sorting%})


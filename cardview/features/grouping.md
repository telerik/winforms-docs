---
title: Grouping
page_title: Grouping | UI for WinForms Documentation
description: Grouping
slug: winforms/cardview/features/grouping
tags: grouping
published: True
position: 1
---

# Grouping

__RadCardView__ allows grouping of its __CardViewItems__ and it can be enabled by using the __EnableFiltering__ property of the control. An example with custom grouping is demonstrated in the __Populating Data Programatically__ section of the  [Unbound Mode](%slug winforms/cardview/populating-with-data/unbound-mode%) article.

#### Enable Grouping

{{source=..\SamplesCS\CardView\CardViewFeatures.cs region=EnableGrouping}} 
{{source=..\SamplesVB\CardView\CardViewFeatures.vb region=EnableGrouping}} 

````C#
this.radCardView1.EnableGrouping = true;
this.radCardView1.ShowGroups = true;

````
````VB.NET
Me.RadCardView1.EnableGrouping = True
Me.RadCardView1.ShowGroups = True

````

{{endregion}} 

Once the filtering is enabled, we have to create a new __FilterDescriptor__ and assign its __PropertyName__, __FilterOperator__ and __SearchCriteria__. First, let’s filter the items by their value and look for items starting with *“Local”*.

#### Group by Column

{{source=..\SamplesCS\CardView\CardViewFeatures.cs region=GroupDescriptor}} 
{{source=..\SamplesVB\CardView\CardViewFeatures.vb region=GroupDescriptor}} 

````C#
GroupDescriptor groupByAddress = new GroupDescriptor(new SortDescriptor[] 
                                                    {
                                                      new SortDescriptor("Address", ListSortDirection.Descending), 
                                                    });
this.radCardView1.GroupDescriptors.Add(groupByAddress);

````
````VB.NET
Dim groupByAddress As New GroupDescriptor(New SortDescriptor() {New SortDescriptor("Address", ListSortDirection.Descending)})
Me.RadCardView1.GroupDescriptors.Add(groupByAddress)

````

{{endregion}}

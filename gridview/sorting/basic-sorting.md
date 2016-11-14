---
title: Basic Sorting
page_title: Basic Sorting | RadGridView
description: This article shows how you can use the built-in sorting functionality. 
slug: winforms/gridview/sorting/basic-sorting
tags: basic,sorting
published: True
position: 0
previous_url: gridview-sorting-basic-sorting
---

# Basic Sorting

RadGridView supports data sorting. Set __EnableSorting__ or __GridViewTemplate.EnableSorting__ properties to *true* which will enable the *user sorting* feature:

#### Enabling the user sorting

{{source=..\SamplesCS\GridView\Sorting\Sorting.cs region=enableSorting}} 
{{source=..\SamplesVB\GridView\Sorting\Sorting.vb region=enableSorting}} 

````C#
this.radGridView1.MasterTemplate.EnableSorting = true;

````
````VB.NET
Me.RadGridView1.MasterTemplate.EnableSorting = True

````

{{endregion}} 

When sorting is enabled, the user can click on the column headers to control the sorting order. RadGridView supports three orders: __Ascending__, __Descending__, and __None__ (no sort).

![gridview-sorting-basic-sorting 001](images/gridview-sorting-basic-sorting001.png)

*ShipCity column is sorted in descending order while the Freight column is sorted in ascending order*

See [End-user Capabilities Sorting]({%slug winforms/gridview/end-user-capabilities/sorting%}) topic about more information on the sorting behavior of RadGridView from the users' perspective.
# See Also
* [Custom Sorting]({[%slug winforms/gridview/sorting/custom-sorting%]}

* [Events]({[%slug winforms/gridview/sorting/events%]}

* [Setting Sorting Programmatically]({[%slug winforms/gridview/sorting/setting-sorting-programmatically%]}

* [Sorting Expressions]({[%slug winforms/gridview/sorting/sorting-expressions%]}


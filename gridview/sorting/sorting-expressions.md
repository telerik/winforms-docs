---
title: Sorting Expressions
page_title: Sorting Expressions | RadGridView
description: Sort RadgridView by directly altering the sort expression in the code.
slug: winforms/gridview/sorting/sorting-expressions
tags: sorting,expressions
published: True
position: 2
previous_url: gridview-sorting-sorting-expressions
---

# Sorting Expressions

## Overview

The __SortDescriptors__ collection exposes the __Expression__ property which is used to create flexible sorting conditions. Expression is a string that contains the column name followed by "ASC" (ascending) or "DESC" (descending). The columns are sorted ascending by default. Multiple columns can be separated by commas.

## Creating expressions

Creating a simple expression:

#### Creating simple sorting expression

{{source=..\SamplesCS\GridView\Sorting\Sorting.cs region=creatingSimpleSortingExpression}} 
{{source=..\SamplesVB\GridView\Sorting\Sorting.vb region=creatingSimpleSortingExpression}} 

````C#
this.radGridView1.SortDescriptors.Expression = "ShipName ASC";

````
````VB.NET
Me.RadGridView1.SortDescriptors.Expression = "ShipName ASC"

````

{{endregion}} 

Sorting by two columns using expressions:

#### Sorting by two columns, using sorting expression

{{source=..\SamplesCS\GridView\Sorting\Sorting.cs region=sortingByTwoColumnsUsingExpression}} 
{{source=..\SamplesVB\GridView\Sorting\Sorting.vb region=sortingByTwoColumnsUsingExpression}} 

````C#
this.radGridView1.SortDescriptors.Expression = "ShipName ASC, Freight DESC";

````
````VB.NET
Me.RadGridView1.SortDescriptors.Expression = "ShipName ASC, Freight DESC"

````

{{endregion}} 
# See Also
* [Basic Sorting]({%slug winforms/gridview/sorting/basic-sorting%})

* [Custom Sorting]({%slug winforms/gridview/sorting/custom-sorting%})

* [Events]({%slug winforms/gridview/sorting/events%})

* [Setting Sorting Programmatically]({%slug winforms/gridview/sorting/setting-sorting-programmatically%})


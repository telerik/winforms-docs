---
title: Sorting Expressions
page_title: Sorting Expressions
description: Sorting Expressions
slug: gridview-sorting-sorting-expressions
tags: sorting,expressions
published: True
position: 2
---

# Sorting Expressions





## Overview

The __SortDescriptors__ Collection exposes the __Expression__ property which is used to create
        flexible sorting conditions.
		Expression is a string that contains the column name followed by "ASC" (ascending) or "DESC" (descending). 
    Columns are sorted ascending by default. Multiple columns can be separated by commas.

## Creating expressions

Creating a simple expression:

#### __[C#] Creating simple sorting expression__

{{source=..\SamplesCS\GridView\Sorting\Sorting.cs region=creatingSimpleSortingExpression}}
	            this.radGridView1.SortDescriptors.Expression = "ShipName ASC";
	{{endregion}}



#### __[VB.NET] Creating simple sorting expression__

{{source=..\SamplesVB\GridView\Sorting\Sorting.vb region=creatingSimpleSortingExpression}}
	        Me.RadGridView1.SortDescriptors.Expression = "ShipName ASC"
	{{endregion}}



Sorting by two columns using expressions:

#### __[C#] Sorting by two columns, using sorting expression__

{{source=..\SamplesCS\GridView\Sorting\Sorting.cs region=sortingByTwoColumnsUsingExpression}}
	            this.radGridView1.SortDescriptors.Expression = "ShipName ASC, Freight DESC";
	{{endregion}}



#### __[VB.NET] Sorting by two columns, using sorting expression__

{{source=..\SamplesVB\GridView\Sorting\Sorting.vb region=sortingByTwoColumnsUsingExpression}}
	        Me.RadGridView1.SortDescriptors.Expression = "ShipName ASC, Freight DESC"
	{{endregion}}



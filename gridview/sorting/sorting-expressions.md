---
title: Sorting Expressions
page_title: Sorting Expressions | UI for WinForms Documentation
description: Sorting Expressions
slug: winforms/gridview/sorting/sorting-expressions
tags: sorting,expressions
published: True
position: 2
---

# Sorting Expressions

## Overview

The __SortDescriptors__ Collection exposes the __Expression__ property which is used to create flexible sorting conditions. Expression is a string that contains the column name followed by "ASC" (ascending) or "DESC" (descending). Columns are sorted ascending by default. Multiple columns can be separated by commas.

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
        '
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
        '
````

{{endregion}} 
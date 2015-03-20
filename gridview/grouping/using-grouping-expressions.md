---
title: Using Grouping Expressions
page_title: Using Grouping Expressions
description: Using Grouping Expressions
slug: gridview-grouping-using-grouping-expressions
tags: using,grouping,expressions
published: True
position: 2
---

# Using Grouping Expressions



## Overview

The __GroupDescriptorCollection__ contains __Expression__ property which is used to create flexible grouping conditions.
		Expression is a string that contains the column name followed by "ASC" (ascending) or "DESC" (descending). Columns are sorted ascending by default. Multiple columns can be separated by commas. Multiple grouping descriptors can be separated by semi column symbol.



## Creating expressions

Creating a simple expression:

#### __[C#] Creating simple grouping expression__

{{region creatingSimpleExpression}}
	            this.radGridView1.GroupDescriptors.Expression = "Country ASC";
	{{endregion}}



#### __[VB.NET] Creating simple grouping expression__

{{region creatingSimpleExpression}}
	        Me.RadGridView1.GroupDescriptors.Expression = "Country ASC"
	{{endregion}}





Grouping by two properties using an expression:

#### __[C#] Grouping by two columns, by using an expression__

{{region groupingByToColumnsUsingExpression}}
	            this.radGridView1.GroupDescriptors.Expression = "Country, ContactTitle DESC";
	{{endregion}}



#### __[VB.NET] Grouping by two columns, by using an expression__

{{region groupingByToColumnsUsingExpression}}
	        Me.RadGridView1.GroupDescriptors.Expression = "Country, ContactTitle DESC"
	{{endregion}}





Creating groups on two levels using an expression:

#### __[C#] Creating group on two levels, by using an expression__

{{region creatingGroupsOnTwoLevelsUsingExpression}}
	            this.radGridView1.GroupDescriptors.Expression = "Country ASC; ContactTitle DESC";
	{{endregion}}



#### __[VB.NET] Creating group on two levels, by using an expression__

{{region creatingGroupsOnTwoLevelsUsingExpression}}
	        Me.RadGridView1.GroupDescriptors.Expression = "Country ASC; ContactTitle DESC"
	{{endregion}}





Grouping by two properties on the first level and by one on the second:

#### __[C#] Complex grouping__

{{region complexGrouping}}
	            this.radGridView1.GroupDescriptors.Expression = "Country, ContactTitle ASC; City DESC";
	{{endregion}}



#### __[VB.NET] Complex grouping__

{{region complexGrouping}}
	        Me.RadGridView1.GroupDescriptors.Expression = "Country, ContactTitle ASC; City DESC"
	{{endregion}}



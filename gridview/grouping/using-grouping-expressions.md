---
title: Using Grouping Expressions
page_title: Using Grouping Expressions | UI for WinForms Documentation
description: Using Grouping Expressions
slug: winforms/gridview/grouping/using-grouping-expressions
tags: using,grouping,expressions
published: True
position: 2
---

# Using Grouping Expressions



## Overview

The __GroupDescriptorCollection__ contains __Expression__ property which is used to create flexible grouping conditions.
		Expression is a string that contains the column name followed by "ASC" (ascending) or "DESC" (descending). Columns are sorted ascending by default. Multiple columns can be separated by commas. Multiple grouping descriptors can be separated by semi column symbol.



## Creating expressions

Creating a simple expression:#_[C#] Creating simple grouping expression_

	



{{source=..\SamplesCS\GridView\Grouping\Grouping.cs region=creatingSimpleExpression}} 
{{source=..\SamplesVB\GridView\Grouping\Grouping.vb region=creatingSimpleExpression}} 

````C#
            this.radGridView1.GroupDescriptors.Expression = "Country ASC";
````
````VB.NET
        Me.RadGridView1.GroupDescriptors.Expression = "Country ASC"
        '
````

{{endregion}} 






Grouping by two properties using an expression:#_[C#] Grouping by two columns, by using an expression_

	



{{source=..\SamplesCS\GridView\Grouping\Grouping.cs region=groupingByToColumnsUsingExpression}} 
{{source=..\SamplesVB\GridView\Grouping\Grouping.vb region=groupingByToColumnsUsingExpression}} 

````C#
            this.radGridView1.GroupDescriptors.Expression = "Country, ContactTitle DESC";
````
````VB.NET
        Me.RadGridView1.GroupDescriptors.Expression = "Country, ContactTitle DESC"
        '
````

{{endregion}} 






Creating groups on two levels using an expression:#_[C#] Creating group on two levels, by using an expression_

	



{{source=..\SamplesCS\GridView\Grouping\Grouping.cs region=creatingGroupsOnTwoLevelsUsingExpression}} 
{{source=..\SamplesVB\GridView\Grouping\Grouping.vb region=creatingGroupsOnTwoLevelsUsingExpression}} 

````C#
            this.radGridView1.GroupDescriptors.Expression = "Country ASC; ContactTitle DESC";
````
````VB.NET
        Me.RadGridView1.GroupDescriptors.Expression = "Country ASC; ContactTitle DESC"
        '
````

{{endregion}} 






Grouping by two properties on the first level and by one on the second:#_[C#] Complex grouping_

	



{{source=..\SamplesCS\GridView\Grouping\Grouping.cs region=complexGrouping}} 
{{source=..\SamplesVB\GridView\Grouping\Grouping.vb region=complexGrouping}} 

````C#
            this.radGridView1.GroupDescriptors.Expression = "Country, ContactTitle ASC; City DESC";
````
````VB.NET
        Me.RadGridView1.GroupDescriptors.Expression = "Country, ContactTitle ASC; City DESC"
        '
````

{{endregion}} 




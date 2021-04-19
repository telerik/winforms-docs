---
title: Using Grouping Expressions
page_title: Using Grouping Expressions - WinForms GridView Control
description: WinForms GridView offers the Expression property to customize the grouping and group by multiple columns.
slug: winforms/gridview/grouping/using-grouping-expressions
tags: using,grouping,expressions
published: True
position: 2
previous_url: gridview-grouping-using-grouping-expressions
---

# Using Grouping Expressions

## Overview

The __GroupDescriptorCollection__ contains __Expression__ property which is used to create flexible grouping conditions. Expression is a string that contains the column name followed by "ASC" (ascending) or "DESC" (descending). Columns are sorted ascending by default. Multiple columns can be separated by commas. Multiple grouping descriptors can be separated by semi column symbol.

## Creating expressions examples


#### Creating simple grouping expression

{{source=..\SamplesCS\GridView\Grouping\Grouping.cs region=creatingSimpleExpression}} 
{{source=..\SamplesVB\GridView\Grouping\Grouping.vb region=creatingSimpleExpression}} 

````C#
this.radGridView1.GroupDescriptors.Expression = "Country ASC";

````
````VB.NET
Me.RadGridView1.GroupDescriptors.Expression = "Country ASC"

````

{{endregion}} 



#### Grouping by two columns, by using an expression

{{source=..\SamplesCS\GridView\Grouping\Grouping.cs region=groupingByToColumnsUsingExpression}} 
{{source=..\SamplesVB\GridView\Grouping\Grouping.vb region=groupingByToColumnsUsingExpression}} 

````C#
this.radGridView1.GroupDescriptors.Expression = "Country, ContactTitle DESC";

````
````VB.NET
Me.RadGridView1.GroupDescriptors.Expression = "Country, ContactTitle DESC"

````

{{endregion}}

#### Creating group on two levels, by using an expression

{{source=..\SamplesCS\GridView\Grouping\Grouping.cs region=creatingGroupsOnTwoLevelsUsingExpression}} 
{{source=..\SamplesVB\GridView\Grouping\Grouping.vb region=creatingGroupsOnTwoLevelsUsingExpression}} 

````C#
this.radGridView1.GroupDescriptors.Expression = "Country ASC; ContactTitle DESC";

````
````VB.NET
Me.RadGridView1.GroupDescriptors.Expression = "Country ASC; ContactTitle DESC"

````

{{endregion}}

#### Complex grouping

{{source=..\SamplesCS\GridView\Grouping\Grouping.cs region=complexGrouping}} 
{{source=..\SamplesVB\GridView\Grouping\Grouping.vb region=complexGrouping}} 

````C#
this.radGridView1.GroupDescriptors.Expression = "Country, ContactTitle ASC; City DESC";

````
````VB.NET
Me.RadGridView1.GroupDescriptors.Expression = "Country, ContactTitle ASC; City DESC"

````

{{endregion}} 



# See Also
* [Basic Grouping]({%slug winforms/gridview/grouping/basic-grouping%})

* [Custom Grouping]({%slug winforms/gridview/grouping/custom-grouping%})

* [Events]({%slug winforms/gridview/grouping/events%})

* [Formatting Group Header Row]({%slug winforms/gridview/grouping/formatting-group-header-row%})

* [Group Aggregates]({%slug winforms/gridview/grouping/group-aggregates%})

* [Groups Collection]({%slug winforms/gridview/grouping/groups-collection%})

* [Setting Groups Programmatically]({%slug winforms/gridview/grouping/setting-groups-programmatically%})

* [Sorting group rows]({%slug winforms/gridview/grouping/sorting-group-rows%})


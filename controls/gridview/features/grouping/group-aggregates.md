---
title: Group Aggregates
page_title: Group Aggregates - WinForms GridView Control
description: Learn how to format the text in the group row in WinForms GridView.
slug: winforms/gridview/grouping/group-aggregates
tags: group,aggregates
published: True
position: 6
previous_url: gridview-grouping-group-aggregates
---

# Group Aggregates

The text of the group header row is a formatted string with the following parameters:

* __{0}__ – __Property name__ –the name of the RadGridView column by which the grouping is performed;

* __{1}__ – __Group value__

* __{2}, {3} …__ - __Aggregates values__

You can define the format of the group header row by using the __GroupDescriptor Format__ property. Its default value is __“{0}: {1}”__. The following two examples demonstrate how you can use the group aggregates. Full list of the available expressions can be found here:[http://msdn.microsoft.com/en-us/library/system.data.datacolumn.expression.aspx](http://msdn.microsoft.com/en-us/library/system.data.datacolumn.expression.aspx)

#### Example 1: Adding the Count Aggregate

<snippet id='gridview-groupaggregates-groupaggregates-cs' />
<snippet id='gridview-groupaggregates-groupaggregates-vb' />

![WinForms RadGridView Adding the Count Aggregate](images/gridview-group-aggregates001.png)


#### Example 2: Adding and Formatting Several Aggregates
 
<snippet id='gridview-groupaggregates1-groupaggregates1-cs' />
<snippet id='gridview-groupaggregates1-groupaggregates1-vb' />

![WinForms RadGridView Adding and Formatting Several Aggregates](images/gridview-group-aggregates002.png)
# See Also
* [Basic Grouping]({%slug winforms/gridview/grouping/basic-grouping%})

* [Custom Grouping]({%slug winforms/gridview/grouping/custom-grouping%})

* [Events]({%slug winforms/gridview/grouping/events%})

* [Formatting Group Header Row]({%slug winforms/gridview/grouping/formatting-group-header-row%})

* [Groups Collection]({%slug winforms/gridview/grouping/groups-collection%})

* [Setting Groups Programmatically]({%slug winforms/gridview/grouping/setting-groups-programmatically%})

* [Sorting group rows]({%slug winforms/gridview/grouping/sorting-group-rows%})

* [Using Grouping Expressions]({%slug winforms/gridview/grouping/using-grouping-expressions%})


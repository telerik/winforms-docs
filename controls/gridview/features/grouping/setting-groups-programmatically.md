---
title: Setting Groups Programmatically
page_title: Setting Groups Programmatically - WinForms GridView Control
description: WinForms GridView offers the GroupDescriptors collection to manipulate the grouping at run time.
slug: winforms/gridview/grouping/setting-groups-programmatically
tags: setting,groups,programmatically
published: True
position: 1
previous_url: gridview-grouping-setting-groups-programmatically
---

# Setting Groups Programmatically

## Overview

**RadGridView** has a __GroupDescriptors__ property at the **GridViewTemplate** level which is exposed in **RadGridView** class for **MasterTemplate** instance. This collection allows you to use descriptors which define the grouping criteria and the group's sorting direction for the data that is bound to the **RadGridView**.

As this is a collection, you are able not only to add, but to remove or clear its entries as well. Adding descriptors to the collection makes the current view display the items sorted and divided into groups. 

## Using GroupDescriptors

#### Using simple group descriptor

<snippet id='gridview-grouping-usingsimplegroupdescriptor-cs' />
<snippet id='gridview-grouping-usingsimplegroupdescriptor-vb' />

![WinForms RadGridView GroupDescriptors](images/gridview-grouping-setting-groups-programmatically001.png)

The __GroupNames__ property defines the property, by which the data will be grouped. The __GroupNames__ is a __SortDescriptorCollection__ and defines group names for one grouping criteria.

**RadGridView** supports grouping using one or more property names. The following example demonstrates how you can group by two properties:

#### Grouping by more than one column name

<snippet id='gridview-grouping-groupingbymorethanonecolumnname-cs' />
<snippet id='gridview-grouping-groupingbymorethanonecolumnname-vb' />

![WinForms RadGridView Grouping more than one column](images/gridview-grouping-setting-groups-programmatically002.png)

**RadGridView** supports grouping on one or more levels. The following example demonstrates how you can group on two levels:

#### Grouping on one or more levels

<snippet id='gridview-grouping-groupingononeormorelevels-cs' />
<snippet id='gridview-grouping-groupingononeormorelevels-vb' />

![WinForms RadGridView Grouping on one or more levels](images/gridview-grouping-setting-groups-programmatically003.png)
# See Also
* [Basic Grouping]({%slug winforms/gridview/grouping/basic-grouping%})

* [Custom Grouping]({%slug winforms/gridview/grouping/custom-grouping%})

* [Events]({%slug winforms/gridview/grouping/events%})

* [Formatting Group Header Row]({%slug winforms/gridview/grouping/formatting-group-header-row%})

* [Group Aggregates]({%slug winforms/gridview/grouping/group-aggregates%})

* [Groups Collection]({%slug winforms/gridview/grouping/groups-collection%})

* [Sorting group rows]({%slug winforms/gridview/grouping/sorting-group-rows%})

* [Using Grouping Expressions]({%slug winforms/gridview/grouping/using-grouping-expressions%})


---
title: Groups Collection
page_title: Groups Collection - WinForms GridView Control
description: Learn how to access all groups in WinForms GridView.   
slug: winforms/gridview/grouping/groups-collection
tags: groups,collection
published: True
position: 3
previous_url: gridview-grouping-groups-collection
---

# Groups Collection

When a group is created it is added to the *Groups* collection of the corresponding template. You can access the groups collection in the following way:

#### Accessing groups

<snippet id='gridview-grouping-accessgroups-cs' />
<snippet id='gridview-grouping-accessgroups-vb' />

You can expand and collapse groups programmatically. The code blocks below demonstrates how you can expand and collapse the first group in the *Groups* collection.

#### Expanding groups

<snippet id='gridview-grouping-expandgroups-cs' />
<snippet id='gridview-grouping-expandgroups-vb' />

#### Collapse groups

<snippet id='gridview-grouping-collapsegroups-cs' />
<snippet id='gridview-grouping-collapsegroups-vb' />

You can use __AllowGroup__ property of each column to indicate whether the user will be able to group by this column or not. The default value is *true*.

#### Allow groups

<snippet id='gridview-grouping-allowgroup-cs' />
<snippet id='gridview-grouping-allowgroup-vb' />

## DataGroup class

DataGroup collections have hierarchical structure. One or more group levels could be created. Properties of the DataGroup give access to its *Level*, *Parent* and *Child* groups:

#### Accessing parent/child groups

<snippet id='gridview-grouping-accessingparentchildgroups-cs' />
<snippet id='gridview-grouping-accessingparentchildgroups-vb' />

The header row of a group (*GridViewGroupRowInfo*) can be accessed using the __GroupRow__ property for a particular data group, for example:

#### Accessing group header row

<snippet id='gridview-grouping-groupheaderrow-cs' />
<snippet id='gridview-grouping-groupheaderrow-vb' />

# See Also
* [Basic Grouping]({%slug winforms/gridview/grouping/basic-grouping%})

* [Custom Grouping]({%slug winforms/gridview/grouping/custom-grouping%})

* [Events]({%slug winforms/gridview/grouping/events%})

* [Formatting Group Header Row]({%slug winforms/gridview/grouping/formatting-group-header-row%})

* [Group Aggregates]({%slug winforms/gridview/grouping/group-aggregates%})

* [Setting Groups Programmatically]({%slug winforms/gridview/grouping/setting-groups-programmatically%})

* [Sorting group rows]({%slug winforms/gridview/grouping/sorting-group-rows%})

* [Using Grouping Expressions]({%slug winforms/gridview/grouping/using-grouping-expressions%})


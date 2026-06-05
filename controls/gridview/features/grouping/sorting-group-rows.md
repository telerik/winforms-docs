---
title: Sorting group rows
page_title: Sorting group rows - WinForms GridView Control
description: Learn how to customize the groups sort order in WinForms GridView.
slug: winforms/gridview/grouping/sorting-group-rows
tags: sorting,group,rows
published: True
position: 8
previous_url: gridview-grouping-sorting-group-rows
---

# Sorting group rows

By default, when you perform grouping, __RadGridView__ sorts the created group rows alphabetically. This article demonstrates how to customize the groups sort order.

Consider the __RadGridView__ is [bound]({%slug winforms/gridview/populating-with-data/binding-to-generic-lists%}) to a list of custom objects. If you group by __DepartmentId__ you will notice that the group rows are sorted alphabetically as this property is *typeof(string)*.
        
>caption Figure 1: Alphabetical sort order

![WinForms RadGridView Alphabetical sort order](images/gridview-grouping-sorting-group-rows001.png)

However, you can change this sort order by using a group comparer. It is necessary to create a class that implements the  __IComparer&lt;Group&lt;GridViewRowInfo&gt;&gt;__ interface where you should return an integer number in the implemented __Compare__ method. The following code snippet illustrates how to order the group rows considering the integer value, not the string:

#### Custom group comparer

<snippet id='gridview-sortinggrouprows-groupcomparer-cs' />
<snippet id='gridview-sortinggrouprows-groupcomparer-vb' />

The last thing you need to do is to replace the default MasterTemplate.__GroupComparer__ with your custom one:

#### Custom group comparer

<snippet id='gridview-sortinggrouprows-replace-cs' />
<snippet id='gridview-sortinggrouprows-replace-vb' />

>caption Figure 2: Custom Sort Order of Group Rows

![WinForms RadGridView Custom sort order of group rows](images/gridview-grouping-sorting-group-rows002.png)
# See Also
* [Basic Grouping]({%slug winforms/gridview/grouping/basic-grouping%})

* [Custom Grouping]({%slug winforms/gridview/grouping/custom-grouping%})

* [Events]({%slug winforms/gridview/grouping/events%})

* [Formatting Group Header Row]({%slug winforms/gridview/grouping/formatting-group-header-row%})

* [Group Aggregates]({%slug winforms/gridview/grouping/group-aggregates%})

* [Groups Collection]({%slug winforms/gridview/grouping/groups-collection%})

* [Setting Groups Programmatically]({%slug winforms/gridview/grouping/setting-groups-programmatically%})

* [Using Grouping Expressions]({%slug winforms/gridview/grouping/using-grouping-expressions%})


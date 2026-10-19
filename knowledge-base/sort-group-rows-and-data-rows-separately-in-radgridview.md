---
title: Sort Group Rows and Data Rows Separately in RadGridView
description: Learn how to control RadGridView group order separately from data-row order, including numeric sorting for string-backed values.
components: ["gridview"]
type: how-to
page_title: Sort Group Rows and Data Rows Separately in RadGridView
slug: sort-group-rows-and-data-rows-separately-in-radgridview
tags: gridview, grouping, sorting, group comparer, sort descriptor
res_type: kb
---

## Environment

| Version | Product | Author | 
| ---- | ---- | ---- | 
| 2026.3.1007| RadGridView |[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)| 

## Description

Sorting and grouping are related, but they do different jobs in **RadGridView**. Sorting arranges data rows by one or more column values. Grouping partitions rows that share a value and displays a group row for each distinct value.

Use sorting when you need rows in a particular sequence, such as ascending by `Nr`. Use grouping when you need to browse related rows together, such as grouping by `Description`. In a grouped view, you can sort the data rows and control the order of the group rows separately.

## Solution

### Sorting Data Rows

RadGridView sorts rows by the selected column values. Users can sort a column by clicking its header when sorting is enabled. Programmatically, add one or more sort descriptors to specify the column and direction. In a grouped view, a sort descriptor controls the order of the data rows, including rows within each group.

RadGridView supports ascending, descending, and no-sort orders. The comparison follows the column's data type. For example, if `Nr` is a `string`, values are compared as text and can appear as `1`, `11`, `2`. If `Nr` contains numeric values, use an integer data type for numeric order. If the source must remain text, use custom sorting to compare the values numerically.

**Learn more:** [Basic Sorting]({%slug winforms/gridview/sorting/basic-sorting%}), [Setting Sorting Programmatically]({%slug winforms/gridview/sorting/setting-sorting-programmatically%}), and [Custom Sorting]({%slug winforms/gridview/sorting/custom-sorting%}).

### Grouping Data

Grouping collects rows with the same value in one or more group descriptors. For example, add a group descriptor for `Description` to place rows with matching descriptions into the same group. Grouping determines membership. It does not by itself define the order of the data rows within a group.

Once rows are grouped, you can apply sort descriptors to order the rows within the groups. This lets users scan the descriptions as groups while retaining a useful order, such as ascending `Nr`.

**Learn more:** [Basic Grouping]({%slug winforms/gridview/grouping/basic-grouping%}) and [Setting Groups Programmatically]({%slug winforms/gridview/grouping/setting-groups-programmatically%}).

### Sorting Groups (Group Rows)

The order of group rows is separate from the order of the data rows they contain. By default, RadGridView orders groups by their group key. For string keys, this is typically alphabetical. A sort descriptor for `Nr` sorts the data rows, but does not independently set the order of the group rows.

To order groups by a value from their rows, such as the lowest `Nr` in each group, set a custom `GroupComparer`. If the data rows are sorted ascending by `Nr`, the first row in each group has the lowest value. The comparer can use that value to compare groups. Add a secondary comparison, such as the group description, when groups can have the same `Nr` value so the comparer returns a consistent order.

For example, if the lowest `Nr` values are 1 for **Hardware**, 4 for **Services**, and 14 for **Software**, the group rows appear in that order, while the sort descriptor orders the rows within each group by `Nr`.

**Learn more:** [Sorting Group Rows]({%slug winforms/gridview/grouping/sorting-group-rows%}) explains custom group ordering. The existing KB article [How to keep the sort order after grouping in RadGridView]({%slug sort-order-after-grouping-in-gridview%}) provides a comparer example.

### Related Articles

* [Basic Sorting]({%slug winforms/gridview/sorting/basic-sorting%})
* [Setting Sorting Programmatically]({%slug winforms/gridview/sorting/setting-sorting-programmatically%})
* [Custom Sorting]({%slug winforms/gridview/sorting/custom-sorting%})
* [Basic Grouping]({%slug winforms/gridview/grouping/basic-grouping%})
- [Setting Groups Programmatically]({%slug winforms/gridview/grouping/setting-groups-programmatically%})
- [Sorting Group Rows]({%slug winforms/gridview/grouping/sorting-group-rows%})
- [How to keep the sort order after grouping in RadGridView](https://docs.telerik.com/devtools/winforms/knowledge-base/sort-order-after-grouping-in-gridview)


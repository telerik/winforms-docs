---
title: Sorting
page_title: Sorting - WinForms GridView Control
description: WinForms GridView allows sorting by any column. The end-user can click on the header of the desired column to toggle between the sorting directions.
slug: winforms/gridview/end-user-capabilities/sorting
tags: sorting
published: True
position: 2
previous_url: gridview-end-user-capabilities-sorting
---

# Sorting

## Single Column Sorting

By default RadGridView allows you to sort by any column. The end-user should click on the header of the desired column to toggle between the sorting modes:

* Clicking the column header sorts by that column. The column header displays an upward pointing arrow.

* Clicking the header for a second time sorts by that column in descending order. The column header displays a downward pointing arrow.

* "Clear Sorting" from the context menu returns to a natural sort (i.e. no sorting). No arrow is displayed on the column header.

The screenshots below shows sorting by the "ProductName" column:

| Ascending | Descending | Natural Sort (Unsorted) |
| ------ | ------ | ------ |
|![gridview-end-user-capabilities-sorting 001](images/gridview-end-user-capabilities-sorting001.png)|![gridview-end-user-capabilities-sorting 002](images/gridview-end-user-capabilities-sorting002.png)|![gridview-end-user-capabilities-sorting 003](images/gridview-end-user-capabilities-sorting003.png)|

## Multiple Column Sorting

By default, clicking on a column triggers the sorting operation for that column prevents the other columns from being sorted. By holding down the __Shift__ key the user can retain the sort for an existing column and the headers of other columns to add additional sorting. The screenshot below shows categories in the right-most column sorted in descending order. The products in the left most column are sorted in ascending order. Notice that the products are sorted within the categories, i.e. with "Boston Crab Meat" the first item within category id "8" and "Spegesild" that last item within category "8".

![gridview-end-user-capabilities-sorting 004](images/gridview-end-user-capabilities-sorting004.png)

## Sorting in Hierarchical Tables

The default behavior of the grid is to allow all views of the data to be sorted, including the master grid and all child grid views. Sorting properties for the grid and each of the templates allows sorting for each view to be enabled independently. The example below shows the master grid view of categories "Category Name" column sorted in descending order and the child view of products "Product Name" column sorted in ascending order.

![gridview-end-user-capabilities-sorting 005](images/gridview-end-user-capabilities-sorting005.png)

## Sorting Context Menus

Sorting can be invoked through right clicking the column heading to display the context menu. The menu will allow you to choose from __Sort Ascending__, __Sort Descending__ and __Clear Sorting__.

![gridview-end-user-capabilities-sorting 006](images/gridview-end-user-capabilities-sorting006.png)
# See Also
* [Column Chooser]({%slug winforms/gridview/end-user-capabilities/column-chooser%})

* [Editing Behavior]({%slug winforms/gridview/end-user-capabilities/editing-behavior%})

* [Filtering]({%slug winforms/gridview/end-user-capabilities/filtering%})

* [Grouping]({%slug winforms/gridview/end-user-capabilities/grouping%})

* [Keyboard Support]({%slug winforms/gridview/end-user-capabilities/keyboard-support%})

* [Printing Support]({%slug winforms/gridview/end-user-capabilities/printing-support%})

* [Reordering Rows]({%slug winforms/gridview/end-user-capabilities/reordering-rows%})

* [Resizing Columns]({%slug winforms/gridview/end-user-capabilities/resizing-columns%})


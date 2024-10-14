---
title: Filtering Row
page_title: Filtering Row - WinForms GridView Control
description: Get familiar with the properties that control the filtering row appearance in WinForms GridView.
slug: winforms/gridview/filtering/filtering-row
tags: filtering,row
published: True
position: 1
previous_url: gridview-filtering-filtering-row
---

# Filtering Row

The __GridFilterRowElement__ is the row that holds the filtering boxes. It appears automatically when you enable filtering (__EnableFiltering__ is __true__). __GridFilterRowElement__ could be pinned at the top or bottom as well as made scrollable.

![WinForms RadGridView Filtering Row](images/gridview-filtering-filtering-row001.png)

You can hide the operator text of the filter cells by setting the __ShowFilterCellOperator__ property to *false*:

## Hide Operator Text

{{source=..\SamplesCS\GridView\Filtering\Filtering.cs region=filterOperatorText}} 
{{source=..\SamplesVB\GridView\Filtering\Filtering.vb region=filterOperatorText}} 

````C#
this.radGridView1.MasterTemplate.ShowFilterCellOperatorText = false;

````
````VB.NET
Me.RadGridView1.MasterTemplate.ShowFilterCellOperatorText = False

````

{{endregion}} 

![WinForms RadGridView gridview-filtering-filtering-row 002](images/gridview-filtering-filtering-row002.png)

You can also hide the entire __GridFilterRowElement__: 

## Hide filter row

{{source=..\SamplesCS\GridView\Filtering\Filtering.cs region=hidingTheFilterRow}} 
{{source=..\SamplesVB\GridView\Filtering\Filtering.vb region=hidingTheFilterRow}} 

````C#
this.radGridView1.ShowFilteringRow = false;

````
````VB.NET
Me.RadGridView1.ShowFilteringRow = False

````

{{endregion}} 

You can still add [FilterDescriptors]({%slug winforms/gridview/filtering/setting-filters-programmatically-(simple-descriptors)%}) programmatically when the __GridFilterRowElement__ is hidden.


## Filter Menu

The menu with the filter operators is actually a context menu. So if you want to modify it you need to use the __ContextMenuOpening__ event. Detailed information is available here: [Modifying the Default Context Menu]({%slug winforms/gridview/context-menus/modifying-the-default-context-menu%})

## See Also

* [Basic Filtering]({%slug winforms/gridview/filtering/basic-filtering%})

* [Customizing composite filter dialog]({%slug winforms/gridview/filtering/composite-filter-dialog%})

* [Custom Filtering]({%slug winforms/gridview/filtering/custom-filtering%})

* [Events]({%slug winforms/gridview/filtering/events%})

* [Excel-like filtering]({%slug winforms/gridview/filtering/excel-like-filtering%})

* [FilterExpressionChanged Event]({%slug winforms/gridview/filtering/filterexpressionchanged-event%})

* [Put a filter cell into edit mode programmatically]({%slug winforms/gridview/filtering/put-a-filter-cell-into-edit-mode-programmatically%})

* [Setting Filters Programmatically (composite descriptors)]({%slug winforms/gridview/filtering/setting-filters-programmatically-(composite-descriptors)%})


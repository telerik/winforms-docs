---
title: Put a filter cell into edit mode programmatically
page_title: Put a filter cell into edit mode programmatically - WinForms GridView Control
description: Learn how you can put a filter cell into edit mode programmatically.
slug: winforms/gridview/filtering/put-a-filter-cell-into-edit-mode-programmatically
tags: put,a,filter,cell,into,edit,mode,programmatically
published: True
position: 4
previous_url: gridview-filtering-put-a-filter-cell-into-edit-mode-programmatically
---

# Put a filter cell into edit mode programmatically

You can easily put a filter cell into edit mode by code. You should simply call the __BeginEdit__ method of the desired cell:

#### Put a filter cell in edit mode programmatically

{{source=..\SamplesCS\GridView\Filtering\Filtering.cs region=putFilterCellIntoEditModeProgramatically}} 
{{source=..\SamplesVB\GridView\Filtering\Filtering.vb region=putFilterCellIntoEditModeProgramatically}} 

````C#
this.radGridView1.MasterView.TableFilteringRow.Cells[1].BeginEdit();

````
````VB.NET
Me.RadGridView1.MasterView.TableFilteringRow.Cells(0).BeginEdit()

````

{{endregion}}

![WinForms RadGridView Filter Cell Non Edit Mode](images/gridview-filtering-put-a-filter-cell-into-edit-mode-programatically001.png)

![WinForms RadGridView Filter Cell In Edit Mode](images/gridview-filtering-put-a-filter-cell-into-edit-mode-programatically002.png)

## See Also
* [Basic Filtering]({%slug winforms/gridview/filtering/basic-filtering%})

* [Customizing composite filter dialog]({%slug winforms/gridview/filtering/composite-filter-dialog%})

* [Custom Filtering]({%slug winforms/gridview/filtering/custom-filtering%})

* [Events]({%slug winforms/gridview/filtering/events%})

* [Excel-like filtering]({%slug winforms/gridview/filtering/excel-like-filtering%})

* [FilterExpressionChanged Event]({%slug winforms/gridview/filtering/filterexpressionchanged-event%})

* [Filtering Row]({%slug winforms/gridview/filtering/filtering-row%})

* [Setting Filters Programmatically (composite descriptors)]({%slug winforms/gridview/filtering/setting-filters-programmatically-(composite-descriptors)%})

* [How to Indicate RadTextBoxEditor in Grid Filter Cells]({%slug indicate-textboxeditor-in-grid-filter-cell%})


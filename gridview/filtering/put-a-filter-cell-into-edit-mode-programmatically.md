---
title: Put a filter cell into edit mode programmatically
page_title: Put a filter cell into edit mode programmatically | RadGridView
description: This article shows how you can put a filter cell into edit mode programmatically.
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

![gridview-filtering-put-a-filter-cell-into-edit-mode-programatically 001](images/gridview-filtering-put-a-filter-cell-into-edit-mode-programatically001.png)

![gridview-filtering-put-a-filter-cell-into-edit-mode-programatically 002](images/gridview-filtering-put-a-filter-cell-into-edit-mode-programatically002.png)

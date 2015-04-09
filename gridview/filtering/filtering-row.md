---
title: Filtering Row
page_title: Filtering Row
description: Filtering Row
slug: gridview-filtering-filtering-row
tags: filtering,row
published: True
position: 1
---

# Filtering Row



## 

The __GridFilterRowElement__ is the row that holds the filtering boxes. It appears automatically when you enable filtering (__GridViewTemplate.EnableFiltering = true__). __GridFilterRowElement__ could be pinned at the top or bottom as well as made scrollable.
        ![gridview-filtering-filtering-row 001](images/gridview-filtering-filtering-row001.png)

You can hide the operator text of the filter cells by setting the
          __ShowFilterCellOperator__ property to *false*:
        

#### __[C#] Hide filter row__

{{source=..\SamplesCS\GridView\Filtering\Filtering.cs region=filterOperatorText}}
	            this.radGridView1.MasterTemplate.ShowFilterCellOperatorText = false;
	{{endregion}}



#### __[VB.NET] Hide filter row__

{{source=..\SamplesVB\GridView\Filtering\Filtering.vb region=filterOperatorText}}
	        Me.RadGridView1.MasterTemplate.ShowFilterCellOperatorText = False
	{{endregion}}

![gridview-filtering-filtering-row 002](images/gridview-filtering-filtering-row002.png)

You can also hide the entire __GridFilterRowElement__: 
        

#### __[C#] Hide filter row__

{{source=..\SamplesCS\GridView\Filtering\Filtering.cs region=hidingTheFilterRow}}
	            this.radGridView1.ShowFilteringRow = false;
	{{endregion}}



#### __[VB.NET] Hide filter row__

{{source=..\SamplesVB\GridView\Filtering\Filtering.vb region=hidingTheFilterRow}}
	        Me.RadGridView1.ShowFilteringRow = False
	{{endregion}}



>You can still add FilterDescriptors programmatically when the __GridFilterRowElement__ is hidden.
          

You can customize the __GridFilterRowElement__ by using the __Visual Style Builder__.
        ![gridview-filtering-filtering-row 003](images/gridview-filtering-filtering-row003.png)

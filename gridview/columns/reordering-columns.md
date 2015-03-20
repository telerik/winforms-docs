---
title: Reordering Columns
page_title: Reordering Columns
description: Reordering Columns
slug: gridview-columns-reordering-columns
tags: reordering,columns
published: True
position: 3
---

# Reordering Columns



## Reordering columns

The RadGridView control supports column reordering by the user at run-time. The user has just to drag the desired column's header at
      		the desired position among the other headers and drop it there. In the RadGridView control, the 
        	__RadGridView.AllowColumnReorder__ property value determines whether users can move columns to different positions.
      	

#### __[C#] Allow or disallow column reordering__

{{region allowReoder}}
	            radGridView1.AllowColumnReorder = true;
	{{endregion}}



#### __[VB.NET] Allow or disallow column reordering__

{{region allowReoder}}
	        RadGridView1.AllowColumnReorder = True
	{{endregion}}

![gridview-columns-reordering-columns 001](images/gridview-columns-reordering-columns001.png)

## Reordering columns programmatically

In order to reorder columns in RadGridView programmatically you should use the *Move* method
		  			of the RadGridView __Columns__ collection:

#### __[C#] Reordering columns programmatically__

{{region reorderColumns}}
	            radGridView1.Columns.Move(5, 0);
	            radGridView1.Columns.Move(4, 1);
	{{endregion}}



#### __[VB.NET] Reordering columns programmatically__

{{region reorderColumns}}
	        RadGridView1.Columns.Move(5, 0)
	        RadGridView1.Columns.Move(4, 1)
	{{endregion}}



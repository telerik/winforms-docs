---
title: Reordering Columns
page_title: Reordering Columns | UI for WinForms Documentation
description: Reordering Columns
slug: winforms/gridview/columns/reordering-columns
tags: reordering,columns
published: True
position: 3
---

# Reordering Columns



## Reordering columns

The RadGridView control supports column reordering by the user at run-time. The user has just to drag the desired column's header at
      		the desired position among the other headers and drop it there. In the RadGridView control, the 
        	__RadGridView.AllowColumnReorder__ property value determines whether users can move columns to different positions.
      	#_[C#] Allow or disallow column reordering_

	



{{source=..\SamplesCS\GridView\Columns\ReorderingColumns.cs region=allowReoder}} 
{{source=..\SamplesVB\GridView\Columns\ReorderingColumns.vb region=allowReoder}} 

````C#
radGridView1.AllowColumnReorder = true;

````
````VB.NET
RadGridView1.AllowColumnReorder = True

````

{{endregion}} 


![gridview-columns-reordering-columns 001](images/gridview-columns-reordering-columns001.png)

## Reordering columns programmatically

In order to reorder columns in RadGridView programmatically you should use the *Move* method
		  			of the RadGridView __Columns__ collection:#_[C#] Reordering columns programmatically_

	



{{source=..\SamplesCS\GridView\Columns\ReorderingColumns.cs region=reorderColumns}} 
{{source=..\SamplesVB\GridView\Columns\ReorderingColumns.vb region=reorderColumns}} 

````C#
radGridView1.Columns.Move(5, 0);
radGridView1.Columns.Move(4, 1);

````
````VB.NET
RadGridView1.Columns.Move(5, 0)
RadGridView1.Columns.Move(4, 1)

````

{{endregion}} 




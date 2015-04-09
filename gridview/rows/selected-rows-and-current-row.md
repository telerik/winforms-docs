---
title: Selected rows and Current row
page_title: Selected rows and Current row
description: Selected rows and Current row
slug: gridview-rows-selected-rows-and-current-row
tags: selected,rows,and,current,row
published: True
position: 7
---

# Selected rows and Current row



## IsSelected

The property __IsSelected__determines whether a row is selected. For example, to select a row programmatically use the following code snippet:  

#### __[C#] Selecting a row__

{{source=..\SamplesCS\GridView\Rows\SelectedRowAndCurrentRow.cs region=selectingARow}}
	            rowToSelect.IsSelected = true;
	{{endregion}}



#### __[VB.NET] Selecting a row__

{{source=..\SamplesVB\GridView\Rows\SelectedRowAndCurrentRow.vb region=selectingARow}}
	        rowToSelect.IsSelected = True
	{{endregion}}



All *currently* selected rows are included in the __SelectedRows__ collection. If you clear this collection and send an update message to RadGridView, this will essentially unselect all rows:

#### __[C#] Clearing the selected rows__

{{source=..\SamplesCS\GridView\Rows\SelectedRowAndCurrentRow.cs region=unselectAllRows}}
	            radGridView1.ClearSelection();
	{{endregion}}



#### __[VB.NET] Clearing the selected rows__

{{source=..\SamplesVB\GridView\Rows\SelectedRowAndCurrentRow.vb region=unselectAllRows}}
	        Me.RadGridView1.ClearSelection()
	{{endregion}}



## IsCurrent

The property __IsCurrent__determines which row is the current one. There can be only one current row or no current row if IsCurrent is set to null. 

Most themes visualizes it in a similar way to the way selected rows are visualized although technically IsCurrent and IsSelected are independent of one another. __IsCurrent__functionality is related to the keyboard support.

Use the following code snippet to remove the current row:

#### __[C#] Clearing the current row__

{{source=..\SamplesCS\GridView\Rows\SelectedRowAndCurrentRow.cs region=currentRow}}
	            this.radGridView1.CurrentRow = null;
	{{endregion}}



#### __[VB.NET] Clearing the current row__

{{source=..\SamplesVB\GridView\Rows\SelectedRowAndCurrentRow.vb region=currentRow}}
	        Me.RadGridView1.CurrentRow = Nothing
	{{endregion}}





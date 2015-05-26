---
title: Selected rows and Current row
page_title: Selected rows and Current row | UI for WinForms Documentation
description: Selected rows and Current row
slug: winforms/gridview/rows/selected-rows-and-current-row
tags: selected,rows,and,current,row
published: True
position: 7
---

# Selected rows and Current row



## IsSelected

The property __IsSelected__determines whether a row is selected. For example, to select a row programmatically use the following code snippet:  #_[C#] Selecting a row_

	



{{source=..\SamplesCS\GridView\Rows\SelectedRowAndCurrentRow.cs region=selectingARow}} 
{{source=..\SamplesVB\GridView\Rows\SelectedRowAndCurrentRow.vb region=selectingARow}} 

````C#
            rowToSelect.IsSelected = true;
````
````VB.NET
        rowToSelect.IsSelected = True
        '
````

{{endregion}} 




All *currently* selected rows are included in the __SelectedRows__ collection. If you clear this collection and send an update message to RadGridView, this will essentially unselect all rows:#_[C#] Clearing the selected rows_

	



{{source=..\SamplesCS\GridView\Rows\SelectedRowAndCurrentRow.cs region=unselectAllRows}} 
{{source=..\SamplesVB\GridView\Rows\SelectedRowAndCurrentRow.vb region=unselectAllRows}} 

````C#
            radGridView1.ClearSelection();
````
````VB.NET
        Me.RadGridView1.ClearSelection()
        '
````

{{endregion}} 




## IsCurrent

The property __IsCurrent__determines which row is the current one. There can be only one current row or no current row if IsCurrent is set to null. 

Most themes visualizes it in a similar way to the way selected rows are visualized although technically IsCurrent and IsSelected are independent of one another. __IsCurrent__functionality is related to the keyboard support.

Use the following code snippet to remove the current row:#_[C#] Clearing the current row_

	



{{source=..\SamplesCS\GridView\Rows\SelectedRowAndCurrentRow.cs region=currentRow}} 
{{source=..\SamplesVB\GridView\Rows\SelectedRowAndCurrentRow.vb region=currentRow}} 

````C#
            this.radGridView1.CurrentRow = null;
````
````VB.NET
        Me.RadGridView1.CurrentRow = Nothing
        '
````

{{endregion}} 






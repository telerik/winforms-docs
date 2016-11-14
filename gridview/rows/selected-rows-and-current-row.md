---
title: Selected rows and Current row
page_title: Selected rows and Current row | RadGridView
description: This article shows the difference between the Selected and the Current rows.
slug: winforms/gridview/rows/selected-rows-and-current-row
tags: selected,rows,and,current,row
published: True
position: 7
previous_url: gridview-rows-selected-rows-and-current-row
---

# Selected rows and Current row

## IsSelected

The property __IsSelected__ determines whether a row is selected. For example, to select a row programmatically use the following code snippet:

{{source=..\SamplesCS\GridView\Rows\SelectedRowAndCurrentRow.cs region=selectingARow}} 
{{source=..\SamplesVB\GridView\Rows\SelectedRowAndCurrentRow.vb region=selectingARow}} 

````C#
rowToSelect.IsSelected = true;

````
````VB.NET
rowToSelect.IsSelected = True

````

{{endregion}} 

All currently selected rows are included in the __SelectedRows__ collection. If you clear this collection and send an update message to __RadGridView__, this will essentially unselect all rows:

{{source=..\SamplesCS\GridView\Rows\SelectedRowAndCurrentRow.cs region=unselectAllRows}} 
{{source=..\SamplesVB\GridView\Rows\SelectedRowAndCurrentRow.vb region=unselectAllRows}} 

````C#
radGridView1.ClearSelection();

````
````VB.NET
Me.RadGridView1.ClearSelection()

````

{{endregion}} 

## IsCurrent

The property __IsCurrent__ determines which row is the current one. There can be only one current row or no current row if __IsCurrent__ is set to *null*. 

Most themes visualizes the current and the selected rows with the same styles although technically __IsCurrent__ and __IsSelected__ are independent of one another. __IsCurrent__ functionality is related to the keyboard support.

Use the following code snippet to remove the current row:

{{source=..\SamplesCS\GridView\Rows\SelectedRowAndCurrentRow.cs region=currentRow}} 
{{source=..\SamplesVB\GridView\Rows\SelectedRowAndCurrentRow.vb region=currentRow}} 

````C#
this.radGridView1.CurrentRow = null;

````
````VB.NET
Me.RadGridView1.CurrentRow = Nothing

````

{{endregion}} 






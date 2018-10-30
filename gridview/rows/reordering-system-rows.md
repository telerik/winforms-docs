---
title: Reordering System Rows
page_title: Reordering System Rows | RadGridView
description: This article describes how you can change the order of the header, filtering, search and new rows.
slug: winforms/gridview/rows/reordering-system-rows
tags: reordering,system,rows
published: True
position: 18
previous_url: gridview-rows-reordering-system-rows
---

# Reordering System Rows

__RadGridView__ provides out of the box API for reordering its system rows: [GridFilterRowElement]({%slug winforms/gridview/filtering/filtering-row%}), [GridSearchRowElement]({%slug winforms/gridview/rows/search-row%}), [GridNewRowElement]({%slug winforms/gridview/rows/new-row%}). The figures below illustrate __RadGridView__ before and after the reordering operation.

>caption Figure 1: Default Order

![gridview-rows-reordering-system-rows 001](images/gridview-rows-reordering-system-rows001.png)

>caption Figure 2: Reordered Rows

![gridview-rows-reordering-system-rows 002](images/gridview-rows-reordering-system-rows002.png)

In order to perform system rows reordering, you can use the RadGridView.MasterView.SystemRows.__Move__ method. Required parameters are two indices according to which the row will be reordered, the first one being the old index and second one being the new index. The default order (starting from the top) is:

* __GridViewTableHeaderRowInfo__: 0

* __GridViewNewRowInfo__: 1

* __GridViewFilteringRowInfo__: 2

* __GridViewSearchRowInfo__: 3

#### Reordering System Rows

{{source=..\SamplesCS\GridView\Rows\ReorderingSystemRows.cs region=ReorderingSystemRows}} 
{{source=..\SamplesVB\GridView\Rows\ReorderingSystemRows.vb region=ReorderingSystemRows}} 

````C#
this.radGridView1.MasterView.SystemRows.Move(1, 2);
this.radGridView1.MasterView.SystemRows.Move(2, 3);
this.radGridView1.GridViewElement.TableElement.InvalidateMeasure(true);
this.radGridView1.GridViewElement.TableElement.UpdateLayout();

````
````VB.NET
Me.RadGridView1.MasterView.SystemRows.Move(1, 2)
Me.RadGridView1.MasterView.SystemRows.Move(2, 3)
Me.RadGridView1.GridViewElement.TableElement.InvalidateMeasure(True)
Me.RadGridView1.GridViewElement.TableElement.UpdateLayout()

````

{{endregion}}

>tip The layout needs to be invalidated and updated in order to reflect the changes.
>


# See Also

* [Adding and Inserting Rows]({%slug winforms/gridview/rows/adding-and-inserting-rows%})

* [Conditional Formatting Rows]({%slug winforms/gridview/rows/conditional-formatting-rows%})

* [Creating custom rows]({%slug winforms/gridview/rows/creating-custom-rows%})

* [Drag and Drop]({%slug winforms/gridview/rows/drag-and-drop%})

* [Formatting Rows]({%slug winforms/gridview/rows/formatting-rows%})

* [GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%})

* [Iterating Rows]({%slug winforms/gridview/rows/iterating-rows%})

* [New Row]({%slug winforms/gridview/rows/new-row%})


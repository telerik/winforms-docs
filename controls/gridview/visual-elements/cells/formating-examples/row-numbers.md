---
title: Row Numbers
page_title: Display Row Numbers in RadGridView
description: Learn how to display row numbers in the WinForms RadGridView row header, keep them correct during paging, and adjust the row header width.
components: ["gridview"]
slug: winforms/gridview/cells/formatting-row-numbers
tags: formatting,cells
published: True
position: 3
---

# Display Row Numbers in RadGridView

By default, `RadGridView` in Progress® Telerik® UI for WinForms shows the current row indicator in the row header as an arrow. To display row numbers, handle the `ViewCellFormatting` event and set the row header text for each data row.

This article shows the basic formatting approach, explains how paging affects row numbering, and shows how to make room for both the row number and the current row indicator.

The following image shows row numbers next to the current row indicator in the `RadGridView` row header.
![RadGridView row headers displaying row numbers together with the current row indicator arrow.](images/gridview-cells-formatting-row-numbers001.png)

## Show Row Numbers in the Row Header

Handle `ViewCellFormatting` to update the row header text as each row is rendered. In the handler, check whether the formatted cell is a `GridRowHeaderCellElement` for a `GridViewDataRowInfo` row, then assign the row number.

The example also sets `TextImageRelation` to `ImageBeforeText` so the arrow indicator remains visible next to the number.

### Handle the ViewCellFormatting Event

<snippet id='gridview-gridviewrownumbers-rownumbers-cs' />
<snippet id='gridview-gridviewrownumbers-rownumbers-vb' />

## Keep Row Numbers Correct When Paging Is Enabled

`RowIndex` uses the `ChildRows` collection, which contains the rows that `RadGridView` currently displays in grouped, sorted, or filtered order. When paging is enabled, `ChildRows` contains only the rows on the current page and changes when users group, sort, or filter data.

>note
>
> If you use `RowIndex` while paging is enabled, row numbers restart on each page. `ChildRows` contains only the records visible on the current page. To number rows in the grid's full visible order, use `RadGridView.MasterTemplate.DataView.Indexer.Items`. This collection reflects the current grouped, sorted, and filtered order across the full data view. Use it to keep row numbers consistent as users move between pages.

### Use GridDataView.Indexer for Paged Data

The following C# and VB.NET handlers use the data view indexer to number rows across pages in the current visible order.

```C#
private void radGridView1_ViewCellFormatting(object sender, Telerik.WinControls.UI.CellFormattingEventArgs e)
{
    if (e.CellElement is GridRowHeaderCellElement && e.Row is GridViewDataRowInfo)
    {
        GridDataView dataView = this.radGridView1.MasterTemplate.DataView as GridDataView;
        e.CellElement.Text = (dataView.Indexer.Items.IndexOf(e.Row) + 1).ToString();
        e.CellElement.TextImageRelation = TextImageRelation.ImageBeforeText;
    }
    else
    {
        e.CellElement.ResetValue(LightVisualElement.TextImageRelationProperty, ValueResetFlags.Local);
    }
}
```
```VB.NET
Private Sub radGridView1_ViewCellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.CellFormattingEventArgs)
    If TypeOf e.CellElement Is GridRowHeaderCellElement AndAlso TypeOf e.Row Is GridViewDataRowInfo Then
        Dim dataView As GridDataView = TryCast(Me.radGridView1.MasterTemplate.DataView, GridDataView)
        e.CellElement.Text = (dataView.Indexer.Items.IndexOf(e.Row) + 1).ToString()
        e.CellElement.TextImageRelation = TextImageRelation.ImageBeforeText
    Else
        e.CellElement.ResetValue(LightVisualElement.TextImageRelationProperty, ValueResetFlags.Local)
    End If
End Sub
```

## Increase the Row Header Width

Increase `TableElement.RowHeaderColumnWidth` so the row header has enough space for both the row number and the current row indicator.

### Adjust the RowHeaderColumnWidth

<snippet id='gridview-gridviewrownumbers-rowheaderwidth-cs' />
<snippet id='gridview-gridviewrownumbers-rowheaderwidth-vb' />

## See Also

* [Format a GridViewCommandColumn]({%slug winforms/gridview/cells/formatting-command-column%})
* [Format group rows]({%slug winforms/gridview/cells/formatting-group-rows%})
* [Use the Style property]({%slug winforms/gridview/cells/style%})

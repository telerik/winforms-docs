---
title: Mixing BestFit and Fill Modes for the GridView's Columns
description: This article demonstrates how to combine bestfit and fill modes for the columns in RadGridView  
components: ["gridview"]
type: how-to
page_title: Mixing BestFit and Fill Modes for the GridView's Columns  
slug: mixing-bestfit-and-fill-mode-in-gridview
position: 5
tags: gridview, column, size, bestfit, fill
ticketid: 1510029
res_type: kb
---


## Environment

|Product Version|Product|Author|
|----|----|----|
|2021.1.223|RadGridView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

The `RadGridView` supports two approaches to [sizing columns automatically]({%slug winforms/gridview/columns/resizing-columns-programatically%}):

* `AutoSizeColumnsMode` - Columns can fill the grid's width automatically. Set this property on the desired template to `GridViewAutoSizeColumnsMode.Fill`.

* *Best fit* - Set column widths to fit their content by using `GridViewTemplate.BestFitColumns(BestFitColumnMode mode)` or the `GridViewDataColumn.BestFit` methods. The best-fit algorithm considers the header text and data in all visible rows.

The `BestFitColumnMode` determines which cells the best-fit calculation considers. The available modes are:

* `BestFitColumnMode.None` - The column width does not adjust automatically.

* `BestFitColumnMode.AllCells` - The column width adjusts to fit the contents of all cells in the control.

* `BestFitColumnMode.DisplayedDataCells` - The column width adjusts to fit the contents of the displayed data cells.

* `BestFitColumnMode.HeaderCells` - The column width adjusts to fit the contents of the header cell.

* `BestFitColumnMode.FilterCells` - The column width adjusts to fit the contents of the filter cell.

* `BestFitColumnMode.SummaryRowCells` - The column width adjusts to fit the contents of the summary row cell.

* `BestFitColumnMode.SystemCells` - The column width adjusts to fit the contents of the system cells.

* `BestFitColumnMode.DisplayedCells` - The column width adjusts to fit the contents of the displayed cells.

You cannot use both built-in sizing modes at the same time because they follow different sizing rules. The approach below best-fits columns based on their headers, then adjusts the last column to fill the remaining space.

The animation shows the last column filling the grid after the other columns are sized to fit their headers.

![RadGridView columns sized to fit their headers, with the last column filling the remaining grid width](images/mixing-bestfit-and-fill-mode-in-gridview001.gif)

## Solution

To simulate both behaviors, best-fit the columns and adjust the last column's width to use the remaining space. Subscribe to the `RadGridView.SizeChanged` event. Recalculate the last column's width whenever the grid changes size.

The following C# and VB.NET fragments belong in the `RadForm1` form class and reference the `categoriesTableAdapter`, `nwindDataSet`, `categoriesBindingSource`, and `radGridView1` fields.

````C#
private void RadForm1_Load(object sender, EventArgs e)
{
    this.categoriesTableAdapter.Fill(this.nwindDataSet.Categories);
    this.radGridView1.DataSource = this.categoriesBindingSource;

    this.radGridView1.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.None;
    this.radGridView1.BestFitColumns(BestFitColumnMode.HeaderCells);
    AdjustLastColumnSize();
    this.radGridView1.SizeChanged += radGridView1_SizeChanged;
}

private void radGridView1_SizeChanged(object sender, EventArgs e)
{
    AdjustLastColumnSize();
}

private void AdjustLastColumnSize()
{
    var totalColumnsWidth = 0;
    for (var index = 0; index <= this.radGridView1.Columns.Count - 2; index++)
        totalColumnsWidth = totalColumnsWidth + this.radGridView1.Columns[index].Width;

    var calculatedLastColWidth = this.radGridView1.Width - totalColumnsWidth -
        this.radGridView1.TableElement.RowHeaderColumnWidth - this.radGridView1.TableElement.VScrollBar.Size.Width;
    if (calculatedLastColWidth > 0)
    {
        this.radGridView1.Columns.Last().Width = calculatedLastColWidth - 5;
    }
}


````
````VB.NET
Private Sub RadForm1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
    Me.CategoriesTableAdapter.Fill(Me.NwindDataSet.Categories)
    Me.RadGridView1.DataSource = Me.CategoriesBindingSource

    Me.RadGridView1.AutoSizeColumnsMode = Telerik.WinControls.UI.GridViewAutoSizeColumnsMode.None
    Me.RadGridView1.BestFitColumns(Telerik.WinControls.UI.BestFitColumnMode.HeaderCells)
    AdjustLastColumnSize()
    AddHandler Me.RadGridView1.SizeChanged, AddressOf RadGridView1_SizeChanged
End Sub

Private Sub RadGridView1_SizeChanged(sender As Object, e As EventArgs)
    AdjustLastColumnSize()
End Sub

Private Sub AdjustLastColumnSize()
    Dim totalColumnsWidth = 0
    For index = 0 To Me.RadGridView1.Columns.Count - 2
        totalColumnsWidth = totalColumnsWidth + Me.RadGridView1.Columns(index).Width
    Next

    Dim calculatedLastColWidth = Me.RadGridView1.Width - totalColumnsWidth -
        Me.RadGridView1.TableElement.RowHeaderColumnWidth - Me.RadGridView1.TableElement.VScrollBar.Size.Width
    If calculatedLastColWidth > 0 Then
        Me.RadGridView1.Columns.Last().Width = calculatedLastColWidth - 5
    End If
End Sub

````

## See Also

* [Extend the Last Visible Column to Fill the Grid Width When Grouped]({%slug extend-last-visible-column-fill-width-grouped-gridview%})
* [Resizing columns programmatically]({%slug winforms/gridview/columns/resizing-columns-programatically%})

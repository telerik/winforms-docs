---
title: Mixing BestFit and Fill Modes for the GridView's Columns
description: This article demonstrates how to combine bestfit and fill modes for the columns in RadGridView  
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

**RadGridView** supports two ways of [auto sizing the columns]({%slug winforms/gridview/columns/resizing-columns-programatically%}):

- **AutoSizeColumnsMode**: columns can automatically fill the entire width of the grid. Just set the **AutoSizeColumnsMode** property of the desired template to GridViewAutoSizeColumnsMode.**Fill**.

- **Best fit**: the column widths can be set to fit its content by using the GridViewTemplate.**BestFitColumns(BestFitColumnMode mode)** or GridViewDataColumn.**BestFit** methods. This mode distributes algorithm that attempts to fit in the header text and column data for all visible rows.  

The **BestFitColumnMode** controls which cells participate in the calculations for the space required to fit the text. These are the available modes:

* BestFitColumnMode.**None** - The column's width does not adjust automatically.

* BestFitColumnMode.**AllCells** - The column's width adjusts to fit the contents of all cells in the control.

* BestFitColumnMode.**DisplayedDataCells** - The column's width adjusts to fit the contents of the displayed data cells.

* BestFitColumnMode.**HeaderCells** - The column's width adjusts to fit the contents of the header cell.

* BestFitColumnMode.**FilterCells** - The column's width adjusts to fit the contents of the filter cell.

* BestFitColumnMode.**SummaryRowCells** - The column's width adjusts to fit the contents of the summary row cell.

* BestFitColumnMode.**SystemCells** - The column's width adjusts to fit the contents of the system cells.

* BestFitColumnMode.**DisplayedCells** - The column's width adjusts to fit the contents of the displayed cells.

Mixing the two ways is not possible as they follow different principle for sizing. However, this article demonstrates a sample approach how to best-fit the columns considering the columns' headers and adjust the last column's width so that it fills the available space. 

![mixing-bestfit-and-fill-mode-in-gridview001](images/mixing-bestfit-and-fill-mode-in-gridview001.gif)

## Solution

You can best fit the columns and manually adjust the last column's width according to the remaining space. Thus, you can simulate best fitting the columns and filling the grid's width. It is necessary to subscribe to the RadGridView.**SizeChanged** event and recalculate the last column's width.
 

 
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

# See Also

* [Resizing columns programmatically]({%slug winforms/gridview/columns/resizing-columns-programatically%})  



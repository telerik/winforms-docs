---
title: Add two or more controls in one cell in RadGridView
description: This article demonstrates how to add two or more controls in one cell in RadGridView
type: how-to
page_title: Add two or more controls in one cell in RadGridView
slug: add-two-or-more-controls-in-one-cell-in-grid
position: 0
tags: gridview, custom, cell, radgridview
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2021.1.223|RadGridView for WinForms|[Nadya Karaivanova](https://www.telerik.com/blogs/author/nadya-karaivanova)|
 
## Description

This article will demonstrate how to add one or more controls in one cell in **RadGridView** (e.g. a progress bar and label).

![add-two-or-more-controls-in-one-cell-in-grid.png](images/add-two-or-more-controls-in-one-cell-in-grid.png)
 
## Solution 

This can be done easily by using a [custom cell](https://docs.telerik.com/devtools/winforms/controls/gridview/cells/creating-custom-cells) and subscribing for **CreateCell** event where to replace the default cell with the custom one.

First, let's create our custom **GridDataCellElement** that contains a **RadLabelElement** and **RadProgressBarElement**:

````C#
public class CustomProgressCell : GridDataCellElement
{
    public CustomProgressCell(GridViewColumn column, GridRowElement row)
        : base(column, row)
    {

    }
    private StackLayoutPanel panel;
    private RadLabelElement label;
    private RadProgressBarElement progressBar;

    protected override void CreateChildElements()
    {
        base.CreateChildElements();

        this.panel = new StackLayoutPanel();
        this.panel.Margin = new System.Windows.Forms.Padding(5);
        this.panel.Orientation = System.Windows.Forms.Orientation.Vertical;

        this.label = new RadLabelElement();
        this.label.TextAlignment = ContentAlignment.MiddleCenter;
        this.panel.Children.Add(this.label);

        this.progressBar = new RadProgressBarElement();
        this.progressBar.MinSize = new Size(0, 20);
        this.panel.Children.Add(this.progressBar);

        this.Children.Add(this.panel);
    }
    protected override void SetContentCore(object value)
    {
        object cellValue = value;

        if (cellValue is DBNull || cellValue == null)
            cellValue = 0;

        this.progressBar.Value1 = Convert.ToInt32(cellValue);
        this.label.Text = "Value: " + cellValue.ToString();
    }

}


````
````VB.NET
Public Class CustomProgressCell
    Inherits GridDataCellElement

    Public Sub New(ByVal column As GridViewColumn, ByVal row As GridRowElement)
        MyBase.New(column, row)
    End Sub

    Private panel As StackLayoutPanel
    Private label As RadLabelElement
    Private progressBar As RadProgressBarElement

    Protected Overrides Sub CreateChildElements()
        MyBase.CreateChildElements()
        Me.panel = New StackLayoutPanel()
        Me.panel.Margin = New System.Windows.Forms.Padding(5)
        Me.panel.Orientation = System.Windows.Forms.Orientation.Vertical
        Me.label = New RadLabelElement()
        Me.label.TextAlignment = ContentAlignment.MiddleCenter
        Me.panel.Children.Add(Me.label)
        Me.progressBar = New RadProgressBarElement()
        Me.progressBar.MinSize = New Size(0, 20)
        Me.panel.Children.Add(Me.progressBar)
        Me.Children.Add(Me.panel)
    End Sub

    Protected Overrides Sub SetContentCore(ByVal value As Object)
        Dim cellValue As Object = value
        If TypeOf cellValue Is DBNull OrElse cellValue Is Nothing Then cellValue = 0
        Me.progressBar.Value1 = Convert.ToInt32(cellValue)
        Me.label.Text = "Value: " & cellValue.ToString()
    End Sub
End Class


````

When we finished our work on  the custom cell element, now we should associate the cells of the Progress Column with this custom cell type. In order to do so, handle the **CreateCell** event which is called once for each cell when **RadGridView** is shown for the first time. When this event is fired for the cells of Progress Column, we set the property **CellType** of the **GridViewCreateCellEventArgs** to our custom cell type:

````C#
private void RadGridView1_CreateCell(object sender, GridViewCreateCellEventArgs e)
{
    if (e.CellType == typeof(GridDataCellElement))
    {
        GridViewDataColumn dataColumn = e.Column as GridViewDataColumn;

        if (dataColumn.Name == "Progress")
        {
            e.CellType = typeof(CustomProgressCell);
        }
    }
}

````
````VB.NET
Private Sub RadGridView1_CreateCell(ByVal sender As Object, ByVal e As GridViewCreateCellEventArgs)
    If e.CellType = GetType(GridDataCellElement) Then
        Dim dataColumn As GridViewDataColumn = TryCast(e.Column, GridViewDataColumn)
        If dataColumn.Name = "Progress" Then
            e.CellType = GetType(CustomProgressCell)
        End If
    End If
End Sub

````


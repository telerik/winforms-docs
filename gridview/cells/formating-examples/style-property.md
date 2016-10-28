---
title: Style Property
page_title: Style Property | RadGridView
description: Formatting Cells
slug: winforms/gridview/cells/style
tags: formatting,cells
published: True
position: 1
---

# Format cell with Style property

The GridViewCellInfo.__Style__ property gives direct access to the cell’s visual properties. It makes it possible to set styles to cells in runtime without using events like __CellFormatting__ or the __ConditionalFormattingObject__.

>note This approach lets you customize visual properties which are defined by the theme. All changes set this way will have a greater priority than the theme.
>

The first thing to do for using the cell’s __Style__ is to define what custom visual properties will use this cell. You can define that the cell will:  

* __CustomizeFill__

* __CustomizeBorder__

Using the __Style__ property allows you to define cell’s style properties:

* __Fill__

* __Border__

* __Font__

* __ForeColor__

The example below shows how to customize the __Font__ and __BackColor__ of a cell.

{{source=..\SamplesCS\GridView\Cells\FormattingCells.cs region=CellStyleMethod}} 
{{source=..\SamplesVB\GridView\Cells\FormattingCells.vb region=CellStyleMethod}} 

````C#
Font myFont = new Font(new FontFamily("Calibri"), 12.0F, FontStyle.Bold);
private void StyleCell(GridViewCellInfo cell)
{
    cell.Style.Font = myFont;
    cell.Style.CustomizeFill = true;
    cell.Style.GradientStyle = GradientStyles.Solid;
    cell.Style.BackColor = Color.FromArgb(162, 215, 255);
}

````
````VB.NET
Private myFont As New Font(New FontFamily("Calibri"), 12.0F, FontStyle.Bold)
Private Sub StyleCell(cell As GridViewCellInfo)
    cell.Style.Font = myFont
    cell.Style.CustomizeFill = True
    cell.Style.GradientStyle = GradientStyles.Solid
    cell.Style.BackColor = Color.FromArgb(162, 215, 255)
End Sub
'#End Region
Private Sub FormattingCells_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    'TODO: This line of code loads data into the 'NwindDataSet.Cars' table. You can move, or remove it, as needed.
    Me.CarsTableAdapter.Fill(Me.NwindDataSet.Cars)
    RadGridView1.Columns("Picture").Width = 80
    RadGridView1.Rows(0).Height = 60
    RadGridView1.Rows(1).Height = 60
    RadGridView1.Rows(2).Height = 60
    RadGridView1.Rows(3).Height = 60
    '#region CellStyleMethodCall
    Me.StyleCell(Me.RadGridView1.Rows(1).Cells(1))

````

{{endregion}} 

Here is how to call this method of a certain cell:

{{source=..\SamplesCS\GridView\Cells\FormattingCells.cs region=CellStyleMethodCall}} 
{{source=..\SamplesVB\GridView\Cells\FormattingCells.vb region=CellStyleMethodCall}} 

````C#
this.StyleCell(this.radGridView1.Rows[1].Cells[1]);

````
````VB.NET
Me.StyleCell(Me.RadGridView1.Rows(1).Cells(1))

````

{{endregion}} 

>caption Figure 1: Format using the Style property.

![gridview-cells-formatting-cells-style-property 001](images/gridview-cells-formatting-cells-style-property001.png)

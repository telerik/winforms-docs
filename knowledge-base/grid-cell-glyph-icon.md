---
title: How to show Glyph icon in RadGridView cell
description: This article shows How to show Glyph icon in RadGridView cell.
type: how-to
page_title: How to Show Glyph Icon in RadGridView Cell
slug: grid-cell-glyph-icon
position: 0
tags: gridview, glyph, cell, image, font, telerikwebuI, 
res_type: kb
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.2.622|Scheduler for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|
 

## Description

This article demonstrates how to show [Glyph]({%slug winforms/telerik-presentation-framework/glyphs%}) icon in RadGridView cell depending on text in other column cells. 
 
![grid-cell-glyph-icon](images/grid-cell-glyph-icon.png)

## Solution 

Populate the RadGridView control with sample data. For the purpose of this example, we will use DataTable with one column. The cells inside will contain a string that will use to set our glyph. The grid will have two columns, one will hold our icon and the other will point to the DataTable cell. To set our icon we can use the CellFormatting event of the control which will be called for each data cell. In order to use glyph, the [CustomFont]({%slug winforms/tpf/custom-fonts%})  property of the cell needs to be set to our __TelerikWebUI__ font name. Otherwise, the cell won't recognize the glyph string. 
 

#### Glyph in Cell

````C#

       public RadForm1()
        {
            InitializeComponent();
            DataTable dataTable = new DataTable("IconTable");
            dataTable.Columns.Add(new DataColumn("Dirrection", typeof(string)));
            var row = dataTable.NewRow();
            row["Dirrection"] = "Up";
            dataTable.Rows.Add(row);
            row = dataTable.NewRow();
            row["Dirrection"] = "Down";
            dataTable.Rows.Add(row);
            row = dataTable.NewRow();
            row["Dirrection"] = "Left";
            dataTable.Rows.Add(row);
            row = dataTable.NewRow();
            row["Dirrection"] = "Right";
            dataTable.Rows.Add(row);

            this.radGridView1.Columns.Add(new GridViewTextBoxColumn("Glyph Icon"));
            this.radGridView1.Columns.Add(new GridViewTextBoxColumn("Dirrection", "Dirrection"));
            
            this.radGridView1.CellFormatting += RadGridView1_CellFormatting;
            this.radGridView1.DataSource = dataTable;
        }

        FontFamily font1 = ThemeResolutionService.GetCustomFont("TelerikWebUI");
        private void RadGridView1_CellFormatting(object sender, CellFormattingEventArgs e)
        {
            if (e.CellElement.ColumnIndex == 0)
            {
                var cellValue = e.Row.Cells[1].Value;
                if(cellValue != null)
                {
                    e.CellElement.CustomFont = font1.Name;
                    switch (cellValue.ToString())
                    {
                        case "Up":
                            e.CellElement.Text = TelerikWebUIFont.GlyphArrowUp;
                            break;
                        case "Down":
                            e.CellElement.Text = TelerikWebUIFont.GlyphArrowDown;
                            break;
                        case "Left":
                            e.CellElement.Text = TelerikWebUIFont.GlyphArrowLeft;
                            break;
                        case "Right":
                            e.CellElement.Text = TelerikWebUIFont.GlyphArrowRight;
                            break;
                        default:
                            e.CellElement.ResetValue(LightVisualElement.CustomFontProperty, Telerik.WinControls.ValueResetFlags.Local);
                            break;
                    }
                }             
            }
            else
            {
                e.CellElement.ResetValue(LightVisualElement.CustomFontProperty, Telerik.WinControls.ValueResetFlags.Local);
            }
        }
       
````
````VB.NET

    Public Sub New()
        InitializeComponent()
        Dim dataTable As DataTable = New DataTable("IconTable")
        dataTable.Columns.Add(New DataColumn("Dirrection", GetType(String)))
        Dim row = dataTable.NewRow()
        row("Dirrection") = "Up"
        dataTable.Rows.Add(row)
        row = dataTable.NewRow()
        row("Dirrection") = "Down"
        dataTable.Rows.Add(row)
        row = dataTable.NewRow()
        row("Dirrection") = "Left"
        dataTable.Rows.Add(row)
        row = dataTable.NewRow()
        row("Dirrection") = "Right"
        dataTable.Rows.Add(row)
        Me.radGridView1.Columns.Add(New GridViewTextBoxColumn("Glyph Icon"))
        Me.radGridView1.Columns.Add(New GridViewTextBoxColumn("Dirrection", "Dirrection"))
        AddHandler Me.radGridView1.CellFormatting, AddressOf RadGridView1_CellFormatting
        Me.radGridView1.DataSource = dataTable
    End Sub

    Private font1 As FontFamily = ThemeResolutionService.GetCustomFont("TelerikWebUI")

    Private Sub RadGridView1_CellFormatting(ByVal sender As Object, ByVal e As CellFormattingEventArgs)
        If e.CellElement.ColumnIndex = 0 Then
            Dim cellValue = e.Row.Cells(1).Value

            If cellValue IsNot Nothing Then
                e.CellElement.CustomFont = font1.Name

                Select Case cellValue.ToString()
                    Case "Up"
                        e.CellElement.Text = TelerikWebUIFont.GlyphArrowUp
                    Case "Down"
                        e.CellElement.Text = TelerikWebUIFont.GlyphArrowDown
                    Case "Left"
                        e.CellElement.Text = TelerikWebUIFont.GlyphArrowLeft
                    Case "Right"
                        e.CellElement.Text = TelerikWebUIFont.GlyphArrowRight
                    Case Else
                        e.CellElement.ResetValue(LightVisualElement.CustomFontProperty, Telerik.WinControls.ValueResetFlags.Local)
                End Select
            End If
        Else
            e.CellElement.ResetValue(LightVisualElement.CustomFontProperty, Telerik.WinControls.ValueResetFlags.Local)
        End If
    End Sub
    
````

## See Also

* [Glyph]({%slug winforms/telerik-presentation-framework/glyphs%})
* [Glyphs Reference Sheet]({%slug tpf-glyphs-reference-sheet%})

---
title: How to show tool tips when the cell's text doesn't fit
description: This article demonstrates how to show tool tips when the cell's text doesn't fit the column
type: how-to
page_title: How to show tool tips when the cell's text doesn't fit
slug: show-tooltips-when-cell-text-does-not-fit
position: 0
tags: gridview, tooltip, text, grid
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2019.1.117|RadGridView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 

## Description

**RadGridView** offers the **ToolTipTextNeeded** event which is suitable for assigning tool tips to its cell elements. A common requirement is not show the tool tip only if the cell's content doesn't fit the column's width. 
 
![show-tooltips-when-cell-text-does-not-fit](images/show-tooltips-when-cell-text-does-not-fit.gif)

## Solution 

It is necessary to measure the height and width of the text and then depending on that to compare it with the cell dimensions. If the text exceeds the size of the cell, then you can show your tool tip text for the specified cell. You can easily achieve that behavior by using the **ToolTipTextNeeded** event. You should use **TextPart** object to measure text height and width.

#### ToolTipTextNeeded event handler

````C#
        private void radGridView1_ToolTipTextNeeded(object sender, Telerik.WinControls.ToolTipTextNeededEventArgs e)
        {
            GridDataCellElement dataCell = sender as GridDataCellElement;
 
            if (dataCell != null)
            {
                TextPart textPart = new TextPart(dataCell);
                SizeF size = textPart.Measure(new SizeF(float.PositiveInfinity, float.PositiveInfinity));
                SizeF sizeInCell = textPart.Measure(new SizeF(dataCell.ColumnInfo.Width, float.PositiveInfinity));
 
                string toolTipText = null;
                float cellWidth = dataCell.ColumnInfo.Width;
                if (dataCell.MasterTemplate.ViewDefinition is HtmlViewDefinition)
                {
                    cellWidth = ((HtmlViewRowLayout)dataCell.TableElement.ViewElement.RowLayout).GetArrangeInfo(dataCell.ColumnInfo).Bounds.Width - dataCell.BorderWidth * 2;
                }
                float cellHeight = dataCell.Size.Height - dataCell.BorderWidth * 2;
 
                if (size.Width > cellWidth || cellHeight < sizeInCell.Height)
                {
                    toolTipText = dataCell.Text;
                }
 
                e.ToolTipText = toolTipText;
            }
        }
       
````
````VB.NET

    Private Sub radGridView1_ToolTipTextNeeded(ByVal sender As Object, ByVal e As Telerik.WinControls.ToolTipTextNeededEventArgs)
        Dim dataCell As GridDataCellElement = TryCast(sender, GridDataCellElement)

        If dataCell IsNot Nothing Then
            Dim textPart As TextPart = New TextPart(dataCell)
            Dim size As SizeF = textPart.Measure(New SizeF(Single.PositiveInfinity, Single.PositiveInfinity))
            Dim sizeInCell As SizeF = textPart.Measure(New SizeF(dataCell.ColumnInfo.Width, Single.PositiveInfinity))
            Dim toolTipText As String = Nothing
            Dim cellWidth As Single = dataCell.ColumnInfo.Width
            
            If TypeOf dataCell.MasterTemplate.ViewDefinition Is HtmlViewDefinition Then
                cellWidth = (CType(dataCell.TableElement.ViewElement.RowLayout, HtmlViewRowLayout)).GetArrangeInfo(dataCell.ColumnInfo).Bounds.Width - dataCell.BorderWidth * 2
            End If

            Dim cellHeight As Single = dataCell.Size.Height - dataCell.BorderWidth * 2

            If size.Width > cellWidth OrElse cellHeight < sizeInCell.Height Then
                toolTipText = dataCell.Text
            End If

            e.ToolTipText = toolTipText
        End If
    End Sub
      

````

# See Also
* [Tooltips]({%slug winforms/gridview/cells/tooltips%}) 
 

 
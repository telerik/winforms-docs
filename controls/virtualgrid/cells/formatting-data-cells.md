---
title: Formatting Data Cells
page_title: Formatting Data Cells - RadVirtualGrid
description: This article describes how one can use the CellFormatting event to change the cells styles. 
slug: winforms/virtualgrid/cells/formatting-data-cells
tags: virtualgrid, cells, formatting
published: True
position: 0
---

# Formatting Data Cells

The __CellFormatting__ event is used to add formatting to grid cells. For example, the code sample below changes the __ForeColor__, __BackColor__ and __GradientStyle__ in all data cells in the *ContactTitle* column if the cell value is *Owner*:

![WinForms RadVirtualGrid Formatting Data Cells](images/virtualgrid-cells-formatting-data-cells001.png)

{{source=..\SamplesCS\VirtualGrid\Cells\VirtualGridFormattingCells.cs region=FormattingCells}} 
{{source=..\SamplesVB\VirtualGrid\Cells\VirtualGridFormattingCells.vb region=FormattingCells}} 

````C#
        
private void radVirtualGrid1_CellFormatting(object sender, VirtualGridCellElementEventArgs e)
{
    if (e.CellElement.RowIndex > -1)
    {
        if (e.CellElement.ColumnIndex == 3 && e.CellElement.Value != null && e.CellElement.Value.ToString() == "Owner")
        {
            e.CellElement.DrawFill = true;
            e.CellElement.BackColor = Color.Yellow;
            e.CellElement.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
            e.CellElement.ForeColor = Color.Red;
        }
        else
        { 
            e.CellElement.ResetValue(LightVisualElement.DrawFillProperty, ValueResetFlags.Local);
            e.CellElement.ResetValue(LightVisualElement.BackColorProperty, ValueResetFlags.Local);
            e.CellElement.ResetValue(LightVisualElement.GradientStyleProperty, ValueResetFlags.Local);
            e.CellElement.ResetValue(LightVisualElement.ForeColorProperty, ValueResetFlags.Local);
        }
    }
}

````
````VB.NET
Private Sub radVirtualGrid1_CellFormatting(sender As Object, e As VirtualGridCellElementEventArgs)
    If e.CellElement.RowIndex > -1 Then
        If e.CellElement.ColumnIndex = 3 AndAlso e.CellElement.Value IsNot Nothing _
        AndAlso e.CellElement.Value.ToString() = "Owner" Then
            e.CellElement.DrawFill = True
            e.CellElement.BackColor = Color.Yellow
            e.CellElement.GradientStyle = Telerik.WinControls.GradientStyles.Solid
            e.CellElement.ForeColor = Color.Red
        Else
            e.CellElement.ResetValue(LightVisualElement.DrawFillProperty, ValueResetFlags.Local)
            e.CellElement.ResetValue(LightVisualElement.BackColorProperty, ValueResetFlags.Local)
            e.CellElement.ResetValue(LightVisualElement.GradientStyleProperty, ValueResetFlags.Local)
            e.CellElement.ResetValue(LightVisualElement.ForeColorProperty, ValueResetFlags.Local)
        End If
    End If
End Sub

````

{{endregion}} 

>caution Due to the UI virtualization in __RadVirtualGrid__, cell elements are created only for currently visible cells and are being reused during operations like scrolling, filtering, sorting and so on. In order to prevent applying the formatting to other columns' cell elements (because of the cell reuse) all customization should be reset for the rest of the cell elements.

# See Also
* [Creating custom cells]({%slug winforms/virtualgrid/cells/creating-custom-cells%})

* [Formatting System Cells]({%slug winforms/virtualgrid/cells/formatting-system-cells%})

* [ToolTips]({%slug winforms/virtualgrid/cells/tooltips%})


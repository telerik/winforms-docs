---
title: Emulate Cell Merge in RadGridView
description: This article shows how you can adjust the page's width when the control is resized
type: how-to
page_title: Emulate Cell Merge in RadGridView
slug:  emulate-cell-merge-in-radgridview
position: 0
tags: gridview, cell, merge, radgridview
res_type: kb
---

|Product Version|Product|
|----|----|
|2018.3.1016|RadGridView for WinForms|


## Description 

It is a common case to merge the cells that have same contents. Currently this is not supported out of the box in rad grid view. This article demonstrates how you can emulate this mode by hiding the borders and the text of the cell where the contents are exactly the same.

## Solution

In order to determine which sells have equal values you need a method that checks the contents of the previous and next cells. This way you will determine where the border should be hidden. The method will be called from the CellFormatting event handler. Here is a sample implementation for this.

````C#
private void RadGridView1_CellFormatting(object sender, Telerik.WinControls.UI.CellFormattingEventArgs e)
{
    e.CellElement.ResetValue(LightVisualElement.DrawBorderProperty, Telerik.WinControls.ValueResetFlags.Local);
    e.CellElement.ResetValue(LightVisualElement.DrawTextProperty, Telerik.WinControls.ValueResetFlags.Local);

    if (e.Column.Name == "CategoryID")
    {              
        HideBorders(e, radGridView1);
    }
}
private void HideBorders(CellFormattingEventArgs e, RadGridView grid)
{
    string themeName = grid.ElementTree.ThemeName;

    if (themeName == "Desert")
    {
        return;
    }

    bool isSpecialTheme = (themeName == "VisualStudio2012Dark") ||
                        (themeName == "VisualStudio2012Light") ||
                        (themeName == "Windows8");

    int index = e.Row.ViewInfo.ChildRows.IndexOf(e.Row);

    if (index < 0)
    {
        return;
    }

    bool shouldDrawText = true;

    if (index -1 >= 0)
    {
        shouldDrawText = (grid.ChildRows[index].Cells[e.ColumnIndex].Value + "") != (grid.ChildRows[index - 1].Cells[e.ColumnIndex].Value + "");
        e.CellElement.DrawText = shouldDrawText;
        e.CellElement.DrawBorder = shouldDrawText;
    }
  

    if (index + 1 < grid.ChildRows.Count)
    {
        bool shouldRemoveBorder = (grid.ChildRows[index].Cells[e.ColumnIndex].Value + "") == (grid.ChildRows[index + 1].Cells[e.ColumnIndex].Value + "");
        if (!isSpecialTheme)
        {
            e.CellElement.DrawBorder = !shouldRemoveBorder && shouldDrawText;
        }
        

        e.CellElement.RowElement.DrawBorder = !shouldRemoveBorder;
    }
}
````
````VB.NET
Private Sub RadGridView1_CellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.CellFormattingEventArgs)
    e.CellElement.ResetValue(LightVisualElement.DrawBorderProperty, Telerik.WinControls.ValueResetFlags.Local)
    e.CellElement.ResetValue(LightVisualElement.DrawTextProperty, Telerik.WinControls.ValueResetFlags.Local)

    If e.Column.Name = "CategoryID" Then
        HideBorders(e, radGridView1)
    End If
End Sub
Private Sub HideBorders(ByVal e As CellFormattingEventArgs, ByVal grid As RadGridView)
    Dim themeName As String = grid.ElementTree.ThemeName

    If themeName = "Desert" Then
        Return
    End If

    Dim isSpecialTheme As Boolean = (themeName = "VisualStudio2012Dark") OrElse (themeName = "VisualStudio2012Light") OrElse (themeName = "Windows8")

    Dim index As Integer = e.Row.ViewInfo.ChildRows.IndexOf(e.Row)

    If index < 0 Then
        Return
    End If

    Dim shouldDrawText As Boolean = True

    If index -1 >= 0 Then
        shouldDrawText = (grid.ChildRows(index).Cells(e.ColumnIndex).Value & "") <> (grid.ChildRows(index - 1).Cells(e.ColumnIndex).Value & "")
        e.CellElement.DrawText = shouldDrawText
        e.CellElement.DrawBorder = shouldDrawText
    End If


    If index + 1 < grid.ChildRows.Count Then
        Dim shouldRemoveBorder As Boolean = (grid.ChildRows(index).Cells(e.ColumnIndex).Value & "") = (grid.ChildRows(index + 1).Cells(e.ColumnIndex).Value & "")
        If Not isSpecialTheme Then
            e.CellElement.DrawBorder = Not shouldRemoveBorder AndAlso shouldDrawText
        End If


        e.CellElement.RowElement.DrawBorder = Not shouldRemoveBorder
    End If
End Sub

````

The following image shows the result from the above code. 

![](images/emulate-cell-merge-in-radgridview001)


The following article shows more complex ways for this: [RadGridView Merge Cells](https://www.telerik.com/support/kb/winforms/gridview/details/radgridview-merge-celss)



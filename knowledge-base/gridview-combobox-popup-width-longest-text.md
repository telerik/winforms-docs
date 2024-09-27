---
title: Adjusting Font Size and Width of ComboBox in RadGridView for WinForms
description: Learn how to customize the font size and dropdown width of a ComboBox column in RadGridView for WinForms to match your UI requirements.
type: how-to
page_title: How to Customize ComboBox Column Appearance in RadGridView for WinForms
slug: gridview-combobox-popup-width-longest-text
tags: gridview,  dropdownlisteditor, font, width, combobox, longest text
res_type: kb
ticketid: 1665670
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.3.806|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

Adjusting the font size of the ComboBox on a dropdown grid in RadGridView is essential for aligning it with the rest of the grid's appearance. Additionally, customizing the width of the ComboBox dropdown grid to accommodate the longest text or to a specified width enhances the UI experience. This KB article also answers the following questions:
- How can I change the font size of a dropdown in RadGridView?
- Is it possible to auto-adjust the width of a ComboBox dropdown in RadGridView to fit the longest item?
- Can I set a fixed width for the dropdown of a GridViewComboBoxColumn?

## Solution

To customize the font size of the ComboBox in a GridViewComboBoxColumn, handle the `CellEditorInitialized` event of RadGridView. Access the `EditorElement` of the active editor and modify the `Font` property of the `ListElement`.

```vb
Private Sub radGridView1_CellEditorInitialized(ByVal sender As Object, ByVal e As GridViewCellEventArgs)
    Dim editor As RadDropDownListEditor = TryCast(e.ActiveEditor, RadDropDownListEditor)

    If editor Is Nothing Then
        Return
    End If

    Dim element As RadDropDownListElement = TryCast(editor.EditorElement, RadDropDownListEditorElement)
    element.ListElement.Font = New Font(element.Font.FontFamily, 16)
End Sub
```

For adjusting the width of the dropdown to either auto width based on the longest text or to a set width, implement custom logic within the `CellEditorInitialized` event. Use the `AutoSizeItems` property and measure the text size of each item to determine the dropdown width.

```vb
Private Sub radGridView1_CellEditorInitialized(ByVal sender As Object, ByVal e As GridViewCellEventArgs)
    Dim editor As RadDropDownListEditor = TryCast(e.ActiveEditor, RadDropDownListEditor)

    If editor Is Nothing Then
        Return
    End If

    Dim element As RadDropDownListElement = TryCast(editor.EditorElement, RadDropDownListEditorElement)
    element.AutoSizeItems = True
    Dim scrollBarWidth As Integer = 0

    If element.DefaultItemsCountInDropDown < element.Items.Count Then
        scrollBarWidth = 35 ' Considering scrollbar width
    End If

    For Each item As RadListDataItem In element.Items
        Dim text As String = item.Text
        Dim size As Size = TextRenderer.MeasureText(text, element.ListElement.Font)

        If element.DropDownWidth < size.Width Then
            element.DropDownWidth = size.Width + scrollBarWidth
        End If
    Next
End Sub
```


## See Also

- [GridViewComboBoxColumn](https://docs.telerik.com/devtools/winforms/controls/gridview/columns/column-types/gridviewcomboboxcolumn)
- [Customizing Appearance](https://docs.telerik.com/devtools/winforms/controls/gridview/styling-and-appearance/styling-and-appearance)

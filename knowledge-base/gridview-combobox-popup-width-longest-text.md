---
title: Adjusting GridViewComboBoxColumn Editor DropDown Width to the Longest Text in RadGridView
description: Learn how to customize the dropdown width of a GridViewComboBoxColumn editor to match the longest item text width.
type: how-to
page_title: How to Customize GridViewComboBoxColumn Editor in RadGridView for WinForms
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

By default, the width of the dropdown popup in the GridViewComboBoxColumn will match the size of the column. This way, items which text is bigger than the size of the column will be clipped. In this article, we will demonstrate how we can adjust the popup size to the longest item text in the dropdown.

## Solution

To customize the GridViewComboBoxColumn editor, handle the `CellEditorInitialized` event of RadGridView. For adjusting the width of the dropdown to either auto width based on the longest text or to a set width, implement custom logic within the `CellEditorInitialized` event. Use the `AutoSizeItems` property and measure the text size of each item to determine the dropdown width.

````C#
private void radGridView1_CellEditorInitialized(object sender, GridViewCellEventArgs e)
{
    RadDropDownListEditor editor = e.ActiveEditor as RadDropDownListEditor;
    if (editor == null)
    {
        return;
    }

    RadDropDownListElement element = editor.EditorElement as RadDropDownListEditorElement;
    element.AutoSizeItems = true;

    int scrollBarWidth = 0;

    if (element.DefaultItemsCountInDropDown < element.Items.Count)
    {
        scrollBarWidth = 35;
    }

    foreach (RadListDataItem item in element.Items)
    {
        string text = item.Text;
        item.TextAlignment = ContentAlignment.MiddleCenter;
        Size size = TextRenderer.MeasureText(text, element.ListElement.Font);

        if (element.DropDownWidth < size.Width)
        {
            element.DropDownWidth = size.Width + scrollBarWidth;
        }
    }
}

````

## See Also

- [GridViewComboBoxColumn](https://docs.telerik.com/devtools/winforms/controls/gridview/columns/column-types/gridviewcomboboxcolumn)
- [Customizing Appearance](https://docs.telerik.com/devtools/winforms/controls/gridview/styling-and-appearance/styling-and-appearance)

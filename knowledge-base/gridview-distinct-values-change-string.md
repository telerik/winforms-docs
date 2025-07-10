---
title: Customizing Filter Text for Enum and Bool Columns in RadGridView
description: Learn how to customize the filter menu text for bool and enum columns in RadGridView for WinForms, replacing default values with user-friendly labels.
type: how-to
page_title: How to Change Filter Menu Text for Bool and Enum Columns in RadGridView
meta_title: Changing Filter Menu Text for Bool and Enum Columns in RadGridView
slug: radgrid-customizing-filter-text
tags: radgridview, winforms, filter, bool, enum, customization
res_type: kb
ticketid: 1690734
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.2.520|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

I want to customize the automatic filter menu in RadGridView for WinForms in two ways:

1. For columns of type `bool`, replace "True" and "False" with "Checked" and "Unchecked".
2. For columns of type `enum`, display the text from their `[Description]` attribute instead of the raw enum names.

## Solution

To achieve this customization, handle the `FilterPopupInitialized` event of RadGridView and modify the text in the filter menu using the `RadTreeView.NodeFormatting` event. Below is the implementation:

### Customizing Bool Column Filter Text

Use the following code:

````C#

this.radGridView1.FilterPopupInitialized += RadGridView1_FilterPopupInitialized;   

private void RadGridView1_FilterPopupInitialized(object sender, FilterPopupInitializedEventArgs e)
{
    if (e.Column.Name == "boolColumn") // Replace with your column name
    {
        RadListFilterPopup radListFilterPopup = e.FilterPopup as RadListFilterPopup;

        if (radListFilterPopup != null)
        {
            radListFilterPopup.MenuTreeElement.TreeView.NodeFormatting -= BoolFormattingHandler;
            radListFilterPopup.MenuTreeElement.TreeView.NodeFormatting += BoolFormattingHandler;
            radListFilterPopup.MenuTreeElement.TreeView.Refresh();
        }
    }
}

private void BoolFormattingHandler(object sender, TreeNodeFormattingEventArgs e)
{
    if (e.Node.Text == "False")
        e.NodeElement.ContentElement.Text = "Unchecked";
    else if (e.Node.Text == "True")
        e.NodeElement.ContentElement.Text = "Checked";
}

````

### Customizing Enum Column Filter Text

For enum values with `[Description]` attributes, use the following code:

````C#

this.radGridView1.FilterPopupInitialized += RadGridView1_FilterPopupInitialized;

private void RadGridView1_FilterPopupInitialized(object sender, FilterPopupInitializedEventArgs e)
{
    if (e.Column.Name == "enumColumn") // Replace with your column name
    {
        RadListFilterPopup radListFilterPopup = e.FilterPopup as RadListFilterPopup;

        if (radListFilterPopup != null)
        {
            radListFilterPopup.MenuTreeElement.TreeView.NodeFormatting -= EnumFormattingHandler;
            radListFilterPopup.MenuTreeElement.TreeView.NodeFormatting += EnumFormattingHandler;
            radListFilterPopup.MenuTreeElement.TreeView.Refresh();
        }
    }
}

private void EnumFormattingHandler(object sender, TreeNodeFormattingEventArgs e)
{
    string description = GetEnumDescription(e.Node.Text);
    if (!string.IsNullOrEmpty(description))
        e.NodeElement.ContentElement.Text = description;
}

private string GetEnumDescription(string enumName)
{
    // Replace YourEnumType with the actual enum type
    var fieldInfo = typeof(YourEnumType).GetField(enumName);
    var attributes = (DescriptionAttribute[])fieldInfo.GetCustomAttributes(typeof(DescriptionAttribute), false);
    return attributes.Length > 0 ? attributes[0].Description : enumName;
}

````

## See Also

- [RadGridView Documentation](https://docs.telerik.com/devtools/winforms/controls/gridview/overview)

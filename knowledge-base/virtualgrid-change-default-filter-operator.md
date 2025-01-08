---
title: Change default filter operator in RadVirtualGrid for WinForms
description: Learn how to change the default filter operator in RadVirtualGrid
type: how-to
page_title: How to Change default filter operator in RadVirtualGrid
slug: virtualgrid-change-default-filter-operator
tags: virtualgrid, grid, winforms, filtering, filter operator
res_type: kb
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.4.1127|RadVirtualGrid for WinForms|[Nadya Todorova](https://www.telerik.com/blogs/author/nadya-karaivanova)|

## Description

When performing filtering in RadVirtualGrid, the client may want to change the FilterOperator that is shown by default. 

## Solution

In order to change the default filter operator for a particular column in RadVirtualGrid, you can use a custom **VirtualGridFilterCellElement**. Please refer to the following article for more information about how to create a custom cells: [Creating custom cells](https://docs.telerik.com/devtools/winforms/controls/virtualgrid/cells/creating-custom-cells)

In this case, you need to create a custom VirtualGridFilterCellElement and override its UpdateInfo(). Follow these steps to implement the solution where the **FilterOperatorText** is changed to *DoesNotContain*:

````C#
private void RadVirtualGrid1_CreateCellElement(object sender, VirtualGridCreateCellEventArgs e)
{
    if (e.CellType == typeof(VirtualGridFilterCellElement))
    {
        e.CellElement = new CustomVirtualGridFilterCellElement();
    }
}

public class CustomVirtualGridFilterCellElement : VirtualGridFilterCellElement
{
    protected override Type ThemeEffectiveType
    {
        get
        {
            return typeof(VirtualGridFilterCellElement);
        }
    }
    protected override void UpdateInfo(VirtualGridCellValueNeededEventArgs args)
    {
        base.UpdateInfo(args);
        if (this.Descriptor == null)
        {
            Type columnType = this.ViewInfo.GetColumnDataType(this.ColumnIndex);
            if (this.ColumnIndex == 0)
            {
                RadVirtualGridLocalizationProvider currentProvider = RadVirtualGridLocalizationProvider.CurrentProvider;
                string text = currentProvider.GetLocalizedString(RadVirtualGridStringId.FilterFunctionDoesNotContain);
                this.FilterOperatorText.Text = text + ":";
            }
        }
    }
}

````

## See Also

* [Filtering](https://docs.telerik.com/devtools/winforms/controls/virtualgrid/filtering/filtering)
* [Creating custom cells](https://docs.telerik.com/devtools/winforms/controls/virtualgrid/cells/creating-custom-cells)

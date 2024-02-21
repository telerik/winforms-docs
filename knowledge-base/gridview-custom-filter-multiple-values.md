---
title: Filtering GridView by Multiple Values in RadGridView for WinForms
description: Learn how to filter a GridView in RadGridView for WinForms by multiple values copied from an Excel column without using the "is in list" option.
type: how-to
page_title: Filtering GridView by Multiple Values in RadGridView for WinForms | Telerik UI for WinForms
slug: filtering-gridview-multiple-values-radgridview-winforms
tags: radgridview, filtering, multiple values, excel
res_type: kb
---

## Environment

| Product | Version |
|---------|---------|
| RadGridView for WinForms | 2023.3.1114 |

## Description

I want to filter a GridView in RadGridView for WinForms by a list of values copied from an Excel column without having to use the "is in list" option. I have seen the option in the Custom Filtering demo, but it only allows searching for one value in the entire GridView. Is it possible to filter by multiple values?

## Solution

To filter a GridView in RadGridView for WinForms by multiple values, you can modify the code from the Custom Filtering demo. Follow these steps:

1. Handle the `radGridView1_CustomFiltering` event.
2. Check if the filter text is empty. If it is, reset the styles of all cells and make all rows visible.
3. If the filter text is not empty, split it into multiple values using a comma as the separator.
4. Iterate through each cell in the row and compare its value to each of the filter values.
5. If a match is found, make the row visible and customize the fill color of the cell.
6. If no match is found, reset the style of the cell.
7. End the update of the GridView.

Here is the modified code:

```csharp
private void radGridView1_CustomFiltering(object sender, GridViewCustomFilteringEventArgs e)
{
    if (string.IsNullOrEmpty(this.filterTextBox.Text))
    {
        this.radGridView.BeginUpdate();
        e.Visible = true;
        for (int i = 0; i < this.radGridView.ColumnCount; i++)
        {
            e.Row.Cells[i].Style.Reset();
        }
        this.radGridView.EndUpdate(false);
        return;
    }

    this.radGridView.BeginUpdate();
    e.Visible = false;

    var searchValues = this.filterTextBox.Text.Split(',');

    for (int i = 0; i < this.radGridView.ColumnCount; i++)
    {
        string text = e.Row.Cells[i].Value.ToString();
        bool searchWordFound = false;

        foreach (var searchValue in searchValues)
        {
            if (string.IsNullOrEmpty(searchValue))
            {
                continue;
            }

            if (text.IndexOf(searchValue, 0, StringComparison.InvariantCultureIgnoreCase) >= 0)
            {
                searchWordFound = true;
            }
        }

        if (searchWordFound)
        {
            e.Visible = true;
            e.Row.Cells[i].Style.CustomizeFill = true;
            e.Row.Cells[i].Style.DrawFill = true;
            e.Row.Cells[i].Style.BackColor = Color.FromArgb(201, 252, 254);
        }
        else
        {
            e.Row.Cells[i].Style.Reset();
        }
    }

    this.radGridView.EndUpdate(false);
}
```

Now you can use this modified code to filter a GridView in RadGridView for WinForms by multiple values copied from an Excel column.

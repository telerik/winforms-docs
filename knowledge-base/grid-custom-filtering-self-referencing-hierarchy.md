---
title: Filtering Child Rows in Self-referencing Hierarchy While Keeping Parent Row Visible
description: Learn how to filter rows in a self-referencing hierarchical RadGridView while keeping parent rows visible when child rows match the filter condition.
type: how-to
page_title: Filtering Self-referencing Hierarchical RadGridView with Parent Row Visibility
meta_title: Filtering Self-referencing Hierarchical RadGridView with Parent Row Visibility
slug: grid-custom-filtering-self-referencing-hierarchy
tags: gridview, ui-for-winforms, filtering, custom-filtering, self-referencing-hierarchy
res_type: kb
ticketid: 1700615
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.3.812|RadGridView for WinForms|[Nadya Karaivanova](https://www.telerik.com/blogs/author/nadya-karaivanova)|

## Description

I want to filter rows in a self-referencing hierarchical RadGridView using custom filtering while keeping parent rows visible as long as any child rows match the filter condition.

This knowledge base article also answers the following questions:
- How to implement recursive filtering in RadGridView for hierarchical data.
- How to use custom filtering with self-referencing hierarchical RadGridView.
- How to keep parent rows visible during filtering in hierarchical RadGridView.

## Solution

To achieve hierarchical filtering that retains parent rows when child rows match, use the `CustomFiltering` event and implement recursive filtering logic. Follow these steps:

1. Subscribe to the `CustomFiltering` event of the RadGridView.
2. Implement a recursive method to evaluate each row and its child rows against the filter condition.
3. Set the filtering logic so that parent rows remain visible if any matching child rows are found.

### Implementation Example

```csharp
private void radGridView_CustomFiltering(object sender, GridViewCustomFilteringEventArgs e)
{
    // Define the filter condition
    string filterValue = textBoxFilter.Text.ToLower();
    e.Visible = DoesRowMatchFilter(e.Row, filterValue);
}

private bool DoesRowMatchFilter(GridViewRowInfo row, string filterValue)
{
    if (row.Cells["ItemName"].Value.ToString().ToLower().Contains(filterValue))
    {
        return true; // Row matches the filter
    }

    foreach (GridViewRowInfo childRow in row.ChildRows)
    {
        if (DoesRowMatchFilter(childRow, filterValue)) // Check child rows recursively
        {
            return true; // Parent remains visible if any child matches
        }
    }

    return false; // No match found in parent or children
}

// Example: Update filter when the TextBox content changes
private void textBoxFilter_TextChanged(object sender, EventArgs e)
{
    radGridView.MasterTemplate.Refresh(); // Refresh the grid to apply the new filter
}
```

### Key Points
- `DoesRowMatchFilter` recursively checks the current row and its child rows against the filter condition.
- Rows remain visible if they match the condition or have child rows that match.
- The `Refresh` method ensures the grid updates after the filter changes.

## See Also
- [Custom Filtering](https://docs.telerik.com/devtools/winforms/controls/gridview/features/filtering/custom-filtering) 
- [Hierarchical GridView](https://docs.telerik.com/devtools/winforms/controls/gridview/hierarchical-grid/hierarchical-gridview-overview)
- [RadGridView Filtering](https://docs.telerik.com/devtools/winforms/controls/gridview/features/filtering/overview)

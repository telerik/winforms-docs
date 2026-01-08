---
title: Exporting Collapsed Child Rows in Self-Referencing Hierarchy GridView to Excel
description: Learn how to export collapsed child rows in a self-referencing hierarchy GridView to Excel while maintaining collapsible functionality.
type: how-to
page_title: Export Self-Referencing Hierarchy GridView with Collapsed Groups to Excel
meta_title: Export Self-Referencing Hierarchy GridView with Collapsed Groups to Excel
slug: gridview-export-groups-collapsed
tags: gridview, ui for winforms, self-referencing hierarchy, excel export, collapsed rows
res_type: kb
ticketid: 1684298
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2025.4.1111|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

When exported, child rows collapse as expected initially. However, when a parent row is expanded, its child rows are no longer collapsed. In this article, we will demonstrate how to maintain this collapsible functionality for child rows even after expanding a parent row.

## Solution

To export a self-referencing hierarchy GridView to Excel with child rows collapsed while preserving their collapsible functionality, follow these steps:

1. Use `GridViewSpreadExport` to export the GridView.
2. Set the `ExportChildRowsGrouped`, `ExportVisualSettings`, and `ExportHierarchy` properties to `True`.
3. Handle the `WorkbookCreated` event and hide rows based on their outline level.

````C#

private void radButton1_Click(object sender, EventArgs e)
{
    GridViewSpreadExport export = new GridViewSpreadExport(this.radGridView1);
    export.ExportChildRowsGrouped = true;
    export.ExportVisualSettings = true;
    export.ExportHierarchy = true;
    var renderer = new SpreadExportRenderer();
    renderer.WorkbookCreated += this.Renderer_WorkbookCreated;
    export.RunExport(@"..\..\Exported\spreadsheet" + DateTime.Now.ToString("HH-mm-ss"), renderer);
}
 
private void Renderer_WorkbookCreated(object sender, WorkbookCreatedEventArgs e)
{
    var worksheet = e.Workbook.Worksheets[0];
    CellRange usedCellRange = worksheet.UsedCellRange;
    for (int rowIndex = usedCellRange.FromIndex.RowIndex; rowIndex <= usedCellRange.ToIndex.RowIndex; rowIndex++)
    {
        RangePropertyValue<int> outlineLevelRangeValue = worksheet.Rows[rowIndex].GetOutlineLevel();
        int outLineLevel = outlineLevelRangeValue.Value;
        if (outLineLevel > 0)
        {
            RowSelection rowSelection = worksheet.Rows[rowIndex];
            rowSelection.SetHidden(true);
        }
    }
}

````

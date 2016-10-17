---
title: Export to Excel with SpreadsheetStreaming library.
page_title: Export to Excel with SpreadsheetStreaming library. | RadGridView
description: Use SpreadsheetStreaming library to export grids that contain significant amount of data.
slug: winforms/gridview/exporting-data/streaming-export
tags: spread,export,excel,xlsx
published: True
position: 3
---

## SpreadsheetStreaming Export 

The SpreadsheetStreaming uses the RadSpreadStreamProcessing library which allows you to create big documents and export them to the most common formats. 

> note The spread export functionality is located in the __TelerikExport.dll__ assembly. You need to include the following namespace in order to access the types contained in TelerikExport:

* Telerik.WinControls.TelerikExport
>

>important Since this functionality is using the __RadSpreadStreamProcessing__ library you need to reference the following assemblies as well:

* Telerik.Documents.SpreadsheetStreaming


# Exporting

To use the spread export functionality create an instance of the __GridViewSpreadStreamExport__ object. Pass as parameter the __RadGridView__ instance to export. Afterwards, the __RunExport__ method will trigger the export process. The latter method accepts as parameter a filename of the file to be exported.

#### Exporting the grid. 
\\Code

## Properties

|Property|Description|
|---|---|
|__ExportHierarchy__|Set it to true if you want to export the child templates/rows.|
|__ExportVisualSettings__|Gets or sets a value indicating whether the visual settings should be exported.|
|__SheetName__|Gets or sets the name of the sheet.|
|__SheetMaxRows__| Gets or sets the maximum number of rows per sheet.|
|__SummariesExportOption__|Gets or sets a value indicating how summary rows are exported.|
|__HiddenColumnOption__|Gets or sets a value indicating how hidden columns are exported.|
|__HiddenRowOption__|Gets or sets a value indicating how hidden rows are exported.|
|__PagingExportOption__|Gets or sets a value indicating how the export behaves when paging is enabled.|
|__ChildViewExportMode__|Gets or sets the child view export mode.|
|__RadGridViewToExport__|Gets or sets the RadGridView to export.|
|__ExportFormat__|Gets or sets the format of the exported file - XLSX or CSV.|
|__ExportGroupedColumns__|Gets or sets a value indicating whether to export grouped columns.|
|__FreezeHeaderRow__|Gets or sets a value indicating whether to freeze the header row in the exported file.|
|__FreezePinnedRows__|Gets or sets a value indicating whether to freeze pinned rows.|
|__FreezePinnedColumns__|Gets or sets a value indicating whether to freeze pinned columns.|
|__ExportChildRowsGrouped__|Gets or sets a value indicating whether to export hierarchy and group child rows grouped.|
|__ExportViewDefinition__|Gets or sets a value indicating whether to export [view definition]({%slug winforms/gridview/view-definitions/overview%}) |


## Events

### CellFormatting

This event occurs for every cell that is being exported. It can be used for styling the cells or applying custom format to the cells values.

#### Using the CellFormatting event

/code

### RowCreated

Occurs when a new row is created in current worksheet. This is suitable place to set any row properties (like height) and/or add any indent cells.

#### Using RowCreated to set the rows height.

\\code


### RowExporting 

Occurs before every spread row is exported. This is suitable place to add any additional cells at the end of the row.


\\Code


### ExportCompleted

Occurs when the export process completes.

\\Code


## Asynchronous Export

This feature can be utilized by calling the __RunExportAsync__ method on the __GridViewSpreadStreamExport__ object.


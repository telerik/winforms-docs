---
title: Export to Excel
page_title: Export to Excel - WinForms GridView Control
description: Get familiar with the SpreadExport abilities that WinForms GridView offers. 
slug: winforms/gridview/exporting-data/spread-export
tags: spread,export,excel,xlsx
published: True
position: 1
previous_url: gridview-exporting-data-spread-export
---

# Spread export 

__GridViewSpreadExport__ utilizes our [RadSpreadProcessing](http://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/overview) library to export the content of __RadGridView__ to *xlsx, csv, pdf* and *txt* formats. 

>note As of **R3 2020 SP1** GridViewSpreadExport also supports exporting to *xls*.

This article explains in detail the **SpreadExport** abilities and demonstrates how to use it for:

* [Exporting Data](#exporting)

* [Exporting Grouped Data](#exporting-grouped-data)

* [Async Spread Export](#async-spread-export)

The following images show how a grid looks when you export it:<br>![Telerik UI for WinForms RadGridView showing the original grid data before spread export](images/gridview-exporting-data-spread-export001.png)![Telerik UI for WinForms RadGridView exported worksheet showing the grid data in Excel format](images/gridview-exporting-data-spread-export002.png)

>note The spread export functionality requires the __TelerikExport.dll__ assembly. To access the types in TelerikExport, you must include the assembly in your project and reference the __Telerik.WinControls.Export__ namespace.

The spread export functionality also requires the [RadSpreadProcessing Library](http://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/overview). To use this Library, you must reference the following assemblies:

* TelerikExport

* Telerik.Windows.Documents.Core

* Telerik.Windows.Documents.Fixed

* Telerik.Windows.Documents.Spreadsheet

* Telerik.Windows.Documents.Spreadsheet.FormatProviders.OpenXml

* Telerik.Windows.Documents.Spreadsheet.FormatProviders.Pdf

* Telerik.Windows.Zip

## Exporting

To use the spread export functionality:

1. Create an instance of the __GridViewSpreadExport__ object.

1. Pass the __RadGridView__ instance that you want to export as a parameter.

1. Use the __RunExport__ method to trigger the export process. __RunExport__ accepts a filename as a parameter for the exported file.

**Export RadGridView content to an XLSX file**

<snippet id='gridview-spreadexport1-export-cs' />
<snippet id='gridview-spreadexport1-export-vb' />

### Running export synchronously using a stream

The __RunExport__ method has several overloads that allow the user to export using a stream as well:

<snippet id='gridview-spreadexport1-streamrunexport-cs' />
<snippet id='gridview-spreadexport1-streamrunexport-vb' />

### Image exporting

**GridViewSpreadExport** allows you to export images. Observe the following specifics when you use **GridViewSpreadExport**:

* Image exporting requires __GridViewSpreadExport R1 2018 SP1__ or later.

* The **ImageAlignment** property of the column is respected. 

* ImageLayout.*Tile* is not supported.

>important Image export is not available in the XLS format provider. See the [Xls Features](https://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/formats-and-conversion/import-and-export-to-excel-file-formats/xls/features) article for a list of all supported features.
>


>caption Figure: Image Export

![Telerik UI for WinForms RadGridView exported worksheet showing image content preserved during spread export](images/gridview-exporting-data-spread-export006.png)


## Properties

* __ExportFormat__: Defines the format the grid will be exported to. The available values are __Xslx, Xls, Pdf, Csv, Txt__. The default value of the property is __Xslx__, hence if not other specified, the exporter will export to __Xslx__.

* __ExportVisualSettings:__ Allows you to export the visual settings (themes) to the exported file. **RadGridView** will also export all formatting to the Excel file. The column width and row height will also be matched in the exported file.

* __ExportHierarchy:__ Defines whether the exporter will export hierarchical data or not.

* __ChildViewExportMode:__ Defines which child view of a hierarchy row to be exported. Available modes are:

    - *ExportFirstView*: The exporter exports the first view.
                

    - *ExportCurrentlyActiveView*: The exporter exports the view that is actived in the grid.
                

    - *SelectViewToExport*: In this mode the __ChildViewExporing__ event is fired. The event allows to choose the view to export in row by row basis.

    - *ExportAllViews*: In this mode all child views are exported. Available in GridViewSpreadExport and GridViewPdfExport.   

>caution You can either export all child views or just one. You can't export some specific child views.      

* __HiddenColumnOption:__ Defines whether hidden columns will be exported. Available options are:
    - *ExportAlways*: The exporter will export hidden columns as well.
                
    - *DoNotExport*: The exporter will not export hidden columns.
                
    - *ExportAsHidden*: The exporter will export hidden columns as hidden in excel.

* __HiddenRowOption:__ Defines whether hidden rows will be exported. Available options are:

    - *ExportAlways*: The exporter will export hidden rows as well.
                
    - *DoNotExport*: The exporter will not export hidden rows.
                
    - *ExportAsHidden*: The exporter will export hidden rows as hidden in excel.

    >note MS Excel does not support other ways of hiding a column/row different from setting its width to zero. To avoid including hidden columns or rows in the exported excel file you could set __HiddenColumnOption__ or __HiddenRowOption__ property to *DoNotExport*.
    

* __PagingExportOption:__ Defines which pages to be exported, when paging is used in **RadGridView**.

    - *CurrentPageOnly*: The exporter will export only the data on the current page.

    - *AllPages*: The exporter will export the data from all pages.

* __SummariesExportOption:__ Allows to specify how to export summary items. There are four options to choose:

    - *ExportAll (default)*: The exporter will export all summary rows. This is the default setting.

    - *ExportOnlyTop*: The exporter will export only the top summary rows.

    - *ExportOnlyBottom*: The exporter will export only the bottom summary rows.

    - *DoNotExport*: The exporter will not export any summary rows.

* __RadGridViewToExport:__ This property is used to set the instance of **RadGridView** to export.

* __SheetMaxRows:__ Тhe exporter splits the data on separate sheets if the number of rows is greater than the Excel maximum. You can control the maximum number of rows through this **SheetMaxRows** property. Available options are:

    - *1048576*: Max rows for Excel 2007 and above

    - *65536 (default)*: Max rows for previous versions of Excel. This is the default setting.

* __SheetName:__ Defines the sheet name of the sheet to export to. If your data is large enough to be split on more than one sheets, then the export method adds index to the names of the next sheets.

* __FileExportMode:__ This property determines whether the data will be exported into an existing or a new file. If new is chosen and such exists it will be overridden. Available options are:

    - *NewSheetInExistingFile*: This option will create a new sheet in an already existing file.

    - *CreateOrOverrideFile*: Creates new or overrides an existing file.

__ExportViewDefinition:__  Gets or sets a value indicating whether to export the [view definition.]({%slug winforms/gridview/view-definitions/overview%})

>caution View definition is currently exported only for the master level. It is not supported for child templates in a hierarchical grid.


### Exported Cells Data Type

Each column in **RadGridView** has an __ExcelExportType__ property that you can use to explicitly set the data type of the cells in the exported document. To change the format of the exported data:

1. Set the __ExcelExportType__ property of the specific column to *Custom*.

1. Specify the __ExcelExportFormatString__ property with the desired format.

For more details on specifying the desired format, see [Format Codes](http://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/features/format-codes).

## Events

### CellFormatting 

This event is used to format the cells to be exported. The event arguments provide:

* *CellSelection*:  After casting to the __CellSelection__ class, it provides access to the excel cells selection. More information about the abilities this object introduces, can be found here: [Get, Set and Clear Cell Properties](http://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/working-with-cells/get-set-clear-properties).

* *CellStyleInfo*: This object is a wrapper of the **CellSelection** object, and allows to easier modification of the most common appearance settings.

* *GridCellInfo*: Provides access to the grid cell to be exported.

* *GridColumnIndex*: Returns the index of the column to be exported.

* *GridRowIndex*: Returns the index of the row to be exported.

* *GridRowInfoType*: Returns the type of the row to be exported.

Here is an example of formatting the exported grid:

**Apply custom export styles to table headers and hierarchy rows**

<snippet id='gridview-spreadexport1-cellformatting-cs' />
<snippet id='gridview-spreadexport1-cellformatting-vb' />

![Telerik UI for WinForms RadGridView exported worksheet showing custom formatting for headers and hierarchy rows](images/gridview-exporting-data-spread-export003.png)

### WorkbookCreated 

This event is triggered on the __SpreadExportRenderer__ object when the workbook is ready to be exported. Allows to introduce final customizations (for example you can add [header and footer]({%slug winforms/gridview/exporting-data/how-to/add-header-and-footer-to-the-exported-document%})). More information on how to work with Workbook is available here: [Working with Workbooks](http://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/working-with-workbooks/create-open-and-save-workbooks).

### ChildViewExporting

This event is used to specify which child view to be exported, for each exported row, during the export. It will be triggered only when the __ChildViewExportMode__ is set to *SelectViewToExport*. The event arguments provide the __ParentRow__ which active view should be set via the __ActiveViewIndex__ property.

### ExportCompleted

This event is triggered when the export operation completes.

## Exporting Grouped Data

__RadGridView__ can export its grouped content by simply setting the __ExportChildRowsGrouped__ property of the __GridViewSpreadExport__ object to *true*.

>caption Figure: Exporting Grouped Data

![Telerik UI for WinForms RadGridView exported worksheet showing grouped data preserved in the spread export output](images/gridview-exporting-data-spread-export005.png)

#### Exporting Grouped Data

<snippet id='gridview-spreadexport1-exportinggroupeddata-cs' />
<snippet id='gridview-spreadexport1-exportinggroupeddata-vb' />

## Async Spread Export

__RadGridView__ can export its content asynchronously. This feature can be utilized by calling the  __RunExportAsync__ method on the __GridViewSpreadExport__ object.

>important To achieve optimal performance and to decrease the consumed memory, the visual settings and view definitions in __RadGridView__ are not exported when the operation is run asynchronously.
>

## Methods

The following methods of the __GridViewSpreadExport__ class are responsible for exporting the data:

* __RunExportAsync__: Starts an export operation which runs in a background thread.

* __CancelExportAsync__: Cancels an export operation.

## Events

The following events provide information about the state of the export operation:

* __AsyncExportProgressChanged__: Occurs when the progress of an asynchronous export operation changes.

* __AsyncExportCompleted__: Occurs when an async export operation is completed.

## Exporting Data Asynchronously

This example demonstrates how to combine the async spread export feature with a __RadProgressBar__ control to deliver better user experience.
        
>caption Figure: Exporting Data Asynchronously

![Telerik UI for WinForms RadGridView showing asynchronous spread export progress with a progress bar](images/gridview-exporting-data-async-spread-export001.gif)

1\. Bind __RadGridView__ and define the initial settings.

<snippet id='gridview-asyncspreadexport-bindanddefinesettings-cs' />
<snippet id='gridview-asyncspreadexport-bindanddefinesettings-vb' />

2\. Start export and subscribe to the progress notification events.

<snippet id='gridview-asyncspreadexport-exportdata-cs' />
<snippet id='gridview-asyncspreadexport-exportdata-vb' />

3\. Handle the notification events and report progress.

<snippet id='gridview-asyncspreadexport-reportprogress-cs' />
<snippet id='gridview-asyncspreadexport-reportprogress-vb' />

The __RunExportAsync__ method has several overloads allowing the user to export using a stream as well:

<snippet id='gridview-spreadexport1-streamrunexportasync-cs' />
<snippet id='gridview-spreadexport1-streamrunexportasync-vb' />

## See Also
* [Export Data in a Group to Excel]({%slug winforms/gridview/exporting-data/export-data-in-a-group-to-excel%})

* [Export to CSV]({%slug winforms/gridview/exporting-data/export-to-csv%})

* [Export to Excel via ExcelML Format]({%slug winforms/gridview/exporting-data/export-to-excel-via-excelml-format%})

* [Export to PDF]({%slug winforms/gridview/exporting-data/export-to-pdf%})

* [Export to HTML]({%slug winforms/gridview/exporting-data/export-to-html%})

* [Overview]({%slug winforms/gridview/exporting-data/overview%})

* [Troubleshooting]({%slug winforms/gridview/exporting-data/troubleshooting%})


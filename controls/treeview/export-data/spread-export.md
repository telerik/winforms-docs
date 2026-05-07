---
title: Spread Export
page_title: Spread Export - RadTreeView
description: This article shows how you can export the contents of RadTreeView to excel, csv, pdf or txt formats.
slug: winforms/treeview/export-data/spread-export
tags: spread,export
published: True
position: 0
previous_url: treeview-export-data-spread-export
---

# Spread Export

__TreeViewSpreadExport__ utilizes our [RadSpreadProcessing](http://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/overview) libraries to export the contents of __RadTreeView__ to *xlsx, csv, pdf* or *txt* formats. 

>note As of **R3 2020 SP1** TreeViewSpreadExport also supports exporting to *xls*.

This article will explain in detail the SpreadExport capabilities and will demonstrate how you can use it.
 
* [Exporting Data](#exporting-data)

* [Async Spread Export](#async-spread-export)

Here is how the following RadTreeView, looks when it is exported.
      
>caption Figure 1: Before export

![WinForms RadTreeView Before export](images/treeview-export-data-spread-export001.png)

>caption Figure 2: After export
![WinForms RadTreeView After export](images/treeview-export-data-spread-export002.png)

>important The spread export functionality is located in the __TelerikExport.dll__ assembly. You need to include the following namespace in order to access the types contained in TelerikExport: **Telerik.WinControls.TelerikExport**
Since this functionality is using the [RadSpreadProcessingLibrary](http://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/overview) you need to reference the following assemblies as well:

````XML
Telerik.Windows.Documents.Core
Telerik.Windows.Documents.Fixed
Telerik.Windows.Documents.Spreadsheet
Telerik.Windows.Documents.Spreadsheet.FormatProviders.OpenXml
Telerik.Windows.Documents.Spreadsheet.FormatProviders.Pdf
Telerik.Windows.Zip
````

## Exporting Data

To use the spread export functionality, an instance of the __TreeViewSpreadExport__ object should be created, passing as parameter the __RadtreeView__ instance to export. Afterwards, the __RunExport__ method will trigger the export process. The latter method accepts as parameter a filename of the file to be exported.

You should pass an instance of a [SpreadExportRenderer]({%slug winforms/telerik-presentation-framework/export-renderers/spreadexportrenderer%}) to the export method as well.

<snippet id='treeview-spreadexportcode-export-cs' />
<snippet id='treeview-spreadexportcode-export-vb' />



The __RunExport__ method has several overloads allowing the user to export using a stream as well.

####  Running export synchronously using a stream

<snippet id='treeview-spreadexportcode-streamrunexport-cs' />
<snippet id='treeview-spreadexportcode-streamrunexport-vb' />



## Properties

* __ExportFormat:__ Defines the format the TreeView will be exported to. The available values are __Xslx, Pdf, Csv, Txt__. The default value of the property is __Xslx__, hence if not other specified, the exporter will export to __Xslx__.

* __ExportVisualSettings:__ Allows you to export the visual settings (themes) to the exported file. RadTreeView will also export all formatting to the Excel file.
            

* __SheetMaxRows:__ The exporter splits the data on separate sheets if the number of rows is greater than the Excel maximum. You can control the maximum number of rows through this __SheetMaxRows__  property. Available options are:
    * __1048576:__ Max rows for Excel 2007 and above
    * __65536 (default):__ Max rows for previous versions of Excel. This is the default setting.
                

* __SheetName:__ Defines the sheet name of the sheet to export to. If your data is large enough to be split on more than one sheets, then the export method adds index to the names of the next sheets.
            

* __FileExportMode:__ This property determines whether the data will be exported into an existing or a new file. If new is chosen and such exists it will be overridden. Available options are:
    * __NewSheetInExistingFile:__ This option will create a new sheet in an already existing file.
    * __CreateOrOverrideFile:__ Creates new or overrides an existing file.
                

* __ExportImages:__ Gets or sets a value indicating whether to export images.
            

* __ExportChildNodesGrouped:__ Gets or sets a value indicating whether to export child nodes grouped.
            

* __NodeIndent:__ Gets or sets the indent of child nodes.
            

* __CollapsedNodeOption:__ Gets or sets a value indicating how children of collapsed nodes are exported.

* __ExportCheckBoxes:__ Gets or sets a value indicating whether to export the check box values, when they are shown in tree nodes.

>note  __ExportCheckBoxes__ property is available since R1 2021. 
            

## Events

* __CellFormatting:__ This event is used to format the cells to be exported. The event arguments provide:
    * __TreeNode:__ Gives you access to the currently exported node.
    * __ExportCell:__ Allows you to set the styles of the exported cell.
    * __RowIndex:__ The index of the currently exported row. Here is an example of formatting the exported TreeView

<snippet id='treeview-spreadexportcode-formatting-cs' />
<snippet id='treeview-spreadexportcode-formatting-vb' />



>caption Figure 2: Export using formating

![WinForms RadTreeView Export using formating](images/treeview-export-data-spread-export003.png)

* __ExportCompleted__: This event is triggered when the export operation completes.

## Async Spread Export

__RadTreeView__ provides functionality for asynchronous spread export. This feature can be utilized by calling the __RunExportAsync__ method on the __TreeViewSpreadExport__ object.


>caution If the __ExportVisualSettings__ property is set to *true* the UI can be freezed at some point. This is expected since exporting the visual settings requires creating visual elements for all nodes and updating the exported control UI.


The following example will demonstrate how the async spread export feature can be combined with a __RadProgressBar__ control to deliver better user experience.
        
>caption Fig.3 Exporting Data Asynchronously

![WinForms RadTreeView Exporting Data Asynchronously](images/treeview-export-data-spread-export004.png)

1.The following code shows how you can subscribe to the notification events and start the async export operation.

<snippet id='treeview-spreadexportcode-asyncexport-cs' />
<snippet id='treeview-spreadexportcode-asyncexport-vb' />



2.Handle the notification events and report progress.

<snippet id='treeview-spreadexportcode-reportprogress-cs' />
<snippet id='treeview-spreadexportcode-reportprogress-vb' />



The __RunExportAsync__ method has several overloads allowing the user to export using a stream as well:

####  Running export asynchronously using a stream

<snippet id='treeview-spreadexportcode-streamrunexportasync-cs' />
<snippet id='treeview-spreadexportcode-streamrunexportasync-vb' />



## Async Export Methods and Events

### Methods

The following methods of the __TreeViewSpreadExport__ class are responsible for exporting the data.
        

* __RunExportAsync:__ Starts an export operation which runs in a background thread.
            

* __CancelExportAsync:__ Cancels an export operation.
            

### Events 

The following events provide information about the state of the export operation.
        
* __AsyncExportProgressChanged__: Occurs when the progress of an asynchronous export operation changes.
            
* __AsyncExportCompleted__: Occurs when an async export operation is completed.
            

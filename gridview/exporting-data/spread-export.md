---
title: Export to Excel
page_title: Export to Excel  | UI for WinForms Documentation
description: Export to Excel 
slug: winforms/gridview/exporting-data/spread-export
tags: spread,export,excel,xlsx
published: True
position: 1
previous_url: gridview-exporting-data-spread-export
---

# Spread export 

__GridViewSpreadExport__ utilizes our [RadSpreadProcessing]({%slug winforms/spreadprocessing%}) libraries to export the contents of __RadGridView__ to *xlsx, csv, pdf* and *txt* formats. This article will explain in detail the SpreadExport abilities and will demonstrate how to use it.

* [Exporting Data](#exporting-data)

* [Exporting Grouped Data](#exporting-grouped-data)

* [Async Spread Export](#async-spread-export)

Here is how the following grid, looks when exported.<br>![gridview-exporting-data-spread-export 001](images/gridview-exporting-data-spread-export001.png)![gridview-exporting-data-spread-export 002](images/gridview-exporting-data-spread-export002.png)

>note The spread export functionality is located in the __TelerikExport.dll__ assembly. You need to include the following namespace in order to access the types contained in TelerikExport:
* Telerik.WinControls.TelerikExport
>

>important Since this functionality is using the [RadSpreadProcessingLibrary]({%slug winforms/spreadprocessing%}) you need to reference the following assemblies as well:
* Telerik.Windows.Documents.Core
* Telerik.Windows.Documents.Fixed
* Telerik.Windows.Documents.Spreadsheet
* Telerik.Windows.Documents.Spreadsheet.FormatProviders.OpenXml
* Telerik.Windows.Documents.Spreadsheet.FormatProviders.Pdf
* Telerik.Windows.Maths
* Telerik.Windows.Zip
>

## Exporting

To use the spread export functionality, an instance of the __GridViewSpreadExport__ object should be created, passing as parameter the __RadGridView__ instance to export. Afterwards, the __RunExport__ method will trigger the export process. The latter method accepts as parameter a filename of the file to be exported.

{{source=..\SamplesCS\GridView\ExportingData\SpreadExport1.cs region=Export}} 
{{source=..\SamplesVB\GridView\ExportingData\SpreadExport1.vb region=Export}} 

````C#
GridViewSpreadExport spreadExporter = new GridViewSpreadExport(this.radGridView1);
SpreadExportRenderer exportRenderer = new SpreadExportRenderer();
spreadExporter.RunExport("D:\\exportedFile.xlsx", exportRenderer);

````
````VB.NET
Dim spreadExporter As GridViewSpreadExport = New GridViewSpreadExport(radGridView1)
Dim exportRenderer As New SpreadExportRenderer()
spreadExporter.RunExport("D:\exportedFile.xlsx", exportRenderer)

````

{{endregion}} 

## Properties

__ExportFormat__: Defines the format the grid will be exported to. The available values are __Xslx, Pdf, Csv, Txt__. The default value of the property is __Xslx__, hence if not other specified, the exporter will export to __Xslx__.

__ExportVisualSettings__: Allows you to export the visual settings (themes) to the exported file. RadGridView will also export all formatting to the Excel file. The column width and row height will also be matched in the exported file.

__ExportHierarchy__: Defines whether the exporter will export hierarchical data or not.

__ChildViewExportMode__: Defines which child view of a hierarchy row to be exported. Available modes are:

* *ExportFirstView*: The exporter exports the first view.
            

* *ExportCurrentlyActiveView*: The exporter exports the view that is active in the grid.
            

* *SelectViewToExport*: In this mode the __ChildViewExporing__ event is fired. The event allows to choose the view to export in row by row basis.
            

__HiddenColumnOption__: Defines whether hidden columns will be exported. Available options are:
        

* *ExportAlways*: The exporter will export hidden columns as well.
            

* *DoNotExport*: The exporter will not export hidden columns.
            

* *ExportAsHidden*: The exporter will export hidden columns as hidden in excel*.
            

__HiddenRowOption__: Defines whether hidden rows will be exported. Available options are:
        

* *ExportAlways*: The exporter will export hidden rows as well.
            

* *DoNotExport*: The exporter will not export hidden rows.
            

* *ExportAsHidden*: The exporter will export hidden rows as hidden in excel*.
            

>note MS Excel does not support other ways of hiding a column/row different from setting its width to zero. To avoid including hidden columns or rows in the exported excel file you could set __HiddenColumnOption__ or __HiddenRowOption__ property to *DoNotExport* :
>

__PagingExportOption__: Defines which pages to be exported, when paging is used in RadGridView.

* *CurrentPageOnly*: The exporter will export only the data on the current page.

* *AllPAges*: The exporter will export the data from all pages.

__SummariesExportOption__: Allows to specify how to export summary items. There are fourth option to chose:

* *ExportAll (default)*: The exporter will export all summary rows. This is the default setting.

* *ExportOnlyTop*: The exporter will export only the top summary rows.

* *ExportOnlyBottom*: The exporter will export only the bottom summary rows.

* *DoNotExport*: The exporter will not export any summary rows.

__RadGridViewToExport__: This property is used to set the instance of RadGridView to export.

__SheetMaxRows__: Тhe exporter splits the data on separate sheets if the number of rows is greater than the Excel maximum. You can control the maximum number of rows through this SheetMaxRows property. Available options are:

* *1048576*: Max rows for Excel 2007 and above

* *65536 (default)*: Max rows for previous versions of Excel. This is the default setting.

__SheetName__: Defines the sheet name of the sheet to export to. If your data is large enough to be split on more than one sheets, then the export method adds index to the names of the next sheets.

__FileExportMode__: This property determines whether the data will be exported into an existing or a new file. If new is chosen and such exists it will be overridden. Available options are:

* *NewSheetInExistingFile*: This option will create a new sheet in an already existing file.

* *CreateOrOverrideFile*: Creates new or overrides an existing file.

* __ExportViewDefinition:__  Gets or sets a value indicating whether to export the [view definition.]({%slug winforms/gridview/view-definitions/overview%})

### Exported Cells Data Type

>important
Each column in RadGridView has __ExcelExportType__ property which can be used for explicitly setting the data type of the cells in the exported document.
>

## Events

__CellFormatting__: This event is used to format the cells to be exported. The event arguments provide:

* *CellSelection*:  After casting to the __CellSelection__ class, provides access to the excel cells selection. More information about the abilities this object introduces, can be found here: [Get, Set and Clear Cell Properties]({%slug winforms/spreadprocessing/working-with-cells/get-set-and-clear-cell-properties%}).

* *CellStyleInfo*: This object is a wrapper of the CellSelection object, and allows to easier modification of the most common appearance settings.

* *GridCellInfo*: Provides access to the grid cell to be exported.

* *GridColumnIndex*: Returns the index of the column to be exported.

* *GridColumnIndex*: Returns the index of the row to be exported.

* *GridRowInfoType*: Returns the type of the row to be exported.

Here is an example of formatting the exported grid:

{{source=..\SamplesCS\GridView\ExportingData\SpreadExport1.cs region=CellFormatting}} 
{{source=..\SamplesVB\GridView\ExportingData\SpreadExport1.vb region=CellFormatting}} 

````C#
void spreadExporter_CellFormatting(object sender, Telerik.WinControls.Export.CellFormattingEventArgs e)
{
    if (e.GridRowInfoType == typeof(GridViewTableHeaderRowInfo))
    {
        e.CellStyleInfo.Underline = true;
        if (e.GridCellInfo.RowInfo.HierarchyLevel == 0)
        {
            e.CellStyleInfo.BackColor = Color.DeepSkyBlue;
        }
        else if (e.GridCellInfo.RowInfo.HierarchyLevel == 1)
        {
            e.CellStyleInfo.BackColor = Color.LightSkyBlue;
        }
    }
    if (e.GridRowInfoType == typeof(GridViewHierarchyRowInfo))
    {
        if (e.GridCellInfo.RowInfo.HierarchyLevel == 0)
        {
            e.CellStyleInfo.IsItalic = true;
            e.CellStyleInfo.FontSize = 12;
            e.CellStyleInfo.BackColor = Color.GreenYellow;
        }
        else if (e.GridCellInfo.RowInfo.HierarchyLevel == 1)
        {
            e.CellStyleInfo.ForeColor = Color.DarkGreen;
            e.CellStyleInfo.BackColor = Color.LightGreen;
        }
    }
}

````
````VB.NET
Private Sub spreadExporter_CellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.Export.CellFormattingEventArgs)
    If e.GridRowInfoType Is GetType(GridViewTableHeaderRowInfo) Then
        e.CellStyleInfo.Underline = True
        If e.GridCellInfo.RowInfo.HierarchyLevel = 0 Then
            e.CellStyleInfo.BackColor = Color.DeepSkyBlue
        ElseIf e.GridCellInfo.RowInfo.HierarchyLevel = 1 Then
            e.CellStyleInfo.BackColor = Color.LightSkyBlue
        End If
    End If
    If e.GridRowInfoType Is GetType(GridViewHierarchyRowInfo) Then
        If e.GridCellInfo.RowInfo.HierarchyLevel = 0 Then
            e.CellStyleInfo.IsItalic = True
            e.CellStyleInfo.FontSize = 12
            e.CellStyleInfo.BackColor = Color.GreenYellow
        ElseIf e.GridCellInfo.RowInfo.HierarchyLevel = 1 Then
            e.CellStyleInfo.ForeColor = Color.DarkGreen
            e.CellStyleInfo.BackColor = Color.LightGreen
        End If
    End If
End Sub

````

{{endregion}} 

![gridview-exporting-data-spread-export 003](images/gridview-exporting-data-spread-export003.png)

__WorkbookCreated__: This event is triggered on the __SpreadExportRenderer__ object when the workbook is ready to be exported. Allows to introduce final customizations (for example you can add [header and footer]({%slug winforms/gridview/exporting-data/how-to/add-header-and-footer-to-the-exported-document%})). More information on how to work with Workbook is available here: [Working with Workbooks]({%slug winforms/spreadprocessing/working-with-workbooks/create-open-and-save-workbooks%}).



__ChildViewExporting__ - this event is used to specify which child view to be exported, for each exported row, during the export. Will be triggered only when the __ChildViewExportMode__ is set to *SelectViewToExport*. The event arguments provide the __ParentRow__ which active view should be set via the __ActiveViewIndex__ property.

__ExportCompleted__: This event is triggered when the export operation completes.

## Exporting Grouped Data

__RadGridView__ can export its grouped content by simply setting the __ExportChildRowsGrouped__ property of the __GridViewSpreadExport__ object to *true*.
>caption Fig.2 Exporting Grouped Data

![gridview-exporting-data-spread-export 005](images/gridview-exporting-data-spread-export005.png)

#### Exporting Grouped Data

{{source=..\SamplesCS\GridView\ExportingData\SpreadExport1.cs region=ExportingGroupedData}} 
{{source=..\SamplesVB\GridView\ExportingData\SpreadExport1.vb region=ExportingGroupedData}} 

````C#
GridViewSpreadExport spreadExporter = new GridViewSpreadExport(this.radGridView1);
spreadExporter.ExportChildRowsGrouped = true;
SpreadExportRenderer exportRenderer = new SpreadExportRenderer();
spreadExporter.RunExport(@"..\..\exportedFile.xlsx",exportRenderer);

````
````VB.NET
Dim spreadExporter As New GridViewSpreadExport(Me.radGridView1)
spreadExporter.ExportChildRowsGrouped = True
Dim exportRenderer As New SpreadExportRenderer()
spreadExporter.RunExport("..\..\exportedFile.xlsx", exportRenderer)

````

{{endregion}} 

## Async Spread Export

__RadGridView__ can export its contents asynchronously. This feature can be utilized by calling the  __RunExportAsync__ method on the __GridViewSpreadExport__ object.

>important Due to performance considerations and in order to decrease the consumed memory the visual settings in __RadGridView__ are not exported when the operation is run async.
>

## Methods

The following methods of the __GridViewSpreadExport__ class are responsible for exporting the data.

* __RunExportAsync__: Starts an export operation which runs in a background thread.

* __CancelExportAsync__: Cancels an export operation.

## Events

The following events provide information about the state of the export operation.

* __AsyncExportProgressChanged__: Occurs when the progress of an asynchronous export operation changes.

* __AsyncExportCompleted__: Occurs when an async export operation is completed.

## Exporting Data Asynchronously

This example will demonstrate how the async spread export feature can be combined with a __RadProgressBar__ control to deliver better user experience.
        
>caption Fig.1 Exporting Data Asynchronously<br>![gridview-exporting-data-async-spread-export 001](images/gridview-exporting-data-async-spread-export001.gif)

1\. Bind __RadGridView__ and define initial settings.

{{source=..\SamplesCS\GridView\ExportingData\AsyncSpreadExport.cs region=BindAndDefineSettings}} 
{{source=..\SamplesVB\GridView\ExportingData\AsyncSpreadExport.vb region=BindAndDefineSettings}} 

````C#
public AsyncSpreadExport()
{
    InitializeComponent();
    this.BindGrid();
    this.radProgressBar1.Minimum = 0;
    this.radProgressBar1.Maximum = 100;
    this.radProgressBar1.ShowProgressIndicators = true;
    this.radGridView1.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
    this.btnExportAsync.Click += btnExportAsync_Click; 
}
private void BindGrid()
{
    DataTable dataTable = new DataTable();
    dataTable.Columns.Add("Id", typeof(int));
    dataTable.Columns.Add("Name", typeof(string));
    dataTable.Columns.Add("IsValid", typeof(bool));
    dataTable.Columns.Add("Date", typeof(DateTime));
    for (int i = 0; i < 50000; i++)
    {
        dataTable.Rows.Add(i, "Name " + i, i % 2 == 0, DateTime.Now.AddDays(i));
    }
    this.radGridView1.DataSource = dataTable;
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
    Me.BindGrid()
    Me.RadProgressBar1.Minimum = 0
    Me.RadProgressBar1.Maximum = 100
    Me.RadProgressBar1.ShowProgressIndicators = True
    Me.RadGridView1.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill
    AddHandler Me.BtnExportAsync.Click, AddressOf BtnExportAsync_Click
End Sub
Private Sub BindGrid()
    Dim dataTable As New DataTable()
    dataTable.Columns.Add("Id", GetType(Integer))
    dataTable.Columns.Add("Name", GetType(String))
    dataTable.Columns.Add("IsValid", GetType(Boolean))
    dataTable.Columns.Add("Date", GetType(DateTime))
    For i As Integer = 0 To 49999
        dataTable.Rows.Add(i, "Name " & i, i Mod 2 = 0, DateTime.Now.AddDays(i))
    Next
    Me.RadGridView1.DataSource = dataTable
End Sub

````

{{endregion}} 

2\. Start export and subscribe to the progress notification events.

{{source=..\SamplesCS\GridView\ExportingData\AsyncSpreadExport.cs region=ExportData}} 
{{source=..\SamplesVB\GridView\ExportingData\AsyncSpreadExport.vb region=ExportData}} 

````C#
private void btnExportAsync_Click(object sender, EventArgs e)
{
    GridViewSpreadExport spreadExporter = new GridViewSpreadExport(this.radGridView1);
    spreadExporter.AsyncExportProgressChanged += spreadExporter_AsyncExportProgressChanged;
    spreadExporter.AsyncExportCompleted += spreadExporter_AsyncExportCompleted;
    SpreadExportRenderer exportRenderer = new SpreadExportRenderer();
    spreadExporter.RunExportAsync(@"..\..\exportedFile.xlsx",exportRenderer);
}

````
````VB.NET
Private Sub BtnExportAsync_Click(sender As Object, e As EventArgs)
    Dim spreadExporter As New GridViewSpreadExport(Me.RadGridView1)
    AddHandler spreadExporter.AsyncExportProgressChanged, AddressOf spreadExporter_AsyncExportProgressChanged
    AddHandler spreadExporter.AsyncExportCompleted, AddressOf spreadExporter_AsyncExportCompleted
    Dim exportRenderer As New SpreadExportRenderer()
    spreadExporter.RunExportAsync("..\..\exportedFile.xlsx", exportRenderer)
End Sub

````

{{endregion}} 




3\. Handle the notification events and report progress.

{{source=..\SamplesCS\GridView\ExportingData\AsyncSpreadExport.cs region=ReportProgress}} 
{{source=..\SamplesVB\GridView\ExportingData\AsyncSpreadExport.vb region=ReportProgress}} 

````C#
private void spreadExporter_AsyncExportProgressChanged(object sender, ProgressChangedEventArgs e)
{
    this.radProgressBar1.Value1 = e.ProgressPercentage;
}
private void spreadExporter_AsyncExportCompleted(object sender, AsyncCompletedEventArgs e)
{
    RadMessageBox.Show("Async Spread Export Completed!");
    this.radProgressBar1.Value1 = 0;
}

````
````VB.NET
Private Sub spreadExporter_AsyncExportProgressChanged(sender As Object, e As ProgressChangedEventArgs)
    Me.RadProgressBar1.Value1 = e.ProgressPercentage
End Sub
Private Sub spreadExporter_AsyncExportCompleted(sender As Object, e As AsyncCompletedEventArgs)
    RadMessageBox.Show("Async Spread Export Completed!")
    Me.RadProgressBar1.Value1 = 0
End Sub

````

{{endregion}} 




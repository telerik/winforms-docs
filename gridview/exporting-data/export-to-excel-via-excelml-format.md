---
title: Export to Excel via ExcelML Format
page_title: Export to Excel via ExcelML Format | UI for WinForms Documentation
description: Export to Excel via ExcelML Format
slug: winforms/gridview/exporting-data/export-to-excel-via-excelml-format
tags: export,to,excel,via,excelml,format
published: True
position: 2
previous_url: gridview-exporting-data-export-to-excel-via-excelml-format
---

# Export to Excel via ExcelML Format



## Export in ExcelML format

## Overview

This method offers excellent  ng performance and does not require MS Office installation on users' machines. The __ExcelML__ format can be read by MS Excel 2002 (MS Office XP) and above. Direct export to the xlsx format is possible by utilizing our __RadSpreadProcessing__ libraries (see [Spread Export]({%slug winforms/gridview/exporting-data/spread-export%}) and Async Spread Export articles for detailed information and examples).

>note The HTML export functionality is located in the __TelerikData.dll__ assembly. You need to include the following namespaces in order to access the types contained in TelerikData:
* Telerik.WinControls.Data
* Telerik.WinControls.UI.Export>
>

## Exporting Data

__Initialize ExportToExcelML object__

Before running export to ExcelML, you have to initialize the ExportToExcelML class. The constructor takes one parameter: the RadGridView that will be exported:

####  ExportToExcelIML initialization

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=ExportToExcelMLInitialization}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=ExportToExcelMLInitialization}} 

````C#
ExportToExcelML exporter = new ExportToExcelML(this.radGridView1);

````
````VB.NET
Dim exporter As ExportToExcelML = New ExportToExcelML(Me.RadGridView1)

````

{{endregion}} 

__Hidden columns and rows option__

You can choose one of the three options below which will allow you to have different behavior for the hidden column/rows. You can choose these options by __HiddenColumnOption__ and __HiddenRowOption__ properties:

* ExportAlways

* DoNotExport

* ExportAsHidden (default)

MS Excel does not support other ways of hiding a column different from setting its width to zero. To avoid including hidden columns or rows in the exported excel file you could set __HiddenColumnOption__ or __HiddenRowOption__  property to __DoNotExport__:

####  Setting the hidden column option

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=settingTheHiddenColumnOption}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=settingTheHiddenColumnOption}} 

````C#
exporter.HiddenColumnOption = Telerik.WinControls.UI.Export.HiddenOption.DoNotExport;

````
````VB.NET
exporter.HiddenColumnOption = Telerik.WinControls.UI.Export.HiddenOption.DoNotExport

````

{{endregion}} 

__Exporting Visual Settings__

Using the ExcelML method allows you to export the visual settings (themes) to the Excel file. ExcelML has also a visual representation of the alternating row color. This feature works only if __EnableAlternatingRow__ property is set to *true*. Note that it does not transfer the alternating row settings that come from control theme. RadGridView will also export all conditional formatting to the Excel file. The row height is exported with the default DPI transformation (60pixels = 72points).

You can enable exporting visual settings through the ExportVisualSettings property. By default the value of this property is false. __ExportVisualSettings__*false*

#### Setting ExportVisualSettings

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=exportVisualSettings}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=exportVisualSettings}} 

````C#
exporter.ExportVisualSettings = true;

````
````VB.NET
exporter.ExportVisualSettings = True

````

{{endregion}} 

__MS Excel Max Rows Settings__

RadGridView splits data on separate sheets if the number of rows is greater than Excel maximum. You can control the maximum number of rows through a SheetMaxRows property:

* 1048576 (Max rows for Excel 2007)

* 65536 (Max rows for previous versions of Excel) (default)
 
#### Setting Maximum Number of Rows

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=settingMaximumNumberOfRows}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=settingMaximumNumberOfRows}} 

````C#
exporter.SheetMaxRows = ExcelMaxRows._1048576;

````
````VB.NET
exporter.SheetMaxRows = ExcelMaxRows._1048576

````

{{endregion}} 

__MS Excel Sheet Name__ You can specify the sheet name through __SheetName__ property. If your data is large enough to be split on more than one sheets, then the export method adds index to the names of the next sheets.

#### Setting the SheetName

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=settingTheSheetName}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=settingTheSheetName}} 

````C#
exporter.SheetName = "Sheet";

````
````VB.NET
exporter.SheetName = "Sheet"

````

{{endregion}} 

__Summaries export option__

You can use __SummariesExportOption__ property to specify how to export summary items. There are fourth option to chose:

* ExportAll (default)

* ExportOnlyTop

* ExportOnlyBottom

* DoNotExport

#### Setting SummariesExportOption

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=settingSumariesExportOption}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=settingSumariesExportOption}} 

````C#
exporter.SummariesExportOption = SummariesOption.DoNotExport;

````
````VB.NET
exporter.SummariesExportOption = SummariesOption.DoNotExport

````

{{endregion}} 

## RunExport method

Exporting data to Excel is done through the __RunExport__ method of __ExportToExcelML__ object. The RunExport method accepts the following parameter:

* __fileName__ - the name of the exported file

Consider the code sample below:

#### Export to Excel in ExcelML format

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=runExport}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=runExport}} 

````C#
string fileName = "C:\\ExportedData123.xls";
exporter.RunExport(fileName);

````
````VB.NET
Dim fileName As String = "C:\\ExportedData.xls"
exporter.RunExport(fileName)

````

{{endregion}} 

## Format Codes

There are two properties in GridViewDataColumn object: ExcelExportType and ExcelExportFormatString. You can use them to specify the format of the exported column in the result excel file. To get the desired formatting in Excel, the ExcelExportFormatString should be set to a valid Excel format code. A list of all format codes for Excel is available on the following link – [Microsoft Office Excel Format Codes](https://support.office.com/en-US/Article/Number-format-codes-5026bbd6-04bc-48cd-bf33-80f18b4eae68)

Here is an example for a date time formatting:

#### Fomatting dates

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=formattingCodes}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=formattingCodes}} 

````C#
this.radGridView1.Columns["Date"].ExcelExportType = DisplayFormatType.Custom;
this.radGridView1.Columns["Date"].ExcelExportFormatString = "yyyy.MMMM.dd hh:mm:ss AM/PM";

````
````VB.NET
Me.RadGridView1.Columns("Date").ExcelExportType = DisplayFormatType.Custom
Me.RadGridView1.Columns("Date").ExcelExportFormatString = " yyyy.MMMM.dd hh:mm:ss AM/PM "

````

{{endregion}} 

## Events

__ExcelCellFormating__ event:
        

It gives an access to a single cell’s  __SingleStyleElement__ that allows you to make additional formatting (adding border, setting alignment, text font, colors, changing cell value, etc.) for every excel cell related to the exported RadGridView:

#### Handling the ExcelCellFormatting event

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=ExcelCellFormatting}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=ExcelCellFormatting}} 

````C#
void exporter_ExcelCellFormatting(object sender, Telerik.WinControls.UI.Export.ExcelML.ExcelCellFormattingEventArgs e)
{
    if (e.GridRowInfoType == typeof(GridViewTableHeaderRowInfo))
    {
        BorderStyles border = new BorderStyles();
        border.Color = Color.Black;
        border.Weight = 2;
        border.LineStyle = Telerik.WinControls.UI.Export.ExcelML.LineStyle.Continuous;
        border.PositionType = PositionType.Bottom;
        e.ExcelStyleElement.Borders.Add(border);
    }
    else if (e.GridRowIndex == 2 && e.GridColumnIndex == 1)
    {
        e.ExcelStyleElement.InteriorStyle.Color = Color.Yellow;
        e.ExcelStyleElement.AlignmentElement.WrapText = true;
    }
}

````
````VB.NET
Private Sub exporter_ExcelCellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Export.ExcelML.ExcelCellFormattingEventArgs)
    If e.GridRowInfoType Is GetType(GridViewTableHeaderRowInfo) Then
        Dim border As BorderStyles = New BorderStyles()
        border.Color = Color.Black
        border.Weight = 2
        border.LineStyle = Telerik.WinControls.UI.Export.ExcelML.LineStyle.Continuous
        border.PositionType = PositionType.Bottom
        e.ExcelStyleElement.Borders.Add(border)
    ElseIf e.GridRowIndex = 2 AndAlso e.GridColumnIndex = 1 Then
        e.ExcelStyleElement.InteriorStyle.Color = Color.Yellow
        e.ExcelStyleElement.AlignmentElement.WrapText = True
    End If
End Sub

````

{{endregion}} 

__ExcelTableCreated event:__

It can be used in together with the public method __AddCustomExcelRow__. It allows adding and formatting new custom rows on the top of the every sheet (it could be specified as a header in the excel sheet):

#### Handling the ExcelTableCreated event

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=ExcelTableCreated}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=ExcelTableCreated}} 

````C#
void exporter_ExcelTableCreated(object sender, ExcelTableCreatedEventArgs e)
{
    string headerText = "Custom added header text.";
    SingleStyleElement style = ((ExportToExcelML)sender).AddCustomExcelRow(e.ExcelTableElement, 50, headerText);
    style.FontStyle.Bold = true;
    style.FontStyle.Size = 18;
    style.FontStyle.Color = Color.White;
    style.InteriorStyle.Color = Color.Red;
    style.InteriorStyle.Pattern = InteriorPatternType.Solid;
    style.AlignmentElement.HorizontalAlignment = HorizontalAlignmentType.Center;
    style.AlignmentElement.VerticalAlignment = VerticalAlignmentType.Center;
}

````
````VB.NET
Private Sub exporter_ExcelTableCreated(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Export.ExcelML.ExcelTableCreatedEventArgs)
    Dim headerText As String = "Custom added header text."
    Dim style As SingleStyleElement = (CType(sender, ExportToExcelML)).AddCustomExcelRow(e.ExcelTableElement, 50, headerText)
    style.FontStyle.Bold = True
    style.FontStyle.Size = 18
    style.FontStyle.Color = Color.White
    style.InteriorStyle.Color = Color.Red
    style.InteriorStyle.Pattern = InteriorPatternType.Solid
    style.AlignmentElement.HorizontalAlignment = HorizontalAlignmentType.Center
    style.AlignmentElement.VerticalAlignment = VerticalAlignmentType.Center
End Sub

````

{{endregion}} 

## 

| RELATED VIDEOS |  |
| ------ | ------ |
|[Export to Excel with RadGridView for WinForms](http://www.telerik.com/videos/winforms/export-to-excel-with-radgridview-for-winforms)<br>In this RadTip, John Kellar demonstrates how you can export data stored in a RadGridView for Windows Forms to Excel using the ExcelML export options. (Runtime: 08:52)|![gridview-exporting-data-export-to-excel-via-excelml-format 001](images/gridview-exporting-data-export-to-excel-via-excelml-format001.png)|

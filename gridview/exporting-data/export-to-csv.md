---
title: Export to CSV
page_title: Export to CSV | RadGridView
description: Export to CSV
slug: winforms/gridview/exporting-data/export-to-csv
tags: export,to,csv
published: True
position: 4
previous_url: gridview-exporting-data-export-to-csv
---

# Export to CSV


| RELATED VIDEOS |  |
| ------ | ------ |
|[Exporting to CSV with RadGridView for WinForms](http://tv.telerik.com/watch/winforms/exporting-to-csv-with-radgridview-for-winforms)<br>In this video, you will learn how to export RadGridView for WinForms to the CSV file format.|![exporting-to-csv-with-radgridview-for-winforms 001](images/exporting-to-csv-with-radgridview-for-winforms001.png)|

## Overview

This method offers excellent export performance. It creates a csv file and supports formatting events to allow customizing exported data.

>note The CSV export functionality is located in the __TelerikData.dll__ assembly. You need to include the following namespaces in order to access the types contained in TelerikData:
* Telerik.WinControls.Data
* Telerik.WinControls.UI.Export>
>

## Exporting Data

__Initialize ExportToCSV object__

Before running export to CSV, you have to initialize the ExportToCSV class. The constructor takes one parameter: the RadGridView that will be exported:

####  ExportToCSV initialization

{{source=..\SamplesCS\GridView\ExportingData\ExportToCSV1.cs region=exportToCsvInitialization}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToCSV1.vb region=exportToCsvInitialization}} 

````C#
ExportToCSV exporter = new ExportToCSV(this.radGridView1);

````
````VB.NET
Dim exporter As ExportToCSV = New ExportToCSV(Me.RadGridView1)

````

{{endregion}} 

### File Extension

This property allows for changing the default (*.csv) file extension of the exported result file:

####  Setting the file extension

{{source=..\SamplesCS\GridView\ExportingData\ExportToCSV1.cs region=settingTheFileExtention}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToCSV1.vb region=settingTheFileExtention}} 

````C#
exporter.FileExtension = "";

````
````VB.NET
exporter.FileExtension = ""

````

{{endregion}} 

### Hidden Columns and Rows Option

You can choose if the hidden columns and rows should be exported through __HiddenColumnOption__ and __HiddenRowOption__ properties. Please, note that these properties use the standard enums and include the *ExportAsHidden *option, which is not supported by CSV format. Setting that option will not affect the export at all.

* ExportAlways

* DoNotExport  (default)

* ExportAsHidden (not supported in csv)

### Summaries export option

You can use __SummariesExportOption__ property to specify how to export summary items. There are four options to choose from:

* ExportAll (default)

* ExportOnlyTop

* ExportOnlyBottom

* DoNotExport

####  Setting summaries to export

{{source=..\SamplesCS\GridView\ExportingData\ExportToCSV1.cs region=settingSummariesToExport}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToCSV1.vb region=settingSummariesToExport}} 

````C#
exporter.SummariesExportOption = SummariesOption.DoNotExport;

````
````VB.NET
exporter.SummariesExportOption = SummariesOption.DoNotExport

````

{{endregion}} 

## RunExport method

Exporting data to CSV file is done through the RunExport method of the `ExportToCSV` object. The __RunExport__ method accepts the following parameter:

* fileName: the name of the exported file

####  Export to CVS format

{{source=..\SamplesCS\GridView\ExportingData\ExportToCSV1.cs region=exportToCsvFormat}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToCSV1.vb region=exportToCsvFormat}} 

````C#
string fileName = "C:\\ExportedData.csv";
exporter.RunExport(fileName);

````
````VB.NET
Dim fileName As String = "C:\\ExportedData.csv"
exporter.RunExport(fileName)

````

{{endregion}} 

## Events

__CSVCellFormating event__

It gives access to a single cell’s element that allows you to replace the actual value for every cell related to the exported RadGridView:

#### Handling the CSVCellFormatting event

{{source=..\SamplesCS\GridView\ExportingData\ExportToCSV1.cs region=handlingTheCsvCellFormattingEvent}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToCSV1.vb region=handlingTheCsvCellFormattingEvent}} 

````C#
void exporter_CSVCellFormatting(object sender, Telerik.WinControls.UI.Export.CSV.CSVCellFormattingEventArgs e)
{
    if (e.GridColumnIndex == 1 && e.GridRowInfoType == typeof(GridViewDataRowInfo))
    {
        e.CSVCellElement.Value =  "test value";
    }
}

````
````VB.NET
Private Sub exporter_CSVCellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Export.CSV.CSVCellFormattingEventArgs)
    If (e.GridColumnIndex = 1 AndAlso e.GridRowInfoType.Equals(GetType(GridViewDataRowInfo))) Then
        e.CSVCellElement.Value = "test value"
    End If
End Sub

````

{{endregion}} 

__CSVTableCreated event__:

It can be used together with the public method __AddCustomCSVRow__. It allows for adding and formatting new custom rows on the top of the csv file :

#### Handling the CSVTableCreated event

{{source=..\SamplesCS\GridView\ExportingData\ExportToCSV1.cs region=handlingTheCsvTableCreatedevent}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToCSV1.vb region=handlingTheCsvTableCreatedevent}} 

````C#
void exporter_CSVTableCreated(object sender, Telerik.WinControls.UI.Export.CSV.CSVTableCreatedEventArgs e)
{
    ((ExportToCSV)sender).AddCustomCSVRow(e.CSVTableElement, "MY TABLE CAPTION");
}

````
````VB.NET
Private Sub exporter_CSVTableCreated(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Export.CSV.CSVTableCreatedEventArgs)
    DirectCast(sender, ExportToCSV).AddCustomCSVRow(e.CSVTableElement, "MY TABLE CAPTION")
End Sub

````

{{endregion}} 






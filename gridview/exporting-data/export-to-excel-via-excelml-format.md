---
title: Export to Excel via ExcelML Format
page_title: Export to Excel via ExcelML Format
description: Export to Excel via ExcelML Format
slug: gridview-exporting-data-export-to-excel-via-excelml-format
tags: export,to,excel,via,excelml,format
published: True
position: 2
---

# Export to Excel via ExcelML Format



## Export in ExcelML format

## Overview

This method offers excellent  ng performance and does not require MS Office installation on users' machines. The __ExcelML__ format
          can be read by MS Excel 2002 (MS Office XP) and above.
        

>The HTML export functionality is located in the __TelerikData.dll__ assembly. You need to include the following namespaces
            in order to access the types contained in TelerikData:
          

* Telerik.WinControls.Data

* Telerik.WinControls.UI.Export

## Exporting Data

__Initialize ExportToExcelML object__

Before running export to ExcelML, you have to initialize the ExportToExcelML class. The constructor takes one parameter: the RadGridView that will be exported:

#### __[C#]  ExportToExcelIML initialization__

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=ExportToExcelMLInitialization}}
	            ExportToExcelML exporter = new ExportToExcelML(this.radGridView1);
	{{endregion}}



#### __[VB.NET]  ExportToExcelIML initialization__

{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=ExportToExcelMLInitialization}}
	        Dim exporter As ExportToExcelML = New ExportToExcelML(Me.RadGridView1)
	{{endregion}}



__Hidden columns and rows option__

You can choose one of the three options below which will allow you to have different behavior for the hidden column/rows.
          You can choose these options by __HiddenColumnOption__ and __HiddenRowOption__ properties:
        

* ExportAlways

* DoNotExport

* ExportAsHidden (default)

MS Excel does not support other ways of hiding a column different from setting its width to zero.
          To avoid including hidden columns or rows in the exported excel file you could set __HiddenColumnOption__
          or __HiddenRowOption__  property to __DoNotExport__:
        

#### __[C#]  Setting the hidden column option__

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=settingTheHiddenColumnOption}}
	            exporter.HiddenColumnOption = Telerik.WinControls.UI.Export.HiddenOption.DoNotExport;
	{{endregion}}



#### __[VB.NET]  Setting the hidden column option__

{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=settingTheHiddenColumnOption}}
	        exporter.HiddenColumnOption = Telerik.WinControls.UI.Export.HiddenOption.DoNotExport
	{{endregion}}



__Exporting Visual Settings__

Using the ExcelML method allows you to export the visual settings (themes) to the Excel file. ExcelML has also a visual representation of the alternating row color.
          This feature works only if __EnableAlternatingRow__ property is set to *true*.
          Note that it does not transfer the alternating row settings that come from control theme. RadGridView will also export all conditional formatting to the Excel file.
          The row height is exported with the default DPI transformation (60pixels = 72points).
        

You can enable exporting visual settings through the ExportVisualSettings property. By default the value of this property is false.
          __ExportVisualSettings__*false*

#### __[C#] Setting ExportVisualSettings__

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=exportVisualSettings}}
	            exporter.ExportVisualSettings = true;
	{{endregion}}



#### __[VB.NET] Setting ExportVisualSettings__

{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=exportVisualSettings}}
	        exporter.ExportVisualSettings = True
	{{endregion}}



__MS Excel Max Rows Settings__

RadGridView splits data on separate sheets if the number of rows is greater than Excel maximum. You can control the maximum number of rows through a SheetMaxRows property:

* 1048576 (Max rows for Excel 2007)

* 65536 (Max rows for previous versions of Excel) (default)

#### __[C#] Setting Maximum Number of Rows__

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=settingMaximumNumberOfRows}}
	            exporter.SheetMaxRows = ExcelMaxRows._1048576;
	{{endregion}}



#### __[VB.NET] Setting Maximum Number of Rows__

{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=settingMaximumNumberOfRows}}
	        exporter.SheetMaxRows = ExcelMaxRows._1048576
	{{endregion}}



__MS Excel Sheet Name__
          You can specify the sheet name through __SheetName__ property. If your data is large enough to be split on more than one sheets, then the export method adds index to the names of the next sheets.
        

#### __[C#] Setting the SheetName__

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=settingTheSheetName}}
	            exporter.SheetName = "Sheet";
	{{endregion}}



#### __[VB.NET] Setting the SheetName__

{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=settingTheSheetName}}
	        exporter.SheetName = "Sheet"
	{{endregion}}



__Summaries export option__

You can use __SummariesExportOption__ property to specify how to export summary items. There are fourth option to chose:
        

* ExportAll (default)

* ExportOnlyTop

* ExportOnlyBottom

* DoNotExport

#### __[C#] Setting SummariesExportOption__

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=settingSumariesExportOption}}
	            exporter.SummariesExportOption = SummariesOption.DoNotExport; 
	{{endregion}}



#### __[VB.NET] Setting SummariesExportOption__

{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=settingSumariesExportOption}}
	        exporter.SummariesExportOption = SummariesOption.DoNotExport
	{{endregion}}



## RunExport method

Exporting data to Excel is done through the __RunExport__ method of __ExportToExcelML__ object. The RunExport method accepts the following parameter:
        

* __fileName__ - the name of the exported file
            

Consider the code sample below:

#### __[C#] Export to Excel in ExcelML format__

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=runExport}}
	            string fileName = "C:\\ExportedData123.xls";
	            exporter.RunExport(fileName);
	{{endregion}}



#### __[VB.NET] Export to Excel in ExcelML format__

{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=runExport}}
	        Dim fileName As String = "C:\\ExportedData.xls"
	        exporter.RunExport(fileName)
	{{endregion}}



## Format Codes

There are two properties in GridViewDataColumn object: ExcelExportType and ExcelExportFormatString.
          You can use them to specify the format of the exported column in the result excel file. To get the desired formatting in Excel, the ExcelExportFormatString should
          be set to a valid Excel format code. A list of all format codes for Excel is available on the following link –
          [Microsoft Office Excel Format Codes](https://support.office.com/en-US/Article/Number-format-codes-5026bbd6-04bc-48cd-bf33-80f18b4eae68)

Here is an example for a date time formatting:
        

#### __[C#] Fomatting dates__

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=formattingCodes}}
	            this.radGridView1.Columns["Date"].ExcelExportType = DisplayFormatType.Custom;
	            this.radGridView1.Columns["Date"].ExcelExportFormatString = "yyyy.MMMM.dd hh:mm:ss AM/PM";
	{{endregion}}



#### __[VB.NET] Fomatting dates__

{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=formattingCodes}}
	        Me.RadGridView1.Columns("Date").ExcelExportType = DisplayFormatType.Custom
	        Me.RadGridView1.Columns("Date").ExcelExportFormatString = " yyyy.MMMM.dd hh:mm:ss AM/PM "
	{{endregion}}



## Events

__ExcelCellFormating__ event:
        

It gives an access to a single cell’s  __SingleStyleElement__ that allows you to make additional formatting
          (adding border, setting alignment, text font, colors, changing cell value, etc.) for every excel cell related to the exported RadGridView:
        

#### __[C#]  Handling the ExcelCellFormatting event__

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=ExcelCellFormatting}}
	        void exporter_ExcelCellFormatting(object sender, Telerik.WinControls.UI.Export.ExcelML.ExcelCellFormattingEventArgs e)
	        {
	            if (e.GridRowInfoType == typeof(GridViewTableHeaderRowInfo))
	            {
	                BorderStyles border = new BorderStyles();
	                border.Color = Color.Black;
	                border.Weight = 2;
	                border.LineStyle = LineStyle.Continuous;
	                border.PositionType = PositionType.Bottom;
	                e.ExcelStyleElement.Borders.Add(border);
	            }
	            else if (e.GridRowIndex == 2 && e.GridColumnIndex == 1)
	            {
	                e.ExcelStyleElement.InteriorStyle.Color = Color.Yellow;
	                e.ExcelStyleElement.AlignmentElement.WrapText = true;
	            }
	        }
	{{endregion}}



#### __[VB.NET]  Handling the ExcelCellFormatting event__

{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=ExcelCellFormatting}}
	    Private Sub exporter_ExcelCellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Export.ExcelML.ExcelCellFormattingEventArgs)
	        If e.GridRowInfoType Is GetType(GridViewTableHeaderRowInfo) Then
	            Dim border As BorderStyles = New BorderStyles()
	            border.Color = Color.Black
	            border.Weight = 2
	            border.LineStyle = LineStyle.Continuous
	            border.PositionType = PositionType.Bottom
	            e.ExcelStyleElement.Borders.Add(border)
	        ElseIf e.GridRowIndex = 2 AndAlso e.GridColumnIndex = 1 Then
	            e.ExcelStyleElement.InteriorStyle.Color = Color.Yellow
	            e.ExcelStyleElement.AlignmentElement.WrapText = True
	        End If
	    End Sub
	{{endregion}}



__ExcelTableCreated event:__

It can be used in together with the public method __AddCustomExcelRow__. It allows adding and formatting new custom
          rows on the top of the every sheet (it could be specified as a header in the excel sheet):
        

____

#### __[C#]  Handling the ExcelTableCreated event__

{{source=..\SamplesCS\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.cs region=ExcelTableCreated}}
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
	{{endregion}}



#### __[VB.NET]  Handling the ExcelTableCreated event__

{{source=..\SamplesVB\GridView\ExportingData\ExportToExcelViaExcelIMLFormat.vb region=ExcelTableCreated}}
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
	{{endregion}}





## 
<table><th><tr><td>

RELATED VIDEOS</td><td></td></tr></th><tr><td>

[Export to Excel with RadGridView for WinForms](http://tv.telerik.com/radtips/radgrid/grid-to-excel)
                In this RadTip, John Kellar demonstrates how you can export data stored in a RadGridView for Windows Forms to Excel using the ExcelML export options. (Runtime: 08:53)
              </td><td>

![gridview-exporting-data-export-to-excel-via-excelml-format 001](images/gridview-exporting-data-export-to-excel-via-excelml-format001.png)</td></tr></table>

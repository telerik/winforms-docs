---
title: Export to HTML
page_title: Export to HTML | RadGridView
description: This method offers excellent export performance and creates an HTML formatted file, which can be opened in a browser or MS Word.
slug: winforms/gridview/exporting-data/export-to-html
tags: export,to,html
published: True
position: 6
previous_url: gridview-exporting-data-export-to-html
---

# Export to HTML

| RELATED VIDEOS |  |
| ------ | ------ |
|[Exporting to HTML with RadGridView for WinForms](http://tv.telerik.com/watch/winforms/exporting-to-html-with-radgridview-for-winforms)<br>In this video, you will learn how to export RadGridView to the HTML file format.|![gridview-exporting-data-export-to-html 001](images/gridview-exporting-data-export-to-html001.png)|

## Overview

This method offers excellent export performance and creates an HTML formatted file, which can be opened in a browser or MS Word.

>note The HTML export functionality is located in the __TelerikData.dll__ assembly. You need to include the following namespaces in order to access the types contained in TelerikData:
* Telerik.WinControls.Data
* Telerik.WinControls.UI.Export>
>

## Exporting Data

### Initialize ExportToHTML object 

Before running export to HTML, you have to initialize the __ExportToHTML__ class. The constructor takes one parameter: the __RadGridView__ that will be exported:

#### ExportToHTML initialization

{{source=..\SamplesCS\GridView\ExportingData\ExportToHTML1.cs region=exportToHtmlInitialization}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToHTML1.vb region=exportToHtmlInitialization}} 

````C#
ExportToHTML exporter = new ExportToHTML(this.radGridView1);

````
````VB.NET
Dim exporter As ExportToHTML = New ExportToHTML(Me.RadGridView1)

````

{{endregion}} 

### File extension 

This property allows for changing the default (*.htm) file extension of the exported result file

#### Setting the file extension

{{source=..\SamplesCS\GridView\ExportingData\ExportToHTML1.cs region=settingTheFileExtention}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToHTML1.vb region=settingTheFileExtention}} 

````C#
exporter.FileExtension = "";

````
````VB.NET
exporter.FileExtension = ""

````

{{endregion}} 

### Hidden columns and rows option

You can choose one of the three options below which will allow you to have a different behavior for the hidden column/rows. You can choose these options by __HiddenColumnOption__ and __HiddenRowOption__ properties:

* ExportAlways

* DoNotExport (default)

* ExportAsHidden

Please note that some browsers do not support hidden columns and if you open exported file you could see the hidden columns. To make sure that the hidden columns or rows in the exported HTML file will not be included, you should set __HiddenColumnOption__ or __HiddenRowOption__  property to *DoNotExport*:

####  Setting the HiddenColumnOption

{{source=..\SamplesCS\GridView\ExportingData\ExportToHTML1.cs region=settingTheHiddenColumnOption}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToHTML1.vb region=settingTheHiddenColumnOption}} 

````C#
exporter.HiddenColumnOption = Telerik.WinControls.UI.Export.HiddenOption.DoNotExport;

````
````VB.NET
exporter.HiddenColumnOption = Telerik.WinControls.UI.Export.HiddenOption.DoNotExport

````

{{endregion}} 

#### Columns Width options 

There are three options for the column widths. First option is to have columns with fixed width, dependent on the size of the columns in the actual RadGridView that is being exported. This is the default way the exporter works. Second option is to set a fixed width for all the columns. The columns will then take this width while keeping their aspect ratio. To set a fixed size for all columns use the __FitWidthSize__ option of the exporter.

#### Setting FitWidthSize

{{source=..\SamplesCS\GridView\ExportingData\ExportToHTML1.cs region=settingFixedColumnsWidth}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToHTML1.vb region=settingFixedColumnsWidth}} 

````C#
exporter.FitWidthSize = 1000;

````
````VB.NET
exporter.FitWidthSize = 1000

````

{{endregion}} 

The third option is to set the column widths to be auto calculated depending on the content of the cells in the column. For this option you can use the __AutoSizeColumns__ property.

#### Setting AutoSizeColumns

{{source=..\SamplesCS\GridView\ExportingData\ExportToHTML1.cs region=settingAutoSizeColumns}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToHTML1.vb region=settingAutoSizeColumns}} 

````C#
exporter.AutoSizeColumns = true;

````
````VB.NET
exporter.AutoSizeColumns = True

````

{{endregion}} 

If you use this option you need to control how the cells are sized. To do that you can use the __CellWhiteSpace__ option of the `HTMLCellElement` which controls how white spaces are handled. The possible values are. 

* Normal (Defalut)

* NoWrap

* Pre

* PreLine

* PreWrap

### Exporting Visual Settings

Using the __ExportToHTML__ class allows you to export the visual settings (themes) to the HTML file. ExportToHTML also provides a visual representation of the alternating row color. This feature works only if __EnableAlternatingRow__ property is set to *true*. Note that it does not transfer the alternating row settings that come from control theme. RadGridView will also export the conditional formatting to the HTML file. The row height is exported with the default DPI transformation (60pixels = 72points). You can enable exporting visual settings through the __ExportVisualSettings__ property. By default the value of this property is *false*.

####  Setting ExportVisualSettings

{{source=..\SamplesCS\GridView\ExportingData\ExportToHTML1.cs region=settingExportVisualSettings}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToHTML1.vb region=settingExportVisualSettings}} 

````C#
exporter.ExportVisualSettings = true;

````
````VB.NET
exporter.ExportVisualSettings = True

````

{{endregion}} 

### HTML Table Caption

You can specify the table caption through __TableCaption__ property.

####  Setting the SheetName

{{source=..\SamplesCS\GridView\ExportingData\ExportToHTML1.cs region=settingTheSheetName}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToHTML1.vb region=settingTheSheetName}} 

````C#
exporter.TableCaption = "Table";

````
````VB.NET
exporter.TableCaption = "Table"

````

{{endregion}} 

### Summaries export option

You can use __SummariesExportOption__ property to specify how to export summary items. There are four options to choose from:

* ExportAll (default)

* ExportOnlyTop

* ExportOnlyBottom

* DoNotExport

#### Setting the SummariesExportOption

{{source=..\SamplesCS\GridView\ExportingData\ExportToHTML1.cs region=settingSummariesExportOptions}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToHTML1.vb region=settingSummariesExportOptions}} 

````C#
exporter.SummariesExportOption = SummariesOption.DoNotExport;

````
````VB.NET
exporter.SummariesExportOption = SummariesOption.DoNotExport

````

{{endregion}} 

## RunExport method

Exporting data to HTML is done through the __RunExport__ method. This method accepts the following parameter:

* FileName - the name of the exported file.

Consider the code sample below:

#### Export to HTML format

{{source=..\SamplesCS\GridView\ExportingData\ExportToHTML1.cs region=exportToHtmlFormat}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToHTML1.vb region=exportToHtmlFormat}} 

````C#
string fileName = "c:\\ExportedData.htm";
exporter.RunExport(fileName);

````
````VB.NET
Dim fileName As String = "c:\\ExportedData.htm"
exporter.RunExport(fileName)

````

{{endregion}} 

## Events

1\. __HTMLCellFormating:__ It gives access to a single cell’s HTML element that allows you to make additional formatting for every HTML cell related to the exported RadGridView: 

####  Handling the HTMLCellFormatting event

{{source=..\SamplesCS\GridView\ExportingData\ExportToHTML1.cs region=handlingHtmlCellFormattingEvent}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToHTML1.vb region=handlingHtmlCellFormattingEvent}} 

````C#
void exporter_HTMLCellFormatting(object sender, Telerik.WinControls.UI.Export.HTML.HTMLCellFormattingEventArgs e)
{
    if (e.GridColumnIndex == 1 && e.GridRowInfoType == typeof(GridViewDataRowInfo))
    {
        e.HTMLCellElement.Value = "Test value";
        e.HTMLCellElement.Styles.Add("background-color", ColorTranslator.ToHtml(Color.Orange));
    }
}

````
````VB.NET
Private Sub exporter_HTMLCellFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Export.HTML.HTMLCellFormattingEventArgs)
    If e.GridColumnIndex = 1 AndAlso e.GridRowInfoType.Equals(GetType(GridViewDataRowInfo)) Then
        e.HTMLCellElement.Value = "Test value"
        e.HTMLCellElement.Styles.Add("background-color", ColorTranslator.ToHtml(Color.Orange))
    End If
End Sub

````

{{endregion}} 

2\. __HTMLTableCaptionFormatting:__ this event can be used to make an additional formatting on the HTML table caption element. You can access __TableCaptionElement__ through event’s arguments and apply a valid HTML format.

####  Handling the HTMLTableCaptionFormatting event

{{source=..\SamplesCS\GridView\ExportingData\ExportToHTML1.cs region=handlingHtmlTableCaptionFormattingEvent}} 
{{source=..\SamplesVB\GridView\ExportingData\ExportToHTML1.vb region=handlingHtmlTableCaptionFormattingEvent}} 

````C#
void exporter_HTMLTableCaptionFormatting(object sender, Telerik.WinControls.UI.Export.HTML.HTMLTableCaptionFormattingEventArgs e)
{
    e.TableCaptionElement.Styles.Add("background-color", ColorTranslator.ToHtml(Color.Red));
    e.TableCaptionElement.Styles.Add("font-size", "200%");
    e.TableCaptionElement.Styles.Add("color", ColorTranslator.ToHtml(Color.White));
    e.TableCaptionElement.Styles.Add("font-weight", "bold");
    e.CaptionText = "My Table Caption";
}

````
````VB.NET
Private Sub exporter_HTMLTableCaptionFormatting(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Export.HTML.HTMLTableCaptionFormattingEventArgs)
    e.TableCaptionElement.Styles.Add("background-color", ColorTranslator.ToHtml(Color.Red))
    e.TableCaptionElement.Styles.Add("font-size", "200%")
    e.TableCaptionElement.Styles.Add("color", ColorTranslator.ToHtml(Color.White))
    e.TableCaptionElement.Styles.Add("font-weight", "bold")
    e.CaptionText = "My Table Caption"
End Sub

````

{{endregion}} 





# See Also
* [Export Data in a Group to Excel]({%slug winforms/gridview/exporting-data/export-data-in-a-group-to-excel%})

* [Export to CSV]({%slug winforms/gridview/exporting-data/export-to-csv%})

* [Export to Excel via ExcelML Format]({%slug winforms/gridview/exporting-data/export-to-excel-via-excelml-format%})

* [Export to PDF]({%slug winforms/gridview/exporting-data/export-to-pdf%})

* [Overview]({%slug winforms/gridview/exporting-data/overview%})

* [Export to Excel]({%slug winforms/gridview/exporting-data/spread-export%})

* [Troubleshooting]({%slug winforms/gridview/exporting-data/troubleshooting%})


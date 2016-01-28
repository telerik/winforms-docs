---
title: Create, Open and Save Workbooks
page_title: Create, Open and Save Workbooks | UI for WinForms Documentation
description: Create, Open and Save Workbooks
slug: winforms/spreadprocessing/working-with-workbooks/create-open-and-save-workbooks
tags: create,,open,and,save,workbooks
published: True
position: 1
previous_url: spreadprocessing-working-with-workbooks-create-open-and-save-workbooks
---

# Create, Open and Save Workbooks

You have the possibility to create workbooks from scratch, open existing files as workbooks and save workbooks into different file formats. This article aims to help you get familiar with these operations.

* [Create a Workbook](#create-a-workbook)

* [Open a Workbook](#open-a-workbook)

* [Save a Workbook](#save-a-workbook)

## Create a Workbook

The fact that the document model of __RadSpreadsheet__ is completely decoupled from UI enables numerous server side scenarios that build a document from scratch. The model allows you to instantiate a new workbook using the nullary constructor of the __Workbook__ class. Note that when a new workbook is created in this manner its __Worksheet__'s collection is still empty. __Example 1__ creates a new workbook and adds its first worksheet, which also becomes the __ActiveWorksheet__ of the workbook:

#### Example 1: Create a workbook and add a worksheet to it.

{{source=..\SamplesCS\RadSpreadProcessing\WorkingWithWorkbooks\RadSpreadProcessingCreateOpenAndSaveWorkbooks.cs region=radspreadprocessing-working-with-workbooks-create-open-and-save-workbooks_0}} 
{{source=..\SamplesVB\RadSpreadProcessing\WorkingWithWorkbooks\RadSpreadProcessingCreateOpenAndSaveWorkbooks.vb region=radspreadprocessing-working-with-workbooks-create-open-and-save-workbooks_0}} 

````C#
Workbook workbook = new Workbook();
Worksheet worksheet = workbook.Worksheets.Add();

````
````VB.NET
Dim workbook As New Workbook()
Dim worksheet As Worksheet = workbook.Worksheets.Add()

````

{{endregion}} 

## Open a Workbook

__RadSpreadsheet__ document model allows you to easily import a workbook from a number of formats. Currently, the model supports csv, txt and xlsx formats. To import a workbook, you need to instantiate a specific format provider, invoke its __Import()__ method and pass a stream as an argument. __Example 2__ uses a WebClient to download a csv file stored on a server. Further, the code creates a __CsvFormatProvider__ object and invokes its __Import()__ method:

#### Example 2: Download and import xlsx file

{{source=..\SamplesCS\RadSpreadProcessing\WorkingWithWorkbooks\RadSpreadProcessingCreateOpenAndSaveWorkbooks.cs region=radspreadprocessing-working-with-workbooks-create-open-and-save-workbooks_1}} 
{{source=..\SamplesVB\RadSpreadProcessing\WorkingWithWorkbooks\RadSpreadProcessingCreateOpenAndSaveWorkbooks.vb region=radspreadprocessing-working-with-workbooks-create-open-and-save-workbooks_1}} 

````C#
const string FilePath = @"http://localhost:54352/Resourses/SampleFile.xlsx";
WebClient webClient = new WebClient();
webClient.OpenReadCompleted += (sender, eventArgs) =>
{
    XlsxFormatProvider formatProvider = new XlsxFormatProvider();
    Workbook workbook = formatProvider.Import(eventArgs.Result);
};
webClient.OpenReadAsync(new Uri(FilePath));

````
````VB.NET
Const FilePath As String = "http://localhost:54352/Resourses/SampleFile.xlsx"
Dim webClient As New WebClient()
AddHandler webClient.OpenReadCompleted, Sub(sender, eventArgs)
                                            Dim formatProvider As New XlsxFormatProvider()
                                            Dim workbook As Workbook = formatProvider.Import(eventArgs.Result)
                                        End Sub
webClient.OpenReadAsync(New Uri(FilePath))

````

{{endregion}} 

More information about import is available in the [Formats and Conversion]({%slug winforms/spreadprocessing/formats-and-conversion%}) section.


## Save a Workbook

__RadSpreadsheet__ also allows you to save a workbook into a csv, txt and xlsx formats. To export a workbook, you need to instantiate the format provider you would like to use and invoke its __Export()__ method. __Example 3__ demonstrates how to export an existing Workbook to a csv file. The snippet creates a new workbook with a single worksheet. Further, it creates a __CsvFormatProvider__ and invokes its __Export()__ method:

#### Example 3: Save csv file

{{source=..\SamplesCS\RadSpreadProcessing\WorkingWithWorkbooks\RadSpreadProcessingCreateOpenAndSaveWorkbooks.cs region=radspreadprocessing-working-with-workbooks-create-open-and-save-workbooks_3}} 
{{source=..\SamplesVB\RadSpreadProcessing\WorkingWithWorkbooks\RadSpreadProcessingCreateOpenAndSaveWorkbooks.vb region=radspreadprocessing-working-with-workbooks-create-open-and-save-workbooks_3}} 

````C#
Workbook workbook = new Workbook();
workbook.Worksheets.Add();
string fileName = "SampleFile.csv";
IWorkbookFormatProvider formatProvider = new CsvFormatProvider();
using (FileStream output = new FileStream(fileName, FileMode.Create))
{
    formatProvider.Export(workbook, output);
}

````
````VB.NET
Dim workbook As New Workbook()
workbook.Worksheets.Add()
Dim fileName As String = "SampleFile.csv"
Dim formatProvider As IWorkbookFormatProvider = New CsvFormatProvider()
Using output As New FileStream(fileName, FileMode.Create)
    formatProvider.Export(workbook, output)
End Using

````

{{endregion}} 

More information about export is available in the [Formats and Conversion]({%slug winforms/spreadprocessing/formats-and-conversion%}) section.

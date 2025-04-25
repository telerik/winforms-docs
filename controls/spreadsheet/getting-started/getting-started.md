---
title: Getting Started
page_title: Getting Started - WinForms Spreadsheet Control
description: Learn how to add a RadSpreadsheet control to a form and wire it with UI.
slug: radspreadsheet-getting-started
tags: getting,started
published: True
position: 1
---

# Getting Started with WinForms Spreadsheet

This tutorial will help you to quickly get started using the control.

## Adding Telerik Assemblies Using NuGet

To use `RadSpreadsheet` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.ChartView__
* __Telerik.WinControls.GridView__
* __Telerik.WinControls.RadSpreadsheet__
* __Telerik.WinControls.UI__
* __Telerik.Windows.Documents.Core__
* __Telerik.Windows.Documents.Spreadsheet__
* __Telerik.Windows.Documents.Spreadsheet.FormatProviders.OpenXml__
* __Telerik.Windows.Documents.Spreadsheet.FormatProviders.Pdf__
* __Telerik.Windows.Documents.Spreadsheet.FormatProviders.Xls__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadSpreadsheet

This section explains how to add a __RadSpreadsheet__ control to a form and wire it with __UI__.

Now add the __RadSpreadsheet__ control to the form. After that add __RadSpreadsheetRibbonBar__ to the form. Dock it to the top and then Dock the __RadSpreadsheet__ to fill the remaining space. Your layout should look like this.

![WinForms RadSpreadsheet with Ribbon UI](images/spreadsheet-getting-started001.png) 

Open the Smart Tag of the ribbon and set the associated control. 

![WinForms RadSpreadsheetRibbonBar Associated Spreadsheet](images/spreadsheet-getting-started002.png) 

That is all. You are ready to start the application and examine the control features.

### Programmatically loading documents

In some cases you may need to load the document in the code behind, not by using the UI. The following snippet demonstrates how you can load the document directly from file.

#### Load document with code.

{{source=..\SamplesCS\Spreadsheet\GettingStartedCode.cs region=LoadFile}} 
{{source=..\SamplesVB\Spreadsheet\GettingStartedCode.vb region=LoadFile}}

````C#
string fileName = @"C:\Test.xlsx";
var formatProvider = new XlsxFormatProvider();
using (Stream input = new FileStream(fileName, FileMode.Open))
{
    radSpreadsheet1.Workbook = formatProvider.Import(input);
}

````
````VB.NET
Dim fileName As String = "C:\Test.xlsx"
Dim formatProvider = New XlsxFormatProvider()
Using input As Stream = New FileStream(fileName, FileMode.Open)
    radSpreadsheet1.Workbook = formatProvider.Import(input)
End Using

````



{{endregion}} 

>note Detailed information about the format providers is available [here](https://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/formats-and-conversion/general-information).

## See Also

* [SpreadProcessing](https://docs.telerik.com/devtools/document-processing/libraries/radspreadprocessing/overview)


## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Spreadsheet Component](https://www.telerik.com/products/winforms/spreadsheet.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)


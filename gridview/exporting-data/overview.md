---
title: Overview
page_title: Overview | RadGridView
description: RadGridView supports several built-in methods for exporting data and they are listed in this article.
slug: winforms/gridview/exporting-data/overview
tags: overview
published: True
position: 0
previous_url: gridview-exporting-data-overview
---

# Exporting Data Overview

|RELATED VIDEOS|
| ------ |
|[Export to Excel with RadGridView for WinForms](http://www.telerik.com/videos/winforms/export-to-excel-with-radgridview-for-winforms)<br>In this RadTip, John Kellar demonstrates how you can export data stored in a RadGridView for Windows Forms to Excel using the ExcelML export options. (Runtime: 08:52)|

__RadGridView__ supports several built-in methods for exporting data:

* [SpreadExcelExport]({%slug winforms/gridview/exporting-data/spread-export%}): Available since R3 2014 (version 2014.3.1021). Allows export to __XSLX, CSV, PDF__ and __TXT__ formats. Supported with .NET 4.0 or newer. The exporter utilized the RadSpreadProcessing library, where you have the whole excel workbook available for edit.

* [SpreadStreemExport]({%slug winforms/gridview/exporting-data/stream-export%}): Utilized RadSpreadStreamProcessing library, hence does not load the entire document in the memory, instead it writes everything straight to the file. Useful for exporting large amount of data. 

* [Export to Excel via ExcelML]({%slug winforms/gridview/exporting-data/export-to-excel-via-excelml-format%}): Exports to Excel ML (XML format), and can be opened with excel as well. Use for .NET 2.0 applications.  

* [Export to CSV]({%slug winforms/gridview/exporting-data/export-to-csv%})

* [Export to HTML]({%slug winforms/gridview/exporting-data/export-to-html%})

* [Export to PDF]({%slug winforms/gridview/exporting-data/export-to-pdf%})


>note As of R1 2012 RadGridView natively supports printing. More information about this feature can be found [here]({%slug winforms/gridview/printing-support%}).
>




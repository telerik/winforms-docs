---
title: Export Data in a Group to Excel
page_title: Export Data in a Group to Excel - WinForms GridView Control
description: Learn how to export the data in the selected group to Excel using a custom context menu option in the WinForms GridView.
slug: winforms/gridview/exporting-data/export-data-in-a-group-to-excel
tags: export,data,in,a,group,to,excel
published: True
position: 4
previous_url: gridview-exporting-data-export-data-in-a-group-to-excel
---

# Export Data in a Group to Excel

Sometimes you may need to export just the data in a group in a grouped RadGridView. This is possible by using the context menu:

1\. Create RadContextMenu and get the right-clicked group header row by using the __MouseDown__ event and the __GetGridGroupHeaderRowElement__ method. After determining the clicked group row, you can get its child rows. Then simply show the context menu:

<snippet id='gridview-exportdatainagrouptoexcel-createcontextmenuandgetthegroupchildrows-cs' />
<snippet id='gridview-exportdatainagrouptoexcel-createcontextmenuandgetthegroupchildrows-vb' />

2\. Since the export to excel methods do not support exporting only specified records, you can work-around this if you temporarily hide the unnecessary rows and use [ExportToExcelML]({%slug winforms/gridview/exporting-data/export-to-excel-via-excelml-format%}) class with the __DonNotExport__ for __HiddenRowOption__ properties.

3\. In the click event of the context menu item, mark the rows in the RadGridView.Rows collection that match the rows of the child collection by setting their __IsVisible__ property to *true*, and all the rest to *false*. Then simply export RadGridView with __HiddenRowOption__ set to *HiddenOption.DoNotExport*:

<snippet id='gridview-exportdatainagrouptoexcel-marktheunnesseceryrowsandexporttherestofthem-cs' />
<snippet id='gridview-exportdatainagrouptoexcel-marktheunnesseceryrowsandexporttherestofthem-vb' />

4\. If you need to get the text from the GroupRowHeader, use the following snippet:

<snippet id='gridview-exportdatainagrouptoexcel-getthegrouplinetext-cs' />
<snippet id='gridview-exportdatainagrouptoexcel-getthegrouplinetext-vb' />

## See Also
* [Export to CSV]({%slug winforms/gridview/exporting-data/export-to-csv%})

* [Export to Excel via ExcelML Format]({%slug winforms/gridview/exporting-data/export-to-excel-via-excelml-format%})

* [Export to PDF]({%slug winforms/gridview/exporting-data/export-to-pdf%})

* [Export to HTML]({%slug winforms/gridview/exporting-data/export-to-html%})

* [Overview]({%slug winforms/gridview/exporting-data/overview%})

* [Export to Excel]({%slug winforms/gridview/exporting-data/spread-export%})

* [Troubleshooting]({%slug winforms/gridview/exporting-data/troubleshooting%})


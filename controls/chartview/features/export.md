---
title: Export
page_title: Export - ChartView
description: RadChartView supports export to image functionality. You can export the chart`s content by using any of the following overloads of the ExportToImage method.
slug: winforms/chartview-/features/export
tags: export
published: True
position: 9
previous_url: chartview-features-export
---

# Export

__RadChartView__ supports export to image functionality.

You can export the __RadChartVew__ content by using one of the following overloads of the __ExportToImage__ method:
      
* __ExportToImage(Stream stream, Size size)__

* __ExportToImage(Stream stream, Size size, ImageFormat imageFormat)__

* __ExportToImage(string filePath, Size size)__

* __ExportToImage(string filePath, Size size, ImageFormat imageFormat)__ 

#### Export to Image

<snippet id='chartview-export-exporttoimage-cs'/>
<snippet id='chartview-export-exporttoimage-vb'/>

 

>caption Figure 1: Exported Chart
![WinForms RadChartView Exported Chart](images/chartview-features-export001.png)

>note If you need to export the chart data to a document, you can use a __RadDocument__ and [insert the exported image]({%slug winforms/richtexteditor-/document-elements/inline-image%}) into it. Afterwards, you can use the __RadRichTextEditor__ 's[ export]({%slug winforms/richtexteditor/import-export/overview%}) functionality.
>

# See Also

* [Axes]({%slug winforms/chartview-/axes%})
* [Series Types]({%slug winforms/chartview-/series-types%})
* [Populating with Data]({%slug winforms/chartview-/populating-with-data%})
* [Customization]({%slug winforms/chartview-/customization/custom-rendering%})
* [Printing]({%slug winforms/chartview-/printing-support/printing%})

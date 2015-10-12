---
title: Export
page_title: Export | UI for WinForms Documentation
description: Export
slug: winforms/chartview-/features/export
tags: export
published: True
position: 9
---

# Export



__RadChartView__ supports export to image functionality.
      

## 

You can export the __RadChartVew__ content by using one of the following overloads of the __ExportToImage__ method:
      

* ExportToImage(Stream stream, Size size)

* ExportToImage(Stream stream, Size size, ImageFormat imageFormat)

* ExportToImage(Stream stream, Size size)

* ExportToImage(Stream stream, Size size, ImageFormat imageFormat) 

{{source=..\SamplesCS\ChartView\ChartViewExport.cs region=ExportToImage}} 
{{source=..\SamplesVB\ChartView\ChartViewExport.vb region=ExportToImage}} 

````C#
            
            string filePath = @"..\..\..\exprtedChart.png";
            this.radChartView1.ExportToImage(filePath, this.radChartView1.Size, System.Drawing.Imaging.ImageFormat.Png);
````
````VB.NET

        Dim filePath As String = "..\..\..\exprtedChart.png"
        Me.RadChartView1.ExportToImage(filePath, Me.RadChartView1.Size, System.Drawing.Imaging.ImageFormat.Png)

        '
````

{{endregion}} 


![chartview-features-export 001](images/chartview-features-export001.png)

>note If you need to export the chart data to a document, you can use a __RadDocument__ and [insert the exported image]({%slug winforms/richtexteditor-/document-elements/inline-image%}) into it. Afterwards, you can use the __RadRichTextEditor__ 's[ export]({%slug winforms/richtexteditor/import%}) functionality.
>


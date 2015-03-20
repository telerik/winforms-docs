---
title: Export
page_title: Export
description: Export
slug: chartview-features-export
tags: export
published: True
position: 9
---

# Export



__RadChartView__ supports export to image functionality.
      

## 

You can export the __RadChartVew__ content by using one of the following
        overloads of the __ExportToImage__ method:
      

* ExportToImage(Stream stream, Size size)

* ExportToImage(Stream stream, Size size, ImageFormat imageFormat)

* ExportToImage(Stream stream, Size size)

* ExportToImage(Stream stream, Size size, ImageFormat imageFormat)

#### __[C#]__

{{region ExportToImage}}
	            
	            string filePath = @"..\..\..\exprtedChart.png";
	            this.radChartView1.ExportToImage(filePath, this.radChartView1.Size, System.Drawing.Imaging.ImageFormat.Png);
	            
	{{endregion}}



#### __[VB.NET]__

{{region ExportToImage}}
	
	        Dim filePath As String = "..\..\..\exprtedChart.png"
	        Me.RadChartView1.ExportToImage(filePath, Me.RadChartView1.Size, System.Drawing.Imaging.ImageFormat.Png)
	
	        '#End Region
	
	    End Sub
	End Class

![chartview-features-export 001](images/chartview-features-export001.png)

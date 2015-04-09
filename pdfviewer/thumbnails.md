---
title: Thumbnails
page_title: Thumbnails
description: Thumbnails
slug: pdfviewer-thumbnails
tags: thumbnails
published: True
position: 6
---

# Thumbnails



RadPdfViewer providers options to display the pdf pages as thumbnails for easier navigation.![pdfviewer-thumbnails 001](images/pdfviewer-thumbnails001.png)

## Thumbnails API

You can show or hide the thumbnails programmatically with following methods ShowThumbnails, HideThumbnails:

#### __[C#] __

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=ShowHideThumbnails}}
	            this.radPdfViewer1.ShowThubnails();
	
	            this.radPdfViewer1.HideThumbnails();
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=ShowHideThumbnails}}
	        Me.radPdfViewer1.ShowThubnails()
	
	        Me.radPdfViewer1.HideThumbnails()
	{{endregion}}



You can customize the size of the thumbnails with __ThumbnailsScaleFactor__ property. This property sets the size of the thumbnails between 0 and 1 where 1 is the page in full size. By default this property is set to 0.15 which means 15% of the normal page size.

#### __[C#] __

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=ThumbnailsScaleFactor}}
	            this.radPdfViewer1.ThumbnailsScaleFactor = 0.11f;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=ThumbnailsScaleFactor}}
	        Me.radPdfViewer1.ThumbnailsScaleFactor = 0.11F
	{{endregion}}



You can customize the width of the thumbnails list with the __ThumbnailListWidth__ property. Default value of this property is 200.

#### __[C#] __

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=ThumbnailsScaleFactor}}
	            this.radPdfViewer1.ThumbnailsScaleFactor = 0.11f;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=ThumbnailsScaleFactor}}
	        Me.radPdfViewer1.ThumbnailsScaleFactor = 0.11F
	{{endregion}}



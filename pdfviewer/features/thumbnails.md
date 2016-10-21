---
title: Thumbnails
page_title: Thumbnails | RadPdfViewer
description: RadPdfViewer providers options to display the pdf pages as thumbnails for easier navigation.
slug: winforms/pdfviewer/thumbnails
tags: thumbnails
published: True
position: 1
previous_url: pdfviewer-thumbnails
---

# Thumbnails

__RadPdfViewer__ providers options to display the pdf pages as thumbnails for easier navigation.

![pdfviewer-thumbnails 001](images/pdfviewer-thumbnails001.png)

You can control whether the thumbnail element is visible by setting the __EnableThumbnail__ property.

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=EnableThumbnails}} 
{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=EnableThumbnails}} 

````C#
this.radPdfViewer1.EnableThumbnails = true;

````
````VB.NET
Me.radPdfViewer1.EnableThumbnails = True

````

{{endregion}}

## Thumbnails API

You can show or hide the thumbnails programmatically with following methods ShowThumbnails, HideThumbnails:

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=ShowHideThumbnails}} 
{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=ShowHideThumbnails}} 

````C#
this.radPdfViewer1.ShowThubnails();
this.radPdfViewer1.HideThumbnails();

````
````VB.NET
Me.radPdfViewer1.ShowThubnails()
Me.radPdfViewer1.HideThumbnails()

````

{{endregion}}

You can customize the size of the thumbnails with __ThumbnailsScaleFactor__ property. This property sets the size of the thumbnails between 0 and 1 where 1 is the page in full size. By default this property is set to 0.15 which means 15% of the normal page size.

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=ThumbnailsScaleFactor}} 
{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=ThumbnailsScaleFactor}} 

````C#
this.radPdfViewer1.ThumbnailsScaleFactor = 0.11f;

````
````VB.NET
Me.radPdfViewer1.ThumbnailsScaleFactor = 0.11F

````

{{endregion}}

You can customize the width of the thumbnails list with the __ThumbnailListWidth__ property. Default value of this property is 200.

{{source=..\SamplesCS\PdfViewer\PdfPublicApi.cs region=ThumbnailsScaleFactor}} 
{{source=..\SamplesVB\PdfViewer\PdfPublicApi.vb region=ThumbnailsScaleFactor}} 

````C#
this.radPdfViewer1.ThumbnailsScaleFactor = 0.11f;

````
````VB.NET
Me.radPdfViewer1.ThumbnailsScaleFactor = 0.11F

````

{{endregion}}
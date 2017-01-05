---
title: Export to Image
page_title: Export To Image | RadPdfViewer
description: This article shows how you can use the built-in methods to export single or more pages to an image. 
slug: winforms/pdfviewer/export-to-image
tags: export, image
published: True
position: 16
---

# Export to image

There are tow methods that are allows you to export singe page or the entire document to an image:

* __ExportPage:__ exports the specified page to an image. 
* __ExportPages:__ exports the entire document to an image. 


### Methods parameters

When using this methods you must specify the following parameters:

* __PageNumber:__ The number of the page to export. Available only with ExportPage method.
* __FileName:__ The path and name for the exported file. 
* __ScaleSize:__ The scale factor, 1 is the original size.
* __OverrideFileIfAlreadyExist:__ Set to true if you want to replace the existing file.
* __ImageFormat:__ Use one of the formats predefined in the `System.Drawing.Imaging.ImageFormat` class.

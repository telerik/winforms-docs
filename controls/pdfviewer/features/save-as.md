---
title: Save As
page_title: Save As - WinForms PdfViewer Control
description: WinForms PdfViewer enables you to save the loaded document to a file on the file system.
slug: radpdfviewer-features-save-as
tags: save as
published: True
position: 2
---

# Save As

**RadPdfViewer** enables you to save the loaded document to a file on the file system.

>caption Figure 1: Save As button in RadPdfViewerNavigator

![pdfviewer-features-save-as 001](images/features-save-as001.png) 

### Saving in Code-Behind

You can save the loaded document programmatically by using the **SaveDocument** method of **RadPdfViewer** from your code.

#### Save As

{{source=..\SamplesCS\PdfViewer\PdfUI.cs region=SaveAs}} 
{{source=..\SamplesVB\PdfViewer\PdfUI.vb region=SaveAs}} 

````C#
this.radPdfViewer1.SaveDocument(filePath);

````
````VB.NET
Me.RadPdfViewer1.SaveDocument(filePath)

````

{{endregion}}
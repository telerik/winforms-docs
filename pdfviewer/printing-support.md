---
title: Printing support
page_title: Printing support
description: Printing support
slug: pdfviewer-printing-support
tags: printing,support
published: True
position: 4
---

# Printing support



## 

RadPdfViewer can be used with [RadPrintDocument]({%slug tpf-printing-support-radprintdocument%}) just as any other control that supports printing 
        – drag a __RadPrintDocument__ to the form and set the __Printed Object__ to the desired viewer.
      ![pdfviewer-printing-support](images/pdfviewer-printing-support.png)

As such, RadPdfViewer allows you to benefit from the features that RadPrintDocument provides: header, footer, watermark, preview and settings dialogs.
        

## Printing with code

RadPdfViewer also exposes the two known methods which allow you to easily print the document without involving any complicated settings:
        

#### __[C#] __

{{source=..\SamplesCS\PdfViewer\PdfGettingStarted.cs region=PrintMethods}}
	
	            this.radPdfViewer1.Print();
	            this.radPdfViewer1.PrintPreview();
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PdfViewer\PdfGettingStarted.vb region=PrintMethods}}
	
	        Me.RadPdfViewer1.Print()
	        Me.RadPdfViewer1.PrintPreview()
	
	        '#End Region
	    End Sub
	
	End Class



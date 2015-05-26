---
title: Printing support
page_title: Printing support | UI for WinForms Documentation
description: Printing support
slug: winforms/pdfviewer/printing-support
tags: printing,support
published: True
position: 4
---

# Printing support



## 

RadPdfViewer can be used with [RadPrintDocument]({%slug winforms/telerik-presentation-framework/printing-support/radprintdocument%}) just as any other control that supports printing 
        – drag a __RadPrintDocument__ to the form and set the __Printed Object__ to the desired viewer.
      ![pdfviewer-printing-support](images/pdfviewer-printing-support.png)

As such, RadPdfViewer allows you to benefit from the features that RadPrintDocument provides: header, footer, watermark, preview and settings dialogs.
        

## Printing with code

RadPdfViewer also exposes the two known methods which allow you to easily print the document without involving any complicated settings:
        #_[C#] _

	



{{source=..\SamplesCS\PdfViewer\PdfGettingStarted.cs region=PrintMethods}} 
{{source=..\SamplesVB\PdfViewer\PdfGettingStarted.vb region=PrintMethods}} 

````C#

            this.radPdfViewer1.Print();
            this.radPdfViewer1.PrintPreview();
````
````VB.NET

        Me.RadPdfViewer1.Print()
        Me.RadPdfViewer1.PrintPreview()

        '
````

{{endregion}} 




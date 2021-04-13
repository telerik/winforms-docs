---
title: Getting started
page_title: Getting started - WinForms PdfViewer Control
description: Winforms PdfViewer enables you to easily load and display PDF documents natively in your app without using any third-party tools except Telerik’s WinForms toolbox.
slug: winforms/pdfviewer/getting-started
tags: getting,started
published: True
position: 2
previous_url: pdfviewer-getting-started
---

# Getting started

| RELATED VIDEOS |  |
| ------ | ------ |
|[Getting Started with the WinForms RadPdfViewer](http://tv.telerik.com/watch/radcontrols-for-winforms/getting-started-with-the-winforms-radpdfviewer)<br>__RadPdfViewer__ enables you to easily load and display PDF documents natively in your app without using any third-party tools except Telerik’s WinForms toolbox. Thanks to its built-in UI virtualization, RadPdfViewer delivers a performant solution in every scenario. This component will come as a nice addition to your Content Management Systems and Reporting applications, let’s see what __RadPdfViewer__ provides as a feature set.|![pdfviewer-getting-started 003](images/pdfviewer-getting-started003.png)|

This article will help you quickly get started with __RadPdfViewer__. To start off, drag and drop __RadPdfViewer__ the control from the toolbox to your form. 

> As of R1 2021 __RadPdfViewer__ is optimized to work together with [RadPdfProcessing](https://docs.telerik.com/devtools/document-processing/libraries/radpdfprocessing/overview) library model. The idea is to unify the underlying architecture of __RadPdfViewer__ and __PdfProcessing__ to allow feature parity. __RadPdfViewer__ uses the new model by default. However, the user can easily switch to the old model by using the __UsePdfProcessingModel__ and __UsePdfProcessingModelDefaultValue__  boolean properties. They should be set before loading a PDF document.
* __UsePdfProcessingModel__ property: Gets or sets a value indicating weather the __RadPdfViewer__ should use the new __RadPdfProcessing__ rendering model on document import. The default value is _true_. If this property is set to _false_ the __RadPdfViewer__ will fall-back internally to use the old model.
* __UsePdfProcessingModelDefaultValue__ property: Gets or sets a default value for __UsePdfProcessingModel__ property. The default value is _true_. When __RadPdfViewer.UseOldRenderingDefaultValue__ is set all __RadPdfViewer__ instances will use the specified model.

Once you have __RadPdfViewer__, you can set the __ViewerMode__ option to a desired value.

>caption Figure 1: Visual Studio Designer
![pdfviewer-getting-started 001](images/pdfviewer-getting-started001.png)

There is also a property for the above setting which you can set in your code:

#### ViewerMode Property

{{source=..\SamplesCS\PdfViewer\PdfGettingStarted.cs region=Modes}} 
{{source=..\SamplesVB\PdfViewer\PdfGettingStarted.vb region=Modes}} 

````C#
this.radPdfViewer1.ViewerMode = FixedDocumentViewerMode.TextSelection;

````
````VB.NET
Me.RadPdfViewer1.ViewerMode = FixedDocumentViewerMode.TextSelection

````

{{endregion}}

Loading a PDF document is done via the __LoadDocument__ method. It accepts either a filename or an input stream as an argument.

#### LoadDocument Method

{{source=..\SamplesCS\PdfViewer\PdfGettingStarted.cs region=Loading}} 
{{source=..\SamplesVB\PdfViewer\PdfGettingStarted.vb region=Loading}} 

````C#
this.radPdfViewer1.LoadDocument(Application.StartupPath + "\\PdfViewer\\Sample.pdf");

````
````VB.NET
Me.RadPdfViewer1.LoadDocument(Application.StartupPath & "\PdfViewer\Sample.pdf")

````

{{endregion}}

The calls above will start to load the specified document asynchronously. When the loading finishes, the __DocumentLoaded__ event will fire:

#### DocumentLoaded Event

{{source=..\SamplesCS\PdfViewer\PdfGettingStarted.cs region=DocumentLoaded}} 
{{source=..\SamplesVB\PdfViewer\PdfGettingStarted.vb region=DocumentLoaded}} 

````C#
void radPdfViewer1_DocumentLoaded(object sender, EventArgs e)
{
    RadMessageBox.Show("The document was loaded.");
}

````
````VB.NET
Private Sub radPdfViewer1_DocumentLoaded(sender As Object, e As EventArgs)
    RadMessageBox.Show("The document was loaded.")
End Sub

````

{{endregion}}

Respectively, to unload a document, you can use the __UnloadDocument__ method 

#### UnloadDocument Method 

{{source=..\SamplesCS\PdfViewer\PdfGettingStarted.cs region=Unloading}} 
{{source=..\SamplesVB\PdfViewer\PdfGettingStarted.vb region=Unloading}} 

````C#
this.radPdfViewer1.UnloadDocument();

````
````VB.NET
Me.RadPdfViewer1.UnloadDocument()

````

{{endregion}}

To provide to the end-user an additional set of abilities for manipulating the document, you can use __RadPdfViewerNavigator__. To do this, drag it from the toolbox to your form and set its __AssociatedViewer__ from its __SmartTag__ menu. 

>caption Figure 2. RadPdfViewerNavigator
![pdfviewer-getting-started 002](images/pdfviewer-getting-started002.png)

You can also set this in your code by using the __AssociatedPdfViewer__ property of the __PdfViewerNavigator__.

{{source=..\SamplesCS\PdfViewer\PdfGettingStarted.cs region=Navigator}} 
{{source=..\SamplesVB\PdfViewer\PdfGettingStarted.vb region=Navigator}} 

````C#
this.radPdfViewerNavigator1.AssociatedViewer = this.radPdfViewer1;

````
````VB.NET
Me.RadPdfViewerNavigator1.AssociatedViewer = Me.RadPdfViewer1

````

{{endregion}}

## Assembly References

If you add the __RadPdfViewer__ at run time you need to add references to the following assemblies:

* Telerik.WinControls.PdfViewer

* Telerik.WinControls

* Telerik.WinControls.UI

* TelerikCommon

* Telerik.Windows.Documents.Fixed

* Telerik.Windows.Documents.Core

* Telerik.Windows.Zip.dll

# See Also

* [Logical Structure]({%slug winforms/pdfviewer/structure/logical-structure%})
* [Visual Structure]({%slug winforms/pdfviewer/structure/visual-structure%})
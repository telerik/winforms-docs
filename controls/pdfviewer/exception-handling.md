---
title: Exception Handling
page_title: Exception Handling - RadPdfViewer
description: RadPdfViewer provides an API for handling exceptions caused by documents which cannot be loaded correctly because of unsupported features of the control.
slug: winforms/pdfviewer/exception-handling
tags: exception,handling
published: True
position: 11
previous_url: pdfviewer-exception-handling
---

# Exception Handling

__RadPdfViewer__ provides an API for handling exceptions caused by documents which cannot be loaded correctly because of unsupported features of the control. More information about the unsupported features in __RadPdfViewer__ is available [here]({%slug winforms/pdfviewer/unsupported-features%}).

## How to Handle Exceptions

__RadPdfViewer__ exposes an __DataError__ event.

#### Using the DateError event

{{source=..\SamplesCS\PdfViewer\PdfDataExceptionCode.cs region=Exception}} 
{{source=..\SamplesVB\PdfViewer\PdfDataExceptionCode.vb region=Exception}} 

````C#
public PdfDataExceptionCode()
{
    InitializeComponent();
    radPdfViewer1.DataError += radPdfViewer1_DataError;
}
void radPdfViewer1_DataError(object sender, PdfExceptionEventArgs args)
{
    NotSupportedFilterException filterException = args.Exception as NotSupportedFilterException;
    if (filterException != null)
    {
        // The document contains a filter which is not supported.
    }
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
    AddHandler radPdfViewer1.DataError, AddressOf radPdfViewer1_DataError
End Sub
Private Sub radPdfViewer1_DataError(ByVal sender As Object, ByVal args As PdfExceptionEventArgs)
    Dim filterException As NotSupportedFilterException = TryCast(args.Exception, NotSupportedFilterException)
    If filterException IsNot Nothing Then
        ' The document contains a filter which is not supported.
    End If
End Sub

````

{{endregion}}

The __PdfExceptionEventArgs__ argument exposed the following property:

* __Exception:__ This property represents the actual exception thrown by __RadPdfViewer__. All exceptions for features which are not supported by __RadPdfViewer__ inherit from the __Telerik.Windows.Pdf.Documents.Exceptions.NotSupportedFeatureException__ class:

* __NotSupportedFilterException:__ Represents an exception for a filter which is not supported. This exception has a FilterName property which specifies the name of the filter.

* __NotSupportedEncryptionException:__ Represents an exception for an encryption which is not supported. This exception has e EncryptionCode property which specifies the code of the encryption.

* __NotSupportedFontException:__ Represents an exception for a font which is not supported. This exception has a FontType property which specifies the type of the font.

* __NotSupportedShadingTypeException:__ Represents an exception for a shading type which is not supported. This exception has e ShadingType property which specifies the type of the shading.

* __NotSupportedStreamTypeException:__ Represents an exception for a stream type which is not supported. A stream is not supported if it does not support read or seek. This exception has a SupportSeek and SupportRead properties which specify whether the stream supports them.

* __NotSupportedPredefinedCMapException:__ Represents an exception for a predefined CMap which is not supported by RadPdfViewer. This exception has a CMapName which specifies the name of the predefined CMap.

* __NotSupportedScanDecoderException:__ This exception is thrown if the document contains a scan decoder which is not supported by RadPdfViewer.

* __NotSupportedXObjectTypeException:__ This exception is thrown if the document contains a XObject type which is not supported by RadPdfViewer.

# See Also

* [Unsupported Features]({%slug winforms/pdfviewer/unsupported-features%})
* [Getting Started]({%slug winforms/pdfviewer/getting-started%})
* [Logical Structure]({%slug winforms/pdfviewer/structure/logical-structure%})
* [Visual Structure]({%slug winforms/pdfviewer/structure/visual-structure%})
* [Properties, Methods and Events]({%slug winforms/pdfviewer/properties-methods-and-events%})

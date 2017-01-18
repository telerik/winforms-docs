---
title: Customize PDF Rendering
page_title: Customize PDF Rendering | RadPdfViewer
description: RadPdfViewer provides some customization options for the way PDF documents are rendered.
slug: winforms/pdfviewer/customize-and-extensibility/customize-pdf-rendering
tags: pdf decode
published: True
position: 0
---

# Customize PDF Rendering
__RadPdfViewer__ provides some customization options for the way PDF documents are rendered.

## Creating a Decoder

When rendering the text, __RadPdfViewer__ uses different decoders. It finds the decoder that it needs to use by its name. These are the decoders that can be plugged:

* __ASCIIHexDecode__

* __ASCII85Decode__

* __LZWDecode__

* __FlateDecode__

* __RunLengthDecode__

* __CCITTFaxDecode__

* __JBIG2Decode__

* __DCTDecode__

* __JPXDecode__

The following table indicates the status of the respective decoders in __RadPdfViewer__:

|Fully supported|Partially supported|Not supported|
|----|----|----|
|ASCII85Decode|CCITTFaxDecode| JPXDecode (A sample implemnetation of the decoder is available [here](http://www.telerik.com/support/kb/winforms/pdf-viewer/details/use-a-custom-jpxdecode-filter-with-radpdfviewer) )|
|LZWDecode|||
|FlateDecode|||
|DCTDecode|||
|ASCIIHexDecode|||
|RunLengthDecode|||
|JBIG2Decode|||

All decoders implement the __IPdfFilter__ interface and if you decide, you can implement your own decoder and set the viewer to use it. __RadPdfViewer__ uses the Name property in order to recognize the filter - it must return one of the values listed above.

For example, you can create a custom decoder for Tiff images by implementing the interface and setting the Name of the filter to __CCITTFaxDecode__. Then, just register the new class by calling FiltersManager.__RegisterFilter()__ method and the viewer will use your implementation instead of the default one.

Inheriting from __IPdfFilter__ will result in the following:

#### Creating Custom Filter

{{source=..\SamplesCS\PdfViewer\PdfDecoder.cs region=CustomFilter}} 
{{source=..\SamplesVB\PdfViewer\PdfDecoder.vb region=CustomFilter}} 

````C#
        
public class CustomFilter : Telerik.Windows.Pdf.Documents.Fixed.FormatProviders.Pdf.Filters.IPdfFilter
{
    public byte[] Encode(PdfObject encodedObject, byte[] inputData)
    {
        throw new NotImplementedException();
    }
    
    public byte[] Decode(PdfObject decodedObject, byte[] inputData, DecodeParameters decodeParameters)
    {
        throw new NotImplementedException();
    }
    
    public string Name
    {
        get
        {
            throw new NotImplementedException();
        }
    }
}

````
````VB.NET
Public Class CustomFilter
    Implements Telerik.Windows.Pdf.Documents.Fixed.FormatProviders.Pdf.Filters.IPdfFilter
    Public Function Encode(encodedObject As PdfObject, inputData As Byte()) As Byte() Implements IPdfFilter.Encode
        ' TODO: Implement this method
        Throw New NotImplementedException()
    End Function
    Public Function Decode(decodedObject As PdfObject, inputData As Byte(), _
                           decodeParameters As DecodeParameters) As Byte() Implements IPdfFilter.Decode
        ' TODO: Implement this method
        Throw New NotImplementedException()
    End Function
    Public ReadOnly Property Name() As String Implements IPdfFilter.Name
        Get
            ' TODO: Implement this property getter
            Throw New NotImplementedException()
        End Get
    End Property
End Class

````

{{endregion}}

You should also register the filter as follows:

#### Registering Filters

{{source=..\SamplesCS\PdfViewer\PdfDecoder.cs region=RegisterFilter}} 
{{source=..\SamplesVB\PdfViewer\PdfDecoder.vb region=RegisterFilter}} 

````C#
        
private CustomFilter _filter;
        
public PdfDecoder()
{
    InitializeComponent();
    
    _filter = new CustomFilter();
    Telerik.Windows.Pdf.Documents.Fixed.FormatProviders.Old.Pdf.Filters.FiltersManager.RegisterFilter(_filter);
}

````
````VB.NET
Private _filter As CustomFilter
Public Sub New()
    InitializeComponent()
    _filter = New CustomFilter()
    Telerik.Windows.Pdf.Documents.Fixed.FormatProviders.Old.Pdf.Filters.FiltersManager.RegisterFilter(_filter)
End Sub

````

{{endregion}}

The result that a custom filter should return depends on the type of the filter. For the binary filters it is enough to decode the byte array into decoded byte array using the respective algorithm. As for the filters listed below, additional transformation is required.

__RadPdfViewer__ expects these filters to return data that depends on the decoded object's colors space and bits per component (there are such properties in the decodedObject). The resulting byte array should contain exactly BitsPerComponent bits for each color component in the color space. For example, if you have RGB color space and 8 bits per component, the resulting byte array should contains a single byte value for each Red, Green and Blue value (for each pixel) in the decoded image.

* __CCITTFaxDecode__

* __JBIG2Decode__

* __JPXDecode__

* __DCTDecode__

    >note You can override the DctDecode class and its Decode() method. This will enable you to call the DecodeWithJpegDecode() method in order to achieve backward compatibility by using Telerik's JpegDecoder. In some cases, this approach decodes faster than the BitmapImage class, which is currently used to decode the images.

 __RadPdfViewer__ expects these filters to return data that depends on the decoded object's colors space and bits per component (there are such properties in the *decodedObject*). The resulting byte array should contain exactly __BitsPerComponent__ bits for each color component in the color space. For example, if you have RGB color space and 8 bits per component, the resulting byte array should contains a single byte value for each Red, Green and Blue value (for each pixel) in the decoded image.

# See Also

* [Getting Started]({%slug winforms/pdfviewer/getting-started%})
* [Logical Structure]({%slug winforms/pdfviewer/structure/logical-structure%})
* [Visual Structure]({%slug winforms/pdfviewer/structure/visual-structure%})
* [Properties, Methods and Events]({%slug winforms/pdfviewer/properties-methods-and-events%})
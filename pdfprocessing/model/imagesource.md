---
title: ImageSource
page_title: ImageSource | UI for WinForms Documentation
description: ImageSource
slug: winforms/pdfprocessing/model/imagesource
tags: imagesource
published: True
position: 5
previous_url: pdfprocessing-model-imagesource
---

# ImageSource

__ImageSource__ represents a single, constant set of pixels at a certain size. It can be used by multiple [Image]({%slug winforms/pdfprocessing/model/image%}) objects in order to be drawn in a PDF file.

## Creating ImageSource

The ImageSource class has five public contrustor overloads and can be created from a [Stream](http://msdn.microsoft.com/en-us/library/system.io.stream(v=vs.110).aspx), [BitmapSource](http://msdn.microsoft.com/en-us/library/system.windows.media.imaging.bitmapsource(v=vs.110).aspx) object or using the [__EncodedImageData__](http://docs.telerik.com/devtools/wpf/api/html/T_Telerik_Windows_Documents_Fixed_Model_Resources_EncodedImageData.htm) class:

* __public ImageSource(Stream stream)__: Creates an __ImageSource__ object from a stream that contains images.

* __public ImageSource(Stream stream, FormatProviders.Pdf.Export.ImageQuality imageQuality)__: Creates an __ImageSource__ object from a stream and allows you to specify the image quality through the [ImageQuality enumeration](http://docs.telerik.com/devtools/wpf/api/html/T_Telerik_Windows_Documents_Fixed_FormatProviders_Pdf_Export_ImageQuality.htm). More information about the ImageQuality and its behavior is available in [this article]({%slug radpdfprocessing-concepts-imagequality%}).

* __public ImageSource(BitmapSource bitmapSource)__: Creates a new __ImageSource__ object from a BitmapSource object.

* __public ImageSource(BitmapSource bitmapSource, FormatProviders.Pdf.Export.ImageQuality imageQuality)__: Creates an __ImageSource__ instance from a BitmapSource object and allows you to specify the image quality.

* __public ImageSource(EncodedImageData imageSourceInfo)__: Initializes a new instance of __ImageSource__ using the  [EncodedImageData class](http://docs.telerik.com/devtools/wpf/api/html/T_Telerik_Windows_Documents_Fixed_Model_Resources_EncodedImageData.htm).

__Example 1__ illustrates how you can create an ImageSource using a __FileStream__.

#### Example 1: Create ImageSource from Stream

{{source=..\SamplesCS\PdfProcessing\Model\PdfProcessingModelImageSource.cs region=radpdfprocessing-model-imagesource_0}} 
{{source=..\SamplesVB\PdfProcessing\Model\PdfProcessingModelImageSource.vb region=radpdfprocessing-model-imagesource_0}} 

````C#
            
using (FileStream source = File.Open(filename, FileMode.Open))
{
    ImageSource imageSource = new ImageSource(source);
}

````
````VB.NET
Using source As FileStream = File.Open(filename, FileMode.Open)
    Dim imageSource As New ImageSource(source)
End Using

````

{{endregion}}

With the __EncodedImageData__ class you can create an __ImageSource__ with encoded image data. This way the image quality will not be reduced on import.
   
#### Example 2: Create ImageSource from Encoded Image Data__

{{source=..\SamplesCS\PdfProcessing\Model\PdfProcessingModelImageSource.cs region=radpdfprocessing-model-imagesource_2}} 
{{source=..\SamplesVB\PdfProcessing\Model\PdfProcessingModelImageSource.vb region=radpdfprocessing-model-imagesource_2}} 

````C#
            
EncodedImageData imageData = new EncodedImageData(imageBytes, 8, 655, 983, ColorSpaceNames.DeviceRgb, new string[] { Telerik.Windows.Documents.Fixed.FormatProviders.Pdf.Filters.PdfFilterNames.DCTDecode });

````
````VB.NET
Dim imageData As New EncodedImageData(imageBytes, 8, 655, 983, ColorSpaceNames.DeviceRgb, New String() {Telerik.Windows.Documents.Fixed.FormatProviders.Pdf.Filters.PdfFilterNames.DCTDecode})

````

{{endregion}}

## Properties

The properties exposed by the **ImageSource** class are as follows:

* **Width**: Gets the width of the image.

* **Height**: Gets the height of the image.

* **DecodeArray**: Gets or sets the decode array, which specifies a linear mapping of each component value to a number that would be appropriate as a component value in the color space of the image. It could be used to manipulate the tones of the image, depending on its color space.

## Methods

The ImageSource class exposes two methods, which could help you to get the data from the ImageSource object.

* __BitmapSource GetBitmapSource()__: Gets the BitmapSource of the image.

* __EncodedImageData GetEncodedImageData()__: Returns the encoded image data. This method can be used if you need to directly export the images from the PDF document.

## Extensions

__RadPdfProcessing__ exposes an extension method allowing to convert every BitmapSource to an ImageSource that can be used for the creation of   [FixedContentEditor]({%slug winforms/pdfprocessing/editing/fixedcontenteditor%}) elements. __Example 2__ shows how you can use the ToImageSource() extension method over a previously created bitmap.

#### Example 2: Create ImageSource with Extension Method

{{source=..\SamplesCS\PdfProcessing\Model\PdfProcessingModelImageSource.cs region=radpdfprocessing-model-imagesource_1}} 
{{source=..\SamplesVB\PdfProcessing\Model\PdfProcessingModelImageSource.vb region=radpdfprocessing-model-imagesource_1}} 

````C#
            
BitmapImage bitmap = new BitmapImage();
bitmap.BeginInit();
bitmap.UriSource = new Uri(filename, UriKind.RelativeOrAbsolute);
bitmap.EndInit();
return bitmap.ToImageSource();

````
````VB.NET
Dim bitmap As New BitmapImage()
bitmap.BeginInit()
bitmap.UriSource = New Uri(filename, UriKind.RelativeOrAbsolute)
bitmap.EndInit()
Return bitmap.ToImageSource()

````

{{endregion}} 

# See Also

 * [Image]({%slug winforms/pdfprocessing/model/image%})

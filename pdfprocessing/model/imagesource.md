---
title: ImageSource
page_title: ImageSource | UI for WinForms Documentation
description: ImageSource
slug: winforms/pdfprocessing/model/imagesource
tags: imagesource
published: True
position: 5
---

# ImageSource

__ImageSource__ represents a single, constant set of pixels at a certain size. It can be used by multiple [Image]({%slug winforms/pdfprocessing/model/image%}) objects in order to be drawn in a PDF file.

## Creating ImageSource

The ImageSource class has two contrustor overloads and can be created from a [Stream](http://msdn.microsoft.com/en-us/library/system.io.stream(v=vs.110).aspx) that contains image or from a [BitmapSource](http://msdn.microsoft.com/en-us/library/system.windows.media.imaging.bitmapsource(v=vs.110).aspx) object.

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
        '
````

{{endregion}}

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
        '
````

{{endregion}} 

# See Also

 * [Image]({%slug winforms/pdfprocessing/model/image%})

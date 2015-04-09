---
title: ImageSource
page_title: ImageSource
description: ImageSource
slug: pdfprocessing-model-imagesource
tags: imagesource
published: True
position: 4
---

# ImageSource



__ImageSource__ represents a single, constant set of pixels at a certain size. It can be used by multiple [Image]({%slug pdfprocessing-model-image%}) objects in order to be drawn in a PDF file.
      

## Creating ImageSource

The ImageSource class has two contrustor overloads and can be created from a [Stream](http://msdn.microsoft.com/en-us/library/system.io.stream(v=vs.110).aspx) that contains image or from a [BitmapSource](http://msdn.microsoft.com/en-us/library/system.windows.media.imaging.bitmapsource(v=vs.110).aspx) object.
        

__Example 1__ illustrates how you can create an ImageSource using a __FileStream__.
        

#### __[C#] Example 1: Create ImageSource from Stream__

{{source=..\SamplesCS\PdfProcessing\Model\PdfProcessingModelImageSource.cs region=radpdfprocessing-model-imagesource_0}}
	            
	            using (FileStream source = File.Open(filename, FileMode.Open))
	            {
	                ImageSource imageSource = new ImageSource(source);
	            }
	        
	{{endregion}}



#### __[VB] Example 1: Create ImageSource from Stream__

{{source=..\SamplesVB\PdfProcessing\Model\PdfProcessingModelImageSource.vb region=radpdfprocessing-model-imagesource_0}}
	        Using source As FileStream = File.Open(filename, FileMode.Open)
	            Dim imageSource As New ImageSource(source)
	        End Using
	        '#End Region
	    End Sub
	
	    Private Function CreateFromBitmap(filename As String) As ImageSource
	        '#Region "radpdfprocessing-model-imagesource_1"
	        Dim bitmap As New BitmapImage()
	        bitmap.BeginInit()
	        bitmap.UriSource = New Uri(filename, UriKind.RelativeOrAbsolute)
	        bitmap.EndInit()
	
	        Return bitmap.ToImageSource()
	        '#End Region
	    End Function
	End Class



## Extensions

__RadPdfProcessing__ exposes an extension method allowing to convert every BitmapSource to an
          ImageSource that can be used for the creation of   [FixedContentEditor]({%slug pdfprocessing-editing-fixedcontenteditor%}) elements.
          __Example 2__ shows how you can use the ToImageSource() extension method over a previously created bitmap.
        

#### __[C#] Example 2: Create ImageSource with Extension Method__

{{source=..\SamplesCS\PdfProcessing\Model\PdfProcessingModelImageSource.cs region=radpdfprocessing-model-imagesource_1}}
	            BitmapImage bitmap = new BitmapImage();
	            bitmap.BeginInit();
	            bitmap.UriSource = new Uri(filename, UriKind.RelativeOrAbsolute);
	            bitmap.EndInit();
	        
	            return bitmap.ToImageSource();
	{{endregion}}



#### __[VB] Example 2: Create ImageSource with Extension Method__

{{source=..\SamplesVB\PdfProcessing\Model\PdfProcessingModelImageSource.vb region=radpdfprocessing-model-imagesource_1}}
	        Dim bitmap As New BitmapImage()
	        bitmap.BeginInit()
	        bitmap.UriSource = New Uri(filename, UriKind.RelativeOrAbsolute)
	        bitmap.EndInit()
	
	        Return bitmap.ToImageSource()
	        '#End Region
	    End Function
	End Class



# See Also

 * [Image]({%slug pdfprocessing-model-image%})

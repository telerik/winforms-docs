---
title: ImageInline
page_title: ImageInline
description: ImageInline
slug: wordsprocessing-model-imageinline
tags: imageinline
published: True
position: 7
---

# ImageInline



__ImageInline__ element is an inline-level flow content element intended to contain an image object.
      

* [Inserting an ImageInline](#inserting-an-imageinline)

* [Modifying an ImageInline](#modifying-an-imageinline)

## Inserting an ImageInline

You can use the following code snippet to create an ImageInline and add it to a [Paragraph]({%slug wordsprocessing-model-paragraph%}):
        

#### __[C#] __

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingImageInline.cs region=radwordsprocessing-model-imageinline_0}}
	            ImageInline imageInline = new ImageInline(document);
	            paragraph.Inlines.Add(imageInline);
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingImageInline.vb region=radwordsprocessing-model-imageinline_0}}
	            Dim imageInline As New ImageInline(document)
	            paragraph.Inlines.Add(imageInline)
	            '#End Region
	        End Sub
	
	        Private Sub AddInlineImageAtIndex(document As RadFlowDocument, paragraph As Paragraph)
	            '#Region "radwordsprocessing-model-imageinline_1"
	            Dim imageInline As New ImageInline(document)
	            paragraph.Inlines.Insert(0, imageInline)
	            '#End Region
	        End Sub
	
	        Private Sub CreateInlineImageAndAddToParagraph(paragraph As Paragraph)
	            '#Region "radwordsprocessing-model-imageinline_2"
	            Dim imageInline As ImageInline = paragraph.Inlines.AddImageInline()
	            '#End Region
	        End Sub
	
	        Private Sub InsertImageWithRadFlowDocument(document As RadFlowDocument)
	            '#Region "radwordsprocessing-model-imageinline_3"
	            Dim editor As New RadFlowDocumentEditor(document)
	
	            Using stream As Stream = Me.GetResourceStream("Telerik_logo.png")
	                editor.InsertImageInline(stream, "png", New Size(118, 28))
	            End Using
	            '#End Region
	        End Sub
	
	        Private Function GetResourceStream(p As String) As Stream
	            Throw New NotImplementedException()
	        End Function
	    End Class



>tipThe parent __Paragraph__ should belong to the same document that is passed to the constructor of the __ImageInline__.
          

You can add an image at a specific index in the __Inlines__ collection of a paragraph using the __Insert()__
          method. Here is how to add an ImageInline at the beginning of a paragraph:
        

#### __[C#] __

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingImageInline.cs region=radwordsprocessing-model-imageinline_1}}
	            ImageInline imageInline = new ImageInline(document);
	            paragraph.Inlines.Insert(0, imageInline);
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingImageInline.vb region=radwordsprocessing-model-imageinline_1}}
	            Dim imageInline As New ImageInline(document)
	            paragraph.Inlines.Insert(0, imageInline)
	            '#End Region
	        End Sub
	
	        Private Sub CreateInlineImageAndAddToParagraph(paragraph As Paragraph)
	            '#Region "radwordsprocessing-model-imageinline_2"
	            Dim imageInline As ImageInline = paragraph.Inlines.AddImageInline()
	            '#End Region
	        End Sub
	
	        Private Sub InsertImageWithRadFlowDocument(document As RadFlowDocument)
	            '#Region "radwordsprocessing-model-imageinline_3"
	            Dim editor As New RadFlowDocumentEditor(document)
	
	            Using stream As Stream = Me.GetResourceStream("Telerik_logo.png")
	                editor.InsertImageInline(stream, "png", New Size(118, 28))
	            End Using
	            '#End Region
	        End Sub
	
	        Private Function GetResourceStream(p As String) As Stream
	            Throw New NotImplementedException()
	        End Function
	    End Class



You can also use the __AddImageInline()__ method of the __Inlines__ collection of a paragraph. The
          method creates a new ImageInline, adds it to the paragraph and returns it.
        

#### __[C#] __

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingImageInline.cs region=radwordsprocessing-model-imageinline_2}}
	            ImageInline imageInline = paragraph.Inlines.AddImageInline();
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingImageInline.vb region=radwordsprocessing-model-imageinline_2}}
	            Dim imageInline As ImageInline = paragraph.Inlines.AddImageInline()
	            '#End Region
	        End Sub
	
	        Private Sub InsertImageWithRadFlowDocument(document As RadFlowDocument)
	            '#Region "radwordsprocessing-model-imageinline_3"
	            Dim editor As New RadFlowDocumentEditor(document)
	
	            Using stream As Stream = Me.GetResourceStream("Telerik_logo.png")
	                editor.InsertImageInline(stream, "png", New Size(118, 28))
	            End Using
	            '#End Region
	        End Sub
	
	        Private Function GetResourceStream(p As String) As Stream
	            Throw New NotImplementedException()
	        End Function
	    End Class



Inserting __ImageInline__ element in RadFlowDocument can also be achieved with
          [RadFlowDocumentEditor]({%slug wordsprocessing-editing-radflowdocumenteditor%}).
        

#### __[C#] __

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingImageInline.cs region=radwordsprocessing-model-imageinline_3}}
	            RadFlowDocumentEditor editor = new RadFlowDocumentEditor(document);
	
	            using (Stream stream = this.GetResourceStream("Telerik_logo.png"))
	            {
	                editor.InsertImageInline(stream, "png", new Size(118, 28));
	            }
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingImageInline.vb region=radwordsprocessing-model-imageinline_3}}
	            Dim editor As New RadFlowDocumentEditor(document)
	
	            Using stream As Stream = Me.GetResourceStream("Telerik_logo.png")
	                editor.InsertImageInline(stream, "png", New Size(118, 28))
	            End Using
	            '#End Region
	        End Sub
	
	        Private Function GetResourceStream(p As String) As Stream
	            Throw New NotImplementedException()
	        End Function
	    End Class



## Modifying an ImageInline

The __ImageInline__ element exposes the following properties:
        

* __Image__: Represents the image object that is contained in the ImageInline. It is a read-only composite object that
              contains the properties listed below:
            

* __ImageSource__: Specifies the image source that is visualized in the image object.
                

* __Name__: Represents the name of the image.
                

* __Width__: The width of the image.
                

* __Height__: The height of the image.
                

* __IsHorizontallyFlipped__: Specifies whether the image is horizontally flipped.
                

* __IsVerticallyFlipped__: Specifies whether the image is vertically flipped.
                

* __RotationAngle__: Specifies the rotation angle of the image.
                

# See Also[ImageInline API Reference](http://www.telerik.com/help/winforms/allmembers_t_telerik_windows_documents_flow_model_shapes_imageinline.html)

 * [Document model]({%slug wordsprocessing-model%})

 * [FloatingImage]({%slug wordsprocessing-model-floatingimage%})

 * [Paragraph]({%slug wordsprocessing-model-paragraph%})

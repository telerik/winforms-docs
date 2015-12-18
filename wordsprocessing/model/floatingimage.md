---
title: FloatingImage
page_title: FloatingImage | UI for WinForms Documentation
description: FloatingImage
slug: winforms/wordsprocessing/model/floatingimage
tags: floatingimage
published: True
position: 8
---

# FloatingImage

__FloatingImage__ is an inline-level anchor flow document element linked with a floating image object.

* [Inserting a FloatingImage](#inserting-a-floatingimage)

* [Modify an FloatingImage](#modify-an-floatingimage)

* [Working with Image Size](#working-with-image-size)

## Inserting a FloatingImage

The following code snippet creates a FloatingImage and adds it to a [Paragraph]({%slug winforms/wordsprocessing/model/paragraph%}).


{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingFloatingImage.cs region=radwordsprocessing-model-floatingimage_0}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingFloatingImage.vb region=radwordsprocessing-model-floatingimage_0}} 

````C#
FloatingImage floatingImage = new FloatingImage(document);
paragraph.Inlines.Add(floatingImage);

````
````VB.NET
Dim floatingImage As New FloatingImage(document)
paragraph.Inlines.Add(floatingImage)

````

{{endregion}} 

>tip The parent __Paragraph__ should belong to the same document that is passed to the constructor of the __FloatingImage__ .
>

You can add an image at a specific index in the __Inlines__ collection of a paragraph using the __Insert()__ method. Here is how to add a FloatingImage at the beginning of a paragraph:

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingFloatingImage.cs region=radwordsprocessing-model-floatingimage_1}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingFloatingImage.vb region=radwordsprocessing-model-floatingimage_1}} 

````C#
FloatingImage floatingImage = new FloatingImage(document);
paragraph.Inlines.Insert(0, floatingImage);

````
````VB.NET
Dim floatingImage As New FloatingImage(document)
paragraph.Inlines.Insert(0, floatingImage)

````

{{endregion}} 

You can also use the __AddFloatingImage()__ method of the __Inlines__ collection of a paragraph. The method creates a new __FloatingImage__, adds it to the paragraph and returns it.

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingFloatingImage.cs region=radwordsprocessing-model-floatingimage_2}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingFloatingImage.vb region=radwordsprocessing-model-floatingimage_2}} 

````C#
FloatingImage floatingImage = paragraph.Inlines.AddFloatingImage();

````
````VB.NET
Dim floatingImage As FloatingImage = paragraph.Inlines.AddFloatingImage()

````

{{endregion}} 

Inserting __FloatingImage__ element in RadFlowDocument can also be achieved with [RadFlowDocumentEditor]({%slug winforms/wordsprocessing/editing/radflowdocumenteditor%}).


{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingFloatingImage.cs region=radwordsprocessing-model-floatingimage_3}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingFloatingImage.vb region=radwordsprocessing-model-floatingimage_3}} 

````C#
RadFlowDocumentEditor editor = new RadFlowDocumentEditor(document);
using (Stream stream = this.GetResourceStream("Telerik_logo.png"))
{
    editor.InsertFloatingImage(stream, "png", new Size(118, 28));
}

````
````VB.NET
Dim editor As New RadFlowDocumentEditor(document)
Using stream As Stream = Me.GetResourceStream("Telerik_logo.png")
    editor.InsertFloatingImage(stream, "png", New Size(118, 28))
End Using

````

{{endregion}} 

## Modify an FloatingImage

The __FloatingImage__ element exposes the following properties:
        

* __Image__: Represents the image object that is contained in the FloatingImage. It is a read-only composite object that contains the properties listed below:

  * __ImageSource__: Specifies the image source that is visualized in the image object.
  
  * __Name__: Represents the name of the image.
  
  * __Width__: The width of the image.
  
  * __Height__: The height of the image.
  
  * __IsHorizontallyFlipped__: Specifies whether the image is horizontally flipped.
  
  * __IsVerticallyFlipped__: Specifies whether the image is vertically flipped.
  
  * __RotationAngle__: Specifies the rotation angle of the image.
  
  * __LockAspectRatio__: Determines whether the aspect ratio between the width and the height of the image will be preserved.

* __AllowOverlap__: Specifies whether the image is allowed to overlap the contents of the other image objects. The default value is true.

* __IsLocked__: Specifies if the anchor can be modified at runtime.

* __ShapeWrapping__: Specifies the image wrapping. It is composite objects and contains the properties listed below:

  * __WrappingType__: The wrapping type. The default value is Square.
  
  * __TextWrap__: The text wrap. The default value is BothSides.

* __LayoutInCell__: Indicates if the layout of the image should be calculated relative to the cell that is holding the shape.

* __IsBehindDocument__: Indicates if the shape should be displayed behind the document content.

* __ZIndex__: Specifies the ZIndex of the floating image.

* __Margin__: Represents the margins for the floating image.

* __HorizontalPosition__: Specifies the horizontal position of the floating image. It is composite object that contains the properties listed below:

  * __ValueType__: Specifies whether the positioning should be based on the Offset or the Alignment value. The default value is Offset.         
  
  * __RelativeFrom__: Specifies the relative horizontal positioning base. The default value is Column.
  
  * __Alignment__: Specifies the alignment to be used if the position type is Alignment.
  
  * __Offset__: Specifies the offset to be used if the position type is Offset.

* __VerticalPosition__: Specifies the vertical position of the floating image. It is composite object that contains the properties listed below:

  * __ValueType__: Specifies whether the positioning should be based on the Offset or the Alignment value. The default value is Offset.
  
  * __RelativeFrom__: Specifies the relative horizontal positioning base. The default value is Column.
  
  * __Alignment__: Specifies the alignment to be used if the position type is Alignment.
  
  * __Offset__: Specifies the offset to be used if the position type is Offset.

## Working with Image Size

This section explains the behavior of the __Size__ property of The __Image__ object in an __ImageInline__ and how the image sizes are exported to the supported formats.

 * __Insert image without specifying its size__
  * Model: Size will be Size.Empty.
  * Export to DOCX: Size will be decoded
  * Export to RTF: Size will be decoded
  * Export HTML: Width and height attributes will not be exported


* __Insert image and set its size to Size.Empty__
  * Model: Size will be Size.Empty
  * Export to DOCX: Size will be (1,1)
  * Export to RTF: Size will be (1,1)
  * Export to HTML: Width and height attributes will not be exported

* __Inserting image without specifying its size and obtain its size later (through the property getter)__
  * Model: Size will be decoded

# See Also

 * [FloatingImage API Reference](http://www.telerik.com/help/winforms/allmembers_t_telerik_windows_documents_flow_model_shapes_floatingimage.html)

 * [Document model]({%slug winforms/wordsprocessing/model%})

 * [ImageInline]({%slug winforms/wordsprocessing/model/imageinline%})

 * [Paragraph]({%slug winforms/wordsprocessing/model/paragraph%})

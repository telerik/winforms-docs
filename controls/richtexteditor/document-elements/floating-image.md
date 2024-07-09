---
title: Floating Images
page_title: Floating Images - WinForms RichTextEditor Control
description: Winforms RadRichTextEditor supports Floating Images that allows images to be displayed floating in the document.
slug: richtexteditor-document-elements-floating-image
tags: inline,image, floatingimage, floatingblock, floatingimageblock,
published: True
position: 5

---

# Floating Images

The floating images in __RadRichTextEditor__ are represented as inline images wrapped in floating block containers. This functionality allows images to be displayed inside the document and positioned on its own line or wrapped up by the content around. 

This topic will explain you how to use the **FloatingImageBlock** element.

## Supported Image Extensions

With **RadRichTextEditor**, you can work with images from the following file formats:

 - JPG
 - JPEG
 - PNG
 - BMP
 - TIFF
 - TIF
 - GIF
 - ICO
 - ICON
 - WMF 
 - EMF
 
## FloatingImageBlock Class Overview

The **FloatingImageBlock** class is used to insert floating images in a document. This class wraps an inline image in a floating block allowing the customer to position the image on the exact position they would like to. **FloatingImageBlock** derives from **FloatingBlock** whose base class is **AnnotationMarkerBase**. With that said, the floating blocks are implemented using annotations.

FloatingImageBlock exposes members enabling you to control the image inside the container and its positioning:

- **ImageInline**: Represents the image inside the floating block. For more information about this object, refer to the [ImageInline]({%slug winforms/richtexteditor-/document-elements/inline-image%}) topic.

- **AffectsLayout**: Gets a value indicating whether the block affects the layout of the document. The layout is not affected in the cases when the **WrappingStyle** property of the block is set to WrappingStyle.**BehindText** or WrappingStyle.**InFrontOfText**.

- **AllowOverlap**: Indicates whether the block can overlap with other blocks.

- **TextWrap**: Determines how the text should be positioned around the floating block.

- **WrappingStyle**: Defines how the other elements can be wrapped around the floating block.

- **HorizontalPosition**: Determines the horizontal position of the block. The position is described using the following properties:
    
    - **RelativeFrom**: Determines the horizontal object or edge the position should be relative from using the values of the __HorizontalRelativeFrom__ enumeration.
    - **ValueType**: Determines whether the position should be moved with a specific offset or aligned to other elements.
	- **Alignment**: Gets or sets the alignment.
	- **Offset**: Gets or sets the offset.
    
- **VerticalPosition**: Determines the vertical position of the block. The position is described using the following properties:

    - **RelativeFrom**: Determines the vertical object or edge the position should be relative from using the values of the __VerticalRelativeFrom__ enumeration.
    - **ValueType**: Determines whether the position should be moved with a specific offset or aligned to other elements.
    - **Alignment**: Gets or sets the alignment.
	- **Offset**: Gets or sets the offset.


## Add in Code Behind

Here is an example of how to add an __FloatingImageBlock__ element in the code behind.

````C#
            
public FloatingImageBlock CreateFloatingImageBlock()
{
    Size size = new Size(236, 236);
    ImageInline image = new ImageInline();
    FloatingImageBlock floatingBlock = new FloatingImageBlock();
    floatingBlock.HorizontalPosition = new FloatingBlockHorizontalPosition(HorizontalRelativeFrom.Paragraph, 120);
    using (MemoryStream ms = new MemoryStream())
    {
        Properties.Resources._0.Save(ms, ImageFormat.Png);
        image = new ImageInline(ms, size, "png");
        floatingBlock.ImageInline = image;
    }

    return floatingBlock;
}

````

````VB.NET
Public Shared Function CreateFloatingImageBlock() As FloatingImageBlock
    Dim size As Size = New Size(236, 236)
    Dim image As ImageInline = New ImageInline()
    Dim floatingBlock As FloatingImageBlock = New FloatingImageBlock()
    floatingBlock.HorizontalPosition = New FloatingBlockHorizontalPosition(HorizontalRelativeFrom.Paragraph, 120)

    Using ms As MemoryStream = New MemoryStream()
        Properties.Resources._0.Save(ms, ImageFormat.Png)
        image = New ImageInline(ms, size, "png")
        floatingBlock.ImageInline = image
    End Using

    Return floatingBlock
End Function

````


Once you have defined the image, you will need to insert it in the document. Two approaches are available: using directly the model, appropriate when you are just constructing the document, or through the methods of RadDocumentEditor, when the document is already visualized in RadRichTextEditor.

````C#

Section section = new Section();
Paragraph paragraph = new Paragraph();
paragraph.Inlines.Add(CreateFloatingImageBlock());
section.Children.Add(paragraph);

RadDocument document = new RadDocument();
document.Sections.Add(section);
radRichTextEditor1.Document = document;           


````

````VB.NET

Dim section As Section = New Section()
Dim paragraph As Paragraph = New Paragraph()
paragraph.Inlines.Add(CreateFloatingImageBlock())
section.Children.Add(paragraph)
Dim document As RadDocument = New RadDocument()
document.Sections.Add(section)
radRichTextEditor1.Document = document

````

In case an existing document should be edited, you can add a floating image to it using the **InsertInline()** method exposed by the **RadRichTextEditor** and **RadDocumentEditor** classes.

````C#

FloatingImageBlock floatingBlock = this.CreateFloatingImageBlock();
this.radRichTextEditor1.InsertInline(floatingBlock);

````
````VB.NET

Dim floatingBlock as FloatingImageBlock = Me.CreateFloatingImageBlock()
Me.radRichTextEditor1.InsertInline(floatingBlock)

````


## See Also

 * [Document Elements]({%slug winforms/richtexteditor-/document-elements%})
 * [Section]({%slug winforms/richtexteditor-/document-elements/section%})
 * [Paragraph]({%slug winforms/richtexteditor-/document-elements/paragraph%})
 * [Span]({%slug winforms/richtexteditor-/document-elements/span%})
 * [Editing Images]({%slug winforms/richtexteditor-/ui-for-applying-rich-text-formatting/editing-images%})
 * [Hyperlink]({%slug winforms/richtexteditor-/features/hyperlink%})

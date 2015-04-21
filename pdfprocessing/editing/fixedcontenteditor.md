---
title: FixedContentEditor
page_title: FixedContentEditor
description: FixedContentEditor
slug: pdfprocessing-editing-fixedcontenteditor
tags: fixedcontenteditor
published: True
position: 0
---

# FixedContentEditor



__FixedContentEditor__ is utility class that is intended to simplify the process of creating and editing the content of an __IContentRootElement__ such as [RadFixedPage]({%slug pdfprocessing-model-radfixedpage%}).
      

The current article will get you familiar with the following topics:
      

* [Creating FixedContentEditor](#creating-fixedcontenteditor)

* [Inserting Elements](#inserting-elements)

* [Positioning](#positioning)

* [Changing Current Styles](#changing-current-styles)

## Creating FixedContentEditor

__FixedContentEditor__ is always associated to a single __IContentRootElement__ which it takes as a constructor parameter when it is created. __Example 1__ shows how you can create an editor.
        

#### __[C#] Example 1: Create FixedContentEditor__

{{source=..\SamplesCS\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.cs region=radpdfprocessing-editing-fixedcontenteditor_0}}
	            
	            FixedContentEditor editor = new FixedContentEditor(contentRootElement);
	        
	{{endregion}}



#### __[VB.NET] Example 1: Create FixedContentEditor__

{{source=..\SamplesVB\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.vb region=radpdfprocessing-editing-fixedcontenteditor_0}}
	        Dim editor As FixedContentEditor = New FixedContentEditor(contentRootElement)
	{{endregion}}



The editor maintains an internal [Position]({%slug pdfprocessing-concepts-position%}) inside the content root element. When a new element is created, its position is being set to the current position of the editor. The initial position of the editor can be specified when it is created.
        

__Example 2__ demonstrates how you can create а FixedContentEditor with specific initial position.
        

#### __[C#] Example 2: Create FixedContentEditor with Specific IPosition__

{{source=..\SamplesCS\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.cs region=radpdfprocessing-editing-fixedcontenteditor_1}}
	        
	            FixedContentEditor editor = new FixedContentEditor(contentRootElement, initialPosition);
	        
	{{endregion}}



#### __[VB.NET] Example 2: Create FixedContentEditor with Specific IPosition__

{{source=..\SamplesVB\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.vb region=radpdfprocessing-editing-fixedcontenteditor_1}}
	        Dim editor As FixedContentEditor = New FixedContentEditor(contentRootElement, initialPosition)
	{{endregion}}



## Inserting Elements

Composing a [RadFixedDocument]({%slug pdfprocessing-model-radfixeddocument%}) normally requires to create all elements and specify exactly how they should look. The __FixedContentEditor__ takes care of most things for you. This section explains how you can add different type of elements.
        

### Inserting Text

Inserting а [TextFragment]({%slug pdfprocessing-model-textfragment%}) can be done with the __public void DrawText(string text)__ method. __Example 3__ inserts a fragment with content "First text fragment.".
            

#### __[C#] Example 3: Insert TextFragment__

{{source=..\SamplesCS\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.cs region=radpdfprocessing-editing-fixedcontenteditor_2}}
	            
	            editor.DrawText("First text fragment.");
	            
	{{endregion}}



#### __[VB.NET] Example 3: Insert TextFragment__

{{source=..\SamplesVB\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.vb region=radpdfprocessing-editing-fixedcontenteditor_2}}
	        editor.DrawText("First text fragment.")
	{{endregion}}



__Figure 1__ shows the result of __Example 3__.
            

Figure 1: TextFragment Result![pdf Processing-editing-Fixed Content Editor 001](images/pdfProcessing-editing-FixedContentEditor001.png)

### Inserting Paragraph

__Example 4__ shows how you can use the __Block__ object to draw a paragraph.
            

#### __[C#] Example 4: Insert Paragraph__

{{source=..\SamplesCS\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.cs region=radpdfprocessing-editing-fixedcontenteditor_3}}
	            
	            Block block = new Block();
	            block.InsertText("First sentence.");
	            block.InsertText("Second sentence.");
	            editor.DrawBlock(block);
	            
	{{endregion}}



#### __[VB.NET] Example 4: Insert Paragraph__

{{source=..\SamplesVB\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.vb region=radpdfprocessing-editing-fixedcontenteditor_3}}
	        Dim block As New Block()
	        block.InsertText("First sentence.")
	        block.InsertText("Second sentence.")
	        editor.DrawBlock(block)
	{{endregion}}



__Figure 2__ shows the result of __Example 4__.
            

Figure 2: Paragraph![pdf Processing-editing-Fixed Content Editor 002](images/pdfProcessing-editing-FixedContentEditor002.png)

>tipBuilding a paragraph with the FixedContentEditor is much simpler than creating TextFragments yourself. The [Block]({%slug radpdfprocessing-editing-block%}) object would flow the content of a paragraph for you if this is necessary.
              

### Inserting Image

__FixedContentEditor__ provides several overloads for inserting an [Image]({%slug pdfprocessing-model-image%}).
            

__public void DrawImage(Stream stream);__

__public void DrawImage(Stream stream, double width, double height);__

__public void DrawImage(Stream stream, Size size);__

__public void DrawImage(ImageSource source);__

__public void DrawImage(ImageSource source, Size size);__

__public void DrawImage(ImageSource source, double width, double height);__

__Example 5__ shows how you can add an image created from a Stream.
            

#### __[C#] Example 5: Insert Image__

{{source=..\SamplesCS\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.cs region=radpdfprocessing-editing-fixedcontenteditor_4}}
	
	            using (Stream stream = this.GetResourceStream("Telerik_logo.jpg"))
	            {
	                editor.DrawImage(stream, new Size(118, 28));
	            }
	            
	{{endregion}}



#### __[VB.NET] Example 5: Insert Image__

{{source=..\SamplesVB\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.vb region=radpdfprocessing-editing-fixedcontenteditor_4}}
	        Using stream As Stream = Me.GetResourceStream("Telerik_logo.jpg")
	            editor.DrawImage(stream, New Size(118, 28))
	        End Using
	{{endregion}}



Figure 3: Image Result![pdf Processing-editing-Fixed Content Editor 004](images/pdfProcessing-editing-FixedContentEditor004.png)

### Inserting Geometries

The following methods can be used to insert different [Geometries]({%slug pdfprocessing-concepts-geometry%}) in the document:
            

__public void DrawLine(Point point1, Point point2)__: Inserts a line between the specified points.
            

__public void DrawRectangle(Rect rectangle)__: Inserts a rectangle.
            

__public void DrawEllipse(Point center, double radiusX, double radiusY)__: Inserts an ellipse.
            

__public void DrawCircle(Point center, double radius)__: Inserts a circle.
            

__public void DrawPath(PathGeometry pathGeometry)__: Inserts a custom path geometry.
            

__Example 6__ shows how you can add an ellipse using one of FixedContentEditor's methods.
            

#### __[C#] Example 6: Insert Ellipse__

{{source=..\SamplesCS\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.cs region=radpdfprocessing-editing-fixedcontenteditor_5}}
	            
	            editor.DrawEllipse(new Point(250, 70), 136, 48);
	            
	{{endregion}}



#### __[VB.NET] Example 6: Insert Ellipse__

{{source=..\SamplesVB\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.vb region=radpdfprocessing-editing-fixedcontenteditor_5}}
	        editor.DrawEllipse(New Point(250, 70), 136, 48)
	{{endregion}}



### Inserting Clipping

__FixedContentEditor__ exposes a __Clipping__ property which defines the [Clipping]({%slug pdfprocessing-concepts-clipping%}) to be used for the inserted content elements. The following methods can be used to push and pop clippings:
            

__public IDisposable PushClipping(GeometryBase clip)__: Inserts a new clipping defined from the specified geometry.
            

__public IDisposable PushClipping(Rect clip)__: Inserts a new clipping defined from the specified rectangle.
            

__public Clipping PopClipping()__: Pops the last clipping, which was inserted with the editor.
            

When the returned __IDisposable__ object from the __PushClipping()__ method is disposed, the clipping is popped from the clippings in the editor.
            

When a new clipping is pushed, it is set as a clipping to the current clipping in the editor. __Example 7__ shows how a clipping can be pushed:
            

#### __[C#] Example 7: Push Clipping__

{{source=..\SamplesCS\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.cs region=radpdfprocessing-editing-fixedcontenteditor_6}}
	            
	            string visibleText = "The last word in this text is";
	            string text = string.Format("{0} clipped.", visibleText); //The last word in this text is clipped.
	            Block block = new Block();
	            block.InsertText(visibleText);
	            Size visisibleTextSize = block.Measure();
	            
	            using (editor.PushClipping(new Rect(new Point(0, 0), visisibleTextSize)))
	            {
	                editor.DrawText(text);
	            }
	            
	{{endregion}}



#### __[VB.NET] Example 7: Push Clipping__

{{source=..\SamplesVB\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.vb region=radpdfprocessing-editing-fixedcontenteditor_6}}
	        Dim visibleText As String = "The last word in this text is"
	        Dim text As String = String.Format("{0} clipped.", visibleText)
	        'The last word in this text is clipped.
	        Dim block As New Block()
	        block.InsertText(visibleText)
	        Dim visisibleTextSize As Size = block.Measure()
	
	        Using editor.PushClipping(New Rect(New Point(0, 0), visisibleTextSize))
	            editor.DrawText(text)
	        End Using
	{{endregion}}



__Figure 4__ shows the result of __Example 7__.
            

Figure 4: Clipping Result![pdf Processing-editing-Fixed Content Editor 003](images/pdfProcessing-editing-FixedContentEditor003.png)

## Positioning

The [Position]({%slug pdfprocessing-concepts-position%})  property exposed by __FixedContentEditor__ allows an easy way to manipulate the position of inserted content elements.
        

The code in __Example 8__ shows how to manipulate the position of the inserted content elements and __Figure 5__ shows the result of the code.
        

#### __[C#] Example 8: Scale and Rotate Content__

{{source=..\SamplesCS\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.cs region=radpdfprocessing-editing-fixedcontenteditor_7}}
	        
	            editor.Position.Scale(1.5, 0.5);
	            editor.Position.Rotate(10);
	            editor.DrawText("Image:");
	            editor.Position.Translate(0, 20);
	            using (Stream stream = this.GetResourceStream("Telerik_logo.jpg"))
	            {
	                editor.DrawImage(stream, new Size(118, 28));
	            }
	            
	{{endregion}}



#### __[VB.NET] Example 8: Scale and Rotate Content__

{{source=..\SamplesVB\PdfProcessing\Editing\PdfProcessingEditingFixedContentEditor.vb region=radpdfprocessing-editing-fixedcontenteditor_7}}
	        editor.Position.Scale(1.5, 0.5)
	        editor.Position.Rotate(10)
	        editor.DrawText("Image:")
	        editor.Position.Translate(0, 20)
	        Using stream As Stream = Me.GetResourceStream("Telerik_logo.jpg")
	            editor.DrawImage(stream, New Size(118, 28))
	        End Using
	{{endregion}}



Figure 5: Positioning Result![pdf Processing-editing-Fixed Content Editor 005](images/pdfProcessing-editing-FixedContentEditor005.png)

## Changing Current Styles

__FixedContentEditor__ has some properties and methods that affect how it will be rendered:
        

* __TextProperties and GraphicProperties__: Responsible for the properties of text and graphics. For more information see the text and graphic properties article.
              

* __SaveTextProperties()__: Saves the TextProperties. It returns an IDisposable object which calls RestoreTextProperties() when disposed and can be used in using statement.
            

* __RestoreTextProperties()__: Restores the TextProperties.
            

* __SaveGraphicProperties()__: Saves the GraphicProperties. It returns an IDisposable object which calls RestoreGraphicProperties() when disposed and can be used in using statement.
            

* __RestoreGraphicProperties()__: Restores the GrahpicProperties.
            

* __SaveProperties()__: Saves both the text and the graphic properties. It returns an IDisposable object which calls RestoreProperties() when disposed and can be used in using statement.
            

* __RestoreProperties()__: Restores both text and graphic properties.
            

# See Also

 * [RadFixedPage]({%slug pdfprocessing-model-radfixedpage%})

 * [Position]({%slug pdfprocessing-concepts-position%})

 * [TextFragment]({%slug pdfprocessing-model-textfragment%})

 * [Image]({%slug pdfprocessing-model-image%})

 * [Geometry]({%slug pdfprocessing-concepts-geometry%})

 * [Clipping]({%slug pdfprocessing-concepts-clipping%})

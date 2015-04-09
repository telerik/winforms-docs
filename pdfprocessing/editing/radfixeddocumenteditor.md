---
title: RadFixedDocumentEditor
page_title: RadFixedDocumentEditor
description: RadFixedDocumentEditor
slug: pdfprocessing-editing-radfixeddocumenteditor
tags: radfixeddocumenteditor
published: True
position: 3
---

# RadFixedDocumentEditor



__RadFixedDocumentEditor__ is a utility class aiming to allow the creation of [RadFixedDocument]({%slug pdfprocessing-model-radfixeddocument%}) in a flow-like manner. The editor provides methods that enable the generation of documents which automatically flows to pages.
      

* [Creating RadFixedDocumentEditor](#creating-radfixeddocumenteditor)

* [Sections](#sections)

* [Starting New Section](#starting-new-section)

* [Paragraphs](#paragraphs)

* [Inlines](#inlines)

* [Tables](#tables)

* [Lists](#
--------lists
------)

## Creating RadFixedDocumentEditor

__Example 1__ demonstrates how a RadFixedDocumentEditor instance can be created.
        

#### __[C#] Create RadFixedDocumentEditor__

{{source=..\SamplesCS\PdfProcessing\Editing\RadFixedDocumentEditor1.cs region=radpdfprocessing-editing-radfixeddocumenteditor_0}}
	            RadFixedDocumentEditor editor = new RadFixedDocumentEditor(radFixedDocument);
	{{endregion}}



#### __[VB.NET] Create RadFixedDocumentEditor__

{{source=..\SamplesVB\PdfProcessing\Editing\RadFixedDocumentEditor1.vb region=radpdfprocessing-editing-radfixeddocumenteditor_0}}
	        Dim editor As New RadFixedDocumentEditor(radFixedDocument)
	        '#End Region
	
	        '#Region "radpdfprocessing-editing-radfixeddocumenteditor_1"
	        editor.InsertSectionBreak()
	        '#End Region
	    End Sub
	
	    Private Sub InsertParagraphAndInlines(editor As RadFixedDocumentEditor, fontFamily As System.Windows.Media.FontFamily)
	        '#Region "radpdfprocessing-editing-radfixeddocumenteditor_2"
	        editor.InsertParagraph()
	        '#End Region
	
	        '#Region "radpdfprocessing-editing-radfixeddocumenteditor_3"
	        editor.InsertRun("text")
	        editor.InsertRun(fontFamily, "text")
	        '#End Region
	
	        '#Region "radpdfprocessing-editing-radfixeddocumenteditor_4"
	        editor.InsertLine("Line of text")
	        '#End Region
	    End Sub
	
	    Private Sub InsertTable(editor As RadFixedDocumentEditor, table As Table)
	        '#Region "radpdfprocessing-editing-radfixeddocumenteditor_5"
	        editor.InsertTable(table)
	        '#End Region
	    End Sub
	    Private Sub InsertBlock(ByVal editor As RadFixedDocumentEditor, ByVal blockElement As Block)
	        '#Region "block"
	        editor.InsertBlock(blockElement)
	        '#End Region
	    End Sub
	    Private Sub InsertPageBreak(ByVal editor As RadFixedDocumentEditor)
	        '#Region "PageBreak"
	        editor.InsertPageBreak()
	        '#End Region
	    End Sub
	    Private Sub Image(ByVal editor As RadFixedDocumentEditor, ByVal imageSource As Telerik.Windows.Documents.Fixed.Model.Resources.ImageSource, ByVal size As System.Windows.Size)
	        '#Region "Image"
	        editor.InsertImageInline(imageSource)
	        editor.InsertImageInline(imageSource, size)
	        '#End Region 
	    End Sub
	    Public Sub List(ByVal editor As RadFixedDocumentEditor)
	        '#Region "Lists"
	
	        Dim myList As Telerik.Windows.Documents.Fixed.Model.Editing.Lists.List = editor.Lists.AddList(ListTemplateType.NumberedDefault)
	        editor.ParagraphProperties.ListId = myList.Id
	        editor.ParagraphProperties.ListLevel = 0
	        editor.InsertParagraph()
	        '#End Region
	    End Sub
	End Class



>__RadFixedDocumentEditor__ inherits from __IDisposable__ so it should be properly disposed when the document is created. Otherwise, some of the content may not be finished, i.e. it might not appear on the PDF document.
          

## Sections

__Section__ is a sequence of [RadFixedPages]({%slug pdfprocessing-model-radfixedpage%}) with the same properties.
        

### SectionProperties

The section properties are responsible for the page size, margins and orientation of __RadFixedPages__ in a section. Below is the complete list of section properties.
            

* __PageSize__: The size of the pages that are part of the section.
                

* __PageMargins__: The page margins of a page.
                

* __PageRotation__: The page rotation. This is enum that can take one of the following values.
                

* __Rotate0__: The page is not rotated. This is the default value.
                    

* __Rotate90__: The page is rotated to 90°.
                    

* __Rotate180__: The page is rotated to 180°.
                    

* __Rotate270__: The page is rotated to 270°.
                    

### Starting New Section

The first section in a document starts as soon as a content is inserted to the editor. You can change the Section properties before inserting any content and they will be applied to the section that is automatically created.
            

Adding an additional section is achieved with the __InsertSectionBreak()__ method as demonstrated in __Example 2__.
            

#### __[C#] Example 2: Start a Section__

{{source=..\SamplesCS\PdfProcessing\Editing\RadFixedDocumentEditor1.cs region=radpdfprocessing-editing-radfixeddocumenteditor_1}}
	            editor.InsertSectionBreak();
	{{endregion}}



#### __[VB.NET] Example 2: Start a Section__

{{source=..\SamplesVB\PdfProcessing\Editing\RadFixedDocumentEditor1.vb region=radpdfprocessing-editing-radfixeddocumenteditor_1}}
	        editor.InsertSectionBreak()
	        '#End Region
	    End Sub
	
	    Private Sub InsertParagraphAndInlines(editor As RadFixedDocumentEditor, fontFamily As System.Windows.Media.FontFamily)
	        '#Region "radpdfprocessing-editing-radfixeddocumenteditor_2"
	        editor.InsertParagraph()
	        '#End Region
	
	        '#Region "radpdfprocessing-editing-radfixeddocumenteditor_3"
	        editor.InsertRun("text")
	        editor.InsertRun(fontFamily, "text")
	        '#End Region
	
	        '#Region "radpdfprocessing-editing-radfixeddocumenteditor_4"
	        editor.InsertLine("Line of text")
	        '#End Region
	    End Sub
	
	    Private Sub InsertTable(editor As RadFixedDocumentEditor, table As Table)
	        '#Region "radpdfprocessing-editing-radfixeddocumenteditor_5"
	        editor.InsertTable(table)
	        '#End Region
	    End Sub
	    Private Sub InsertBlock(ByVal editor As RadFixedDocumentEditor, ByVal blockElement As Block)
	        '#Region "block"
	        editor.InsertBlock(blockElement)
	        '#End Region
	    End Sub
	    Private Sub InsertPageBreak(ByVal editor As RadFixedDocumentEditor)
	        '#Region "PageBreak"
	        editor.InsertPageBreak()
	        '#End Region
	    End Sub
	    Private Sub Image(ByVal editor As RadFixedDocumentEditor, ByVal imageSource As Telerik.Windows.Documents.Fixed.Model.Resources.ImageSource, ByVal size As System.Windows.Size)
	        '#Region "Image"
	        editor.InsertImageInline(imageSource)
	        editor.InsertImageInline(imageSource, size)
	        '#End Region 
	    End Sub
	    Public Sub List(ByVal editor As RadFixedDocumentEditor)
	        '#Region "Lists"
	
	        Dim myList As Telerik.Windows.Documents.Fixed.Model.Editing.Lists.List = editor.Lists.AddList(ListTemplateType.NumberedDefault)
	        editor.ParagraphProperties.ListId = myList.Id
	        editor.ParagraphProperties.ListLevel = 0
	        editor.InsertParagraph()
	        '#End Region
	    End Sub
	End Class



If you want to change the properties of the next section, make sure to do it __before__ you insert the section break. New properties are only used for newly created sections.
            

All pages that have the same __SectionProperties__ are part of the current section. To start a new page you can use the following code:
            

#### __[C#] Example 3: Start new Page__

{{source=..\SamplesCS\PdfProcessing\Editing\RadFixedDocumentEditor1.cs region=PageBreak}}
	            editor.InsertPageBreak();
	{{endregion}}



#### __[VB.NET] Example 3: Start new Page__

{{source=..\SamplesVB\PdfProcessing\Editing\RadFixedDocumentEditor1.vb region=PageBreak}}
	        editor.InsertPageBreak()
	        '#End Region
	    End Sub
	    Private Sub Image(ByVal editor As RadFixedDocumentEditor, ByVal imageSource As Telerik.Windows.Documents.Fixed.Model.Resources.ImageSource, ByVal size As System.Windows.Size)
	        '#Region "Image"
	        editor.InsertImageInline(imageSource)
	        editor.InsertImageInline(imageSource, size)
	        '#End Region 
	    End Sub
	    Public Sub List(ByVal editor As RadFixedDocumentEditor)
	        '#Region "Lists"
	
	        Dim myList As Telerik.Windows.Documents.Fixed.Model.Editing.Lists.List = editor.Lists.AddList(ListTemplateType.NumberedDefault)
	        editor.ParagraphProperties.ListId = myList.Id
	        editor.ParagraphProperties.ListLevel = 0
	        editor.InsertParagraph()
	        '#End Region
	    End Sub
	End Class



## Paragraphs

__Paragraphs__ are blocks of flowing inlines - images and text.
        

### ParagraphProperties

Similar to the section properties, paragraph has its own properties that are responsible for the way it looks.
            

* __SpacingBefore__: Represent the spacing before.
                

* __SpacingAfter__: Represents the spacing after.
                

* __LineSpacing__: The spacing between the lines.
                

* __LineSpacingType__: Specifies how to interpret the line spacing.
                

* __FirstLineIndent__: The indent for the first line.
                

* __LeftIndent__: The left indent.
                

* __RightIndent__: The right indent.
                

* __BackgroundColor__: The background color.
                

* __HorizontalAlignment__: The horizontal alignment of the content.
                

* __ListId__: The id of the list the paragraph belongs to. If null, then the paragraph belongs to no list.
                

* __ListLevel__: The list level the paragraph belongs to.
                

### Starting New Paragraph

The first paragraph is created as soon as content is inserted in the editor. You can change paragraph properties before inserting content and when the first paragraph is created automatically, it will use the desired properties.
            

In order to start a new paragraph use the code in __Example 4__.
            

#### __[C#] Start a Paragraph__

{{source=..\SamplesCS\PdfProcessing\Editing\RadFixedDocumentEditor1.cs region=radpdfprocessing-editing-radfixeddocumenteditor_2}}
	            editor.InsertParagraph();
	{{endregion}}



#### __[VB.NET] Start a Paragraph__

{{source=..\SamplesVB\PdfProcessing\Editing\RadFixedDocumentEditor1.vb region=radpdfprocessing-editing-radfixeddocumenteditor_2}}
	        editor.InsertParagraph()
	        '#End Region
	
	        '#Region "radpdfprocessing-editing-radfixeddocumenteditor_3"
	        editor.InsertRun("text")
	        editor.InsertRun(fontFamily, "text")
	        '#End Region
	
	        '#Region "radpdfprocessing-editing-radfixeddocumenteditor_4"
	        editor.InsertLine("Line of text")
	        '#End Region
	    End Sub
	
	    Private Sub InsertTable(editor As RadFixedDocumentEditor, table As Table)
	        '#Region "radpdfprocessing-editing-radfixeddocumenteditor_5"
	        editor.InsertTable(table)
	        '#End Region
	    End Sub
	    Private Sub InsertBlock(ByVal editor As RadFixedDocumentEditor, ByVal blockElement As Block)
	        '#Region "block"
	        editor.InsertBlock(blockElement)
	        '#End Region
	    End Sub
	    Private Sub InsertPageBreak(ByVal editor As RadFixedDocumentEditor)
	        '#Region "PageBreak"
	        editor.InsertPageBreak()
	        '#End Region
	    End Sub
	    Private Sub Image(ByVal editor As RadFixedDocumentEditor, ByVal imageSource As Telerik.Windows.Documents.Fixed.Model.Resources.ImageSource, ByVal size As System.Windows.Size)
	        '#Region "Image"
	        editor.InsertImageInline(imageSource)
	        editor.InsertImageInline(imageSource, size)
	        '#End Region 
	    End Sub
	    Public Sub List(ByVal editor As RadFixedDocumentEditor)
	        '#Region "Lists"
	
	        Dim myList As Telerik.Windows.Documents.Fixed.Model.Editing.Lists.List = editor.Lists.AddList(ListTemplateType.NumberedDefault)
	        editor.ParagraphProperties.ListId = myList.Id
	        editor.ParagraphProperties.ListLevel = 0
	        editor.InsertParagraph()
	        '#End Region
	    End Sub
	End Class



The result of this method is that new paragraph is started and it uses the current paragraph properties. Until a new paragraph is started, changes in the paragraph properties are not applied.
            

### Inlines

A Paragraph is built of two types of inlines - runs and images.
            

### Runs

__Run__ represents a collection of characters that have the same properties.
                

__CharacterProperties__

The character properties that are responsible for the look of the runs are listed below.
                

* __FontSize__: The font size.
                    

* __Font__: The font.
                    

* __ForegroundColor__: The foreground color.
                    

* __HighlightColor__: The highlight color.
                    

* __BaselineAlignment__: Describes how the baseline for a text-based element is positioned on the vertical axis, relative to the established baseline for text.
                    

* __Baseline__: A baseline that is aligned at the actual baseline of the containing box.
                        

* __Subscript__: A baseline that is aligned at the subscript position of the containing box.
                        

* __Superscript__: A baseline that is aligned at the superscript position of the containing box.
                        

* __UnderlinePattern__: Тhe underline pattern. Two patterns are supported.
                    

* __None__: There is no underline. This is the default value.
                        

* __Single__: The underline is a single line.
                        

* __UnderlineColor__: The color of the underline.
                    

__Inserting a Run__

There are a number of overloads that insert a run. The code snippet in __Example 5__ inserts a a couple of new runs with specific font family, style and weight.
                

#### __[C#] Insert Run__

{{source=..\SamplesCS\PdfProcessing\Editing\RadFixedDocumentEditor1.cs region=radpdfprocessing-editing-radfixeddocumenteditor_3}}
	            editor.InsertRun("text");
	            editor.InsertRun(fontFamily, "text");
	{{endregion}}



#### __[VB.NET] Insert Run__

{{source=..\SamplesVB\PdfProcessing\Editing\RadFixedDocumentEditor1.vb region=radpdfprocessing-editing-radfixeddocumenteditor_3}}
	        editor.InsertRun("text")
	        editor.InsertRun(fontFamily, "text")
	        '#End Region
	
	        '#Region "radpdfprocessing-editing-radfixeddocumenteditor_4"
	        editor.InsertLine("Line of text")
	        '#End Region
	    End Sub
	
	    Private Sub InsertTable(editor As RadFixedDocumentEditor, table As Table)
	        '#Region "radpdfprocessing-editing-radfixeddocumenteditor_5"
	        editor.InsertTable(table)
	        '#End Region
	    End Sub
	    Private Sub InsertBlock(ByVal editor As RadFixedDocumentEditor, ByVal blockElement As Block)
	        '#Region "block"
	        editor.InsertBlock(blockElement)
	        '#End Region
	    End Sub
	    Private Sub InsertPageBreak(ByVal editor As RadFixedDocumentEditor)
	        '#Region "PageBreak"
	        editor.InsertPageBreak()
	        '#End Region
	    End Sub
	    Private Sub Image(ByVal editor As RadFixedDocumentEditor, ByVal imageSource As Telerik.Windows.Documents.Fixed.Model.Resources.ImageSource, ByVal size As System.Windows.Size)
	        '#Region "Image"
	        editor.InsertImageInline(imageSource)
	        editor.InsertImageInline(imageSource, size)
	        '#End Region 
	    End Sub
	    Public Sub List(ByVal editor As RadFixedDocumentEditor)
	        '#Region "Lists"
	
	        Dim myList As Telerik.Windows.Documents.Fixed.Model.Editing.Lists.List = editor.Lists.AddList(ListTemplateType.NumberedDefault)
	        editor.ParagraphProperties.ListId = myList.Id
	        editor.ParagraphProperties.ListLevel = 0
	        editor.InsertParagraph()
	        '#End Region
	    End Sub
	End Class



There are a number of overloads that insert a run. The code snippet in __Example 5__ inserts a a couple of new runs, one of which with a specific font family.
                

The code in __Example 6__ inserts a new run and a line break after it.
                

#### __[C#] Insert Run and Break Line__

{{source=..\SamplesCS\PdfProcessing\Editing\RadFixedDocumentEditor1.cs region=radpdfprocessing-editing-radfixeddocumenteditor_4}}
	            editor.InsertLine("Line of text");
	{{endregion}}



#### __[VB.NET] Insert Run and Break Line__

{{source=..\SamplesVB\PdfProcessing\Editing\RadFixedDocumentEditor1.vb region=radpdfprocessing-editing-radfixeddocumenteditor_4}}
	        editor.InsertLine("Line of text")
	        '#End Region
	    End Sub
	
	    Private Sub InsertTable(editor As RadFixedDocumentEditor, table As Table)
	        '#Region "radpdfprocessing-editing-radfixeddocumenteditor_5"
	        editor.InsertTable(table)
	        '#End Region
	    End Sub
	    Private Sub InsertBlock(ByVal editor As RadFixedDocumentEditor, ByVal blockElement As Block)
	        '#Region "block"
	        editor.InsertBlock(blockElement)
	        '#End Region
	    End Sub
	    Private Sub InsertPageBreak(ByVal editor As RadFixedDocumentEditor)
	        '#Region "PageBreak"
	        editor.InsertPageBreak()
	        '#End Region
	    End Sub
	    Private Sub Image(ByVal editor As RadFixedDocumentEditor, ByVal imageSource As Telerik.Windows.Documents.Fixed.Model.Resources.ImageSource, ByVal size As System.Windows.Size)
	        '#Region "Image"
	        editor.InsertImageInline(imageSource)
	        editor.InsertImageInline(imageSource, size)
	        '#End Region 
	    End Sub
	    Public Sub List(ByVal editor As RadFixedDocumentEditor)
	        '#Region "Lists"
	
	        Dim myList As Telerik.Windows.Documents.Fixed.Model.Editing.Lists.List = editor.Lists.AddList(ListTemplateType.NumberedDefault)
	        editor.ParagraphProperties.ListId = myList.Id
	        editor.ParagraphProperties.ListLevel = 0
	        editor.InsertParagraph()
	        '#End Region
	    End Sub
	End Class



### Images

Image inline is a combination of an [ImageSource]({%slug pdfprocessing-model-imagesource%}) object and its desired size.
                

__Inserting an Image__

You can insert image inline using one of the following methods:
                

#### __[C#] Example 7: Insert ImageInline__

{{source=..\SamplesCS\PdfProcessing\Editing\RadFixedDocumentEditor1.cs region=Image}}
	            editor.InsertImageInline(imageSource);
	            editor.InsertImageInline(imageSource, size);
	{{endregion}}



#### __[VB.NET] Example 7: Insert ImageInline__

{{source=..\SamplesVB\PdfProcessing\Editing\RadFixedDocumentEditor1.vb region=Image}}
	        editor.InsertImageInline(imageSource)
	        editor.InsertImageInline(imageSource, size)
	        '#End Region 
	    End Sub
	    Public Sub List(ByVal editor As RadFixedDocumentEditor)
	        '#Region "Lists"
	
	        Dim myList As Telerik.Windows.Documents.Fixed.Model.Editing.Lists.List = editor.Lists.AddList(ListTemplateType.NumberedDefault)
	        editor.ParagraphProperties.ListId = myList.Id
	        editor.ParagraphProperties.ListLevel = 0
	        editor.InsertParagraph()
	        '#End Region
	    End Sub
	End Class



## Tables

The __Table__ class implements the __IBlockElement__ interface and an instance of this class can be 
          easily inserted as a new block in the document. You could insert the table using the __InsertTable()__ method like illustrated in 
          __Example 8__. __RadFixedDocumentEditor__ takes care for positioning, measuring and splitting the table onto pages.
        

#### __[C#] Insert Table__

{{source=..\SamplesCS\PdfProcessing\Editing\RadFixedDocumentEditor1.cs region=radpdfprocessing-editing-radfixeddocumenteditor_5}}
	            editor.InsertTable(table);
	{{endregion}}



#### __[VB.NET] Insert Table__

{{source=..\SamplesVB\PdfProcessing\Editing\RadFixedDocumentEditor1.vb region=radpdfprocessing-editing-radfixeddocumenteditor_5}}
	        editor.InsertTable(table)
	        '#End Region
	    End Sub
	    Private Sub InsertBlock(ByVal editor As RadFixedDocumentEditor, ByVal blockElement As Block)
	        '#Region "block"
	        editor.InsertBlock(blockElement)
	        '#End Region
	    End Sub
	    Private Sub InsertPageBreak(ByVal editor As RadFixedDocumentEditor)
	        '#Region "PageBreak"
	        editor.InsertPageBreak()
	        '#End Region
	    End Sub
	    Private Sub Image(ByVal editor As RadFixedDocumentEditor, ByVal imageSource As Telerik.Windows.Documents.Fixed.Model.Resources.ImageSource, ByVal size As System.Windows.Size)
	        '#Region "Image"
	        editor.InsertImageInline(imageSource)
	        editor.InsertImageInline(imageSource, size)
	        '#End Region 
	    End Sub
	    Public Sub List(ByVal editor As RadFixedDocumentEditor)
	        '#Region "Lists"
	
	        Dim myList As Telerik.Windows.Documents.Fixed.Model.Editing.Lists.List = editor.Lists.AddList(ListTemplateType.NumberedDefault)
	        editor.ParagraphProperties.ListId = myList.Id
	        editor.ParagraphProperties.ListLevel = 0
	        editor.InsertParagraph()
	        '#End Region
	    End Sub
	End Class



For more detailed information on tables follow this link to [Table]({%slug pdfprocessing-editing-table%}) documentation article.
        

## Block Elements

The __IBlockElement__ interface allows you to easily draw and split some block content onto pages.
          The interface is implemented by [Block]({%slug radpdfprocessing-editing-block%}) and 
          [Table]({%slug pdfprocessing-editing-table%}) classes.
        You can easily add some block element instance with RadFixedDocumentEditor using InsertBlock() method like illustrated the following example.
      

#### __[C#] Insert Block Element__

{{source=..\SamplesCS\PdfProcessing\Editing\RadFixedDocumentEditor1.cs region=block}}
	            editor.InsertBlock(blockElement);
	{{endregion}}



#### __[VB.NET] Insert Block Element__

{{source=..\SamplesVB\PdfProcessing\Editing\RadFixedDocumentEditor1.vb region=block}}
	        editor.InsertBlock(blockElement)
	        '#End Region
	    End Sub
	    Private Sub InsertPageBreak(ByVal editor As RadFixedDocumentEditor)
	        '#Region "PageBreak"
	        editor.InsertPageBreak()
	        '#End Region
	    End Sub
	    Private Sub Image(ByVal editor As RadFixedDocumentEditor, ByVal imageSource As Telerik.Windows.Documents.Fixed.Model.Resources.ImageSource, ByVal size As System.Windows.Size)
	        '#Region "Image"
	        editor.InsertImageInline(imageSource)
	        editor.InsertImageInline(imageSource, size)
	        '#End Region 
	    End Sub
	    Public Sub List(ByVal editor As RadFixedDocumentEditor)
	        '#Region "Lists"
	
	        Dim myList As Telerik.Windows.Documents.Fixed.Model.Editing.Lists.List = editor.Lists.AddList(ListTemplateType.NumberedDefault)
	        editor.ParagraphProperties.ListId = myList.Id
	        editor.ParagraphProperties.ListLevel = 0
	        editor.InsertParagraph()
	        '#End Region
	    End Sub
	End Class



## 
        Lists
      

You can easily insert list items with __RadFixedDocumentEditor__. The first thing you have to do is add a __List__ in 
        editor’s __ListCollection__ by using the __Lists__ property. Then each time you want to add list item you have to set the
        appropriate __ListId__ and __ListLevel__ property values through __RadFixedDocumentEditor__’s 
        __ParagraphProperties__. Inserting a new paragraph will result in adding a new list item.
The following code snippet shows how to add new list to __RadFixedDocumentEditor’s ListCollection__ and after that insert a paragraph 
with the corresponding list properties:
      

#### __[C#] Insert Block Element__

{{source=..\SamplesCS\PdfProcessing\Editing\RadFixedDocumentEditor1.cs region=Lists}}
	            Telerik.Windows.Documents.Fixed.Model.Editing.Lists.List list = editor.Lists.AddList(ListTemplateType.NumberedDefault);
	            editor.ParagraphProperties.ListId = list.Id;
	            editor.ParagraphProperties.ListLevel = 0;
	            editor.InsertParagraph();
	{{endregion}}



#### __[VB.NET] Insert Block Element__

{{source=..\SamplesVB\PdfProcessing\Editing\RadFixedDocumentEditor1.vb region=Lists}}
	
	        Dim myList As Telerik.Windows.Documents.Fixed.Model.Editing.Lists.List = editor.Lists.AddList(ListTemplateType.NumberedDefault)
	        editor.ParagraphProperties.ListId = myList.Id
	        editor.ParagraphProperties.ListLevel = 0
	        editor.InsertParagraph()
	        '#End Region
	    End Sub
	End Class



For more information about lists you can follow this link to [List documetation article ]({%slug radpdfprocessing-editing-list%}) .

# See Also

 * [RadFixedDocument]({%slug pdfprocessing-model-radfixeddocument%})

 * [RadFixedPage]({%slug pdfprocessing-model-radfixedpage%})

 * [ImageSource]({%slug pdfprocessing-model-imagesource%})

 * [Table]({%slug pdfprocessing-editing-table%})

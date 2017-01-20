---
title: Section
page_title: Section | RadRichTextEditor
description: RadRichTextEditor is a control that allows you to display and edit rich text content including sections, paragraphs, spans, italic text, bold text, inline images, tables etc.
slug: winforms/richtexteditor-/document-elements/section
tags: section
published: True
position: 1
previous_url: richtexteditor-document-elements-section
---

# Section 

The __Section__ class allows you to separate the content into sections. __Sections__ are chunks of the document that can be displayed on one or several pages.      

A __Section__ can contain only __Paragraph__ and __Table__ elements. You are also able to customize the section layout by setting its properties.
      
This topic will explain you how to:

* [Create and Add a Section to RadDocument](#create-and-add-a-section-to-raddocument)

* [Customize a Section](#customize-a-section)

* [Add Paragraphs to a Section](#adding-paragraphs-to-a-section)

## Create and add a Section to RadDocument

As explained in the previous section, the state of the document is essential for the methods that can be used on it.

For example, you can build a **RadDocument** from scratch and add **Sections** to it in the following way:

{{source=..\SamplesCS\RichTextEditor\DocumentElements\SectionCode.cs region=init}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\SectionCode.vb region=init}} 

````C#
            
Telerik.WinForms.Documents.Model.Section section = new Telerik.WinForms.Documents.Model.Section();
this.radRichTextEditor1.Document.Sections.Add(section);

````
````VB.NET
Dim section As New Telerik.WinForms.Documents.Model.Section()
Me.radRichTextEditor1.Document.Sections.Add(section)

````

{{endregion}} 

Splitting an already measured document into two sections at the current caret position, on the other hand, can be done by inserting  a section break:

{{source=..\SamplesCS\RichTextEditor\DocumentElements\SectionCode.cs region=break}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\SectionCode.vb region=break}} 

````C#
            
this.radRichTextEditor1.InsertSectionBreak(SectionBreakType.NextPage);

````
````VB.NET
Me.radRichTextEditor1.InsertSectionBreak(SectionBreakType.NextPage)

````

{{endregion}} 

The method accept a parameter of type **SectionBreakType**. The possible values are:

* SectionBreakType.*NextPage* - the default value. The next section will start on the next page.

* SectionBreakType.*OddPage* - the next section will start on the next odd page.

* SectionBreakType.*EvenPage* - analogically, the next section will start on the next even page.

>note The distribution of the document content in sections is only visible when the document is in *Paged* layout mode. Furthermore, the sections and section breaks can be persisted in XAML, docx and RTF. If you export the document to HTML or plain text, the section breaks will be lost.
>

## Customize a Section

The __Section__ exposes several properties that allow you to customize the layout of the elements placed underneath it. These properties can be set directly to the section when the document is created programmatically. If the changes should be applied to the document after it has been loaded in the editor, the respective methods and commands should be used.
        
Here is a list of these properties:

* __PageMargin__ - represents the margin towards the edges of the page when in *Paged* mode.

{{source=..\SamplesCS\RichTextEditor\DocumentElements\SectionCode.cs region=margin}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\SectionCode.vb region=margin}} 

````C#
            
section.PageMargin = new Telerik.WinForms.Documents.Layout.Padding(40, 40, 30, 30);
            
//When the section has already been added to the document
this.radRichTextEditor1.ChangeSectionPageMargin(new Telerik.WinForms.Documents.Layout.Padding(40, 40, 30, 30));

````
````VB.NET
section.PageMargin = New Telerik.WinForms.Documents.Layout.Padding(40, 40, 30, 30)
'When the section has already been added to the document
Me.radRichTextEditor1.ChangeSectionPageMargin(New Telerik.WinForms.Documents.Layout.Padding(40, 40, 30, 30))

````

{{endregion}} 


* __PageOrientation__ - specifies if the pages in the section should be in *Portrait* or *Landscape* mode.

{{source=..\SamplesCS\RichTextEditor\DocumentElements\SectionCode.cs region=orientation}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\SectionCode.vb region=orientation}} 

````C#
            
//When creating a Section programmatically
section.PageOrientation = PageOrientation.Landscape;
            
//When the section has already been added to the document
this.radRichTextEditor1.ChangeSectionPageOrientation(PageOrientation.Landscape);

````
````VB.NET
'When creating a Section programmatically
section.PageOrientation = PageOrientation.Landscape
'When the section has already been added to the document
Me.radRichTextEditor1.ChangeSectionPageOrientation(PageOrientation.Landscape)

````

{{endregion}} 

* __PageSize__ - specifies the size of the pages in the section. The **PapertTypeConverter** class and the enum **PaperTypes** provide a convenient API and predefined sizes out of the box.

{{source=..\SamplesCS\RichTextEditor\DocumentElements\SectionCode.cs region=page}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\SectionCode.vb region=page}} 

````C#
            
//When creating a Section programmatically
section.PageSize = PaperTypeConverter.ToSize(PaperTypes.A4);
            
//When the section has already been added to the document
this.radRichTextEditor1.ChangeSectionPageSize(PaperTypeConverter.ToSize(PaperTypes.A4));

````
````VB.NET
'When creating a Section programmatically
section.PageSize = PaperTypeConverter.ToSize(PaperTypes.A4)
'When the section has already been added to the document
Me.radRichTextEditor1.ChangeSectionPageSize(PaperTypeConverter.ToSize(PaperTypes.A4))

````

{{endregion}} 

* Add headers and footers to a **Section**. Each section has the following types of **Headers** and **Footers** - *Default* (used all through the section), *First* (used on the first page of the section) and *Even* (to be used on every even page; if set, overrides the default header/footer on all even pages of the section). Here is how you can create a **Header**:

{{source=..\SamplesCS\RichTextEditor\DocumentElements\SectionCode.cs region=body}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\SectionCode.vb region=body}} 

````C#
Telerik.WinForms.Documents.Model.Header header = new Telerik.WinForms.Documents.Model.Header() { Body = radDocument, IsLinkedToPrevious = false };

````
````VB.NET
Dim header As New Telerik.WinForms.Documents.Model.Header() With {.Body = radDocument, .IsLinkedToPrevious = False}

````

{{endregion}} 

All header/footer types are set identically.

* In a non-measured document:

{{source=..\SamplesCS\RichTextEditor\DocumentElements\SectionCode.cs region=header1}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\SectionCode.vb region=header1}} 

````C#
section.Headers.First = header;

````
````VB.NET
section.Headers.First = header

````

{{endregion}} 


* In a measured document:

{{source=..\SamplesCS\RichTextEditor\DocumentElements\SectionCode.cs region=header2}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\SectionCode.vb region=header2}} 

````C#
this.radRichTextEditor1.UpdateHeader(this.radRichTextEditor1.Document.Sections.First, Telerik.WinForms.Documents.Model.HeaderFooterType.First, header);

````
````VB.NET
Me.radRichTextEditor1.UpdateHeader(Me.radRichTextEditor1.Document.Sections.First, Telerik.WinForms.Documents.Model.HeaderFooterType.First, header)

````

{{endregion}} 

Setting the **Footers** can be done in the same way.

## Adding Paragraphs to a Section

Paragraphs can be added to a section in the following ways:

In a non-measured document:

{{source=..\SamplesCS\RichTextEditor\DocumentElements\SectionCode.cs region=add1}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\SectionCode.vb region=add1}} 

````C#
            
Section section1 = new Section();
Paragraph paragraph = new Paragraph();
section1.Blocks.Add(paragraph);

````
````VB.NET
Dim section1 As New Section()
Dim paragraph As New Paragraph()
section1.Blocks.Add(paragraph)

````

{{endregion}} 

In a measured document:

{{source=..\SamplesCS\RichTextEditor\DocumentElements\SectionCode.cs region=add2}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\SectionCode.vb region=add2}} 

````C#
this.radRichTextEditor1.Insert(FormattingSymbolLayoutBox.ENTER);

````
````VB.NET
Me.radRichTextEditor1.Insert(FormattingSymbolLayoutBox.ENTER)

````

{{endregion}}

# See Also

 * [Document Elements]({%slug winforms/richtexteditor-/document-elements%})

 * [Section]({%slug winforms/richtexteditor-/document-elements/section%})

 * [Paragraph]({%slug winforms/richtexteditor-/document-elements/paragraph%})

 * [Span]({%slug winforms/richtexteditor-/document-elements/span%})

 * [Inline Image]({%slug winforms/richtexteditor-/document-elements/inline-image%})

 * [Hyperlink]({%slug winforms/richtexteditor-/features/hyperlink%})

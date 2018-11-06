---
title: RadDocument
page_title: RadDocument | RadRichTextEditor
description: RadRichTextEditor is a control that allows you to display and edit rich text content including sections, paragraphs, spans, italic text, bold text, inline images, tables etc.
slug: winforms/richtexteditor-/document-elements/raddocument
tags: raddocument
published: True
position: 1
previous_url: richtexteditor-document-elements-raddocument
---

# RadDocument
 
__RadDocument__ is the root element for __RadRichTextEditor's__ content. It holds the collection of __Sections__  defined for the __RadRichTextEditor__ content. It also allows you to configure the appearance of its child elements.      

This topic will explain how you can customize the contents of the **RadDocument**.

* [Customizing a RadDocument](#customize-the-contents-of-raddocument)

* [Specifics](#specifics)

* [Adding Sections to a RadDocument](#adding-sections-to-raddocument)

## Customize the contents of RadDocument

__RadDocument__ exposes several properties that allow you to customize the layout of the elements placed underneath it. Here is a list of them:
        
* __LayoutMode__ - specifies whether the page should be in *Paged*, *Flow* or *FlowNoWrap* layout mode. To learn more about layout modes read [here]({%slug winforms/richtexteditor-/getting-started/layout-modes%}).

* __DefaultPageLayoutSettings__ - this property is of type __PageLayoutSettings__. The __PageLayoutSettings__ class exposes the following properties:
            
	* __Height__ - represents the height of the page.            

	* __Width__ - represents the width of the page.              

>note The __DefaultPageLayoutSettings__ get applied only when Paged layout mode is used.
>


* __SectionDefaultPageMargin__ - defines the default margin for each of the sections in the **RadDocument**. To assign different margins for each of the sections use the respective property of the __Section__ class.
            
* __ParagraphDefaultSpacingAfter__ - defines the default spacing after for each of the paragraphs in the   __RadDocument__. To assign different spacing after for each of the paragraphs use the respective property of the  __Paragraph__ class.            

* __ParagraphDefaultSpacingBefore__ - defines the default spacing before for each of the paragraphs in the  __RadDocument__. To assign different spacing before for each of the paragraphs use the respective property of the  __Paragraph__ class.            

* __LineSpacing__ - specifies the value for the space between the lines.            

* __LineSpacingType - specifies the type of spacing:__

	* __AtLeast -__ the space between the lines should be equal or greater than the value of the __LineSpacing__ property.
                
	* __Auto -__ the space between the lines is determined automatically.
                
	* __Exact -__ the space between the lines should be equal to the value of the __LineSpacing__ property.

* __ShowFormattingSymbols__ - indicates whether the formatting symbols should be displayed or not.            

## Specifics

The first time a __RadDocument__ is shown inside a __RadRichTextEditor__ in the Visual Tree, it is  measured by the framework and arranges its children. This is the moment when the layout cycle is completed, each of the document elements calculates its size and arranges its children.
        
As the two states of the document - measured and not measured are too different, distinct methods for manipulating the content of the document should be used before the document is measured and after the first time that it is shown in the editor.        

## Adding Sections to RadDocument

As explained in the previous section, the state of the document is essential for the methods that can be used on it.

For example, you can build a **RadDocument** from scratch and add **Sections** to it in the following way:

{{source=..\SamplesCS\RichTextEditor\DocumentElements\RadDocumentCode.cs region=section}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\RadDocumentCode.vb region=section}} 

````C#
            
Section section = new Section();
this.radRichTextEditor1.Document.Sections.Add(section);

````
````VB.NET
Dim section As New Section()
Me.radRichTextEditor1.Document.Sections.Add(section)

````

{{endregion}} 

Splitting an already measured document into two sections at the current caret position, on the other hand, can be done by inserting a section break:

{{source=..\SamplesCS\RichTextEditor\DocumentElements\RadDocumentCode.cs region=break}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\RadDocumentCode.vb region=break}} 

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

# See Also

 * [Document Elements]({%slug winforms/richtexteditor-/document-elements%})

 * [Section]({%slug winforms/richtexteditor-/document-elements/section%})

 * [Paragraph]({%slug winforms/richtexteditor-/document-elements/paragraph%})

 * [Span]({%slug winforms/richtexteditor-/document-elements/span%})

 * [Inline Image]({%slug winforms/richtexteditor-/document-elements/inline-image%})

 * [Hyperlink]({%slug winforms/richtexteditor-/features/hyperlink%})

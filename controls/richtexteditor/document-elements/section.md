---
title: Section
page_title: Section - WinForms RichTextEditor Control
description: Section class in WinForms RichTextEditor allows you to separate the content into sections. Sections are chunks of the document that can be displayed on one or several pages.
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

<snippet id='richtexteditor-sectioncode-init-cs' />
<snippet id='richtexteditor-sectioncode-init-vb' />



Splitting an already measured document into two sections at the current caret position, on the other hand, can be done by inserting  a section break:

<snippet id='richtexteditor-sectioncode-break-cs' />
<snippet id='richtexteditor-sectioncode-break-vb' />



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

<snippet id='richtexteditor-sectioncode-margin-cs' />
<snippet id='richtexteditor-sectioncode-margin-vb' />



* __PageOrientation__ - specifies if the pages in the section should be in *Portrait* or *Landscape* mode.

<snippet id='richtexteditor-sectioncode-orientation-cs' />
<snippet id='richtexteditor-sectioncode-orientation-vb' />



* __PageSize__ - specifies the size of the pages in the section. The **PapertTypeConverter** class and the enum **PaperTypes** provide a convenient API and predefined sizes out of the box.

<snippet id='richtexteditor-sectioncode-page-cs' />
<snippet id='richtexteditor-sectioncode-page-vb' />



* Add headers and footers to a **Section**. Each section has the following types of **Headers** and **Footers** - *Default* (used all through the section), *First* (used on the first page of the section) and *Even* (to be used on every even page; if set, overrides the default header/footer on all even pages of the section). Here is how you can create a **Header**:

<snippet id='richtexteditor-sectioncode-body-cs' />
<snippet id='richtexteditor-sectioncode-body-vb' />



All header/footer types are set identically.

* In a non-measured document:

<snippet id='richtexteditor-sectioncode-header1-cs' />
<snippet id='richtexteditor-sectioncode-header1-vb' />



* In a measured document:

<snippet id='richtexteditor-sectioncode-header2-cs' />
<snippet id='richtexteditor-sectioncode-header2-vb' />



Setting the **Footers** can be done in the same way.

## Adding Paragraphs to a Section

Paragraphs can be added to a section in the following ways:

In a non-measured document:

<snippet id='richtexteditor-sectioncode-add1-cs' />
<snippet id='richtexteditor-sectioncode-add1-vb' />



In a measured document:

<snippet id='richtexteditor-sectioncode-add2-cs' />
<snippet id='richtexteditor-sectioncode-add2-vb' />



# See Also

 * [Document Elements]({%slug winforms/richtexteditor-/document-elements%})

 * [Section]({%slug winforms/richtexteditor-/document-elements/section%})

 * [Paragraph]({%slug winforms/richtexteditor-/document-elements/paragraph%})

 * [Span]({%slug winforms/richtexteditor-/document-elements/span%})

 * [Inline Image]({%slug winforms/richtexteditor-/document-elements/inline-image%})

 * [Hyperlink]({%slug winforms/richtexteditor-/features/hyperlink%})

---
title: Performance
page_title: Performance - RadRichTextEditor
description: RadRichTextEditor is a control that is able to display and edit rich-text content including formatted text arranged in pages, paragraphs, spans (runs), tables, etc.
slug: winforms/richtexteditor-/performance
tags: performance
published: True
position: 15
previous_url: richtexteditor-performance
---

# Performance

When developing __RadRichTextEditor__, we try to optimize the operations being executed as much as possible. However, with the introduction of newer features it cannot be helped that there might be performance diminishments. This article  lists some of the known factors that have negative impact on the time that common operations usually take and the overall responsiveness of the UI.      

* [Document Content](#document-content)

* [Large Paragraphs and Words](#large-paragraphs-and-words)

* [Tables](#tables)

* [Annotations](#annotations)

* [Headers Footers Notes Comments](#headers-and-footers,-notes-and-comments)

## Document Content

The type of the document content also influences the performance. This is only natural, as showing and editing heavily formatted documents take a bigger toll than just previewing plain text.
        
The performance can be hindered by the following factors:
        
## Large Paragraphs and Words

Large paragraphs can be a hindrance to the overall performance because paragraphs are the main unit of the measure and layout cycle. This means that most of the operations concerning changes in the document (e.g. when you insert, delete or format parts of the document) require an invalidation of the layout of the current paragraph. Therefore, the larger the paragraphs in the document, the worse the performance.
        
Documents with such big paragraphs are sometimes created when one uses line breaks instead of new paragraphs. In MS Word and in **RadRichTextEditor** pressing `Enter` creates a new paragraph, while `Shift` + `Enter` inserts a line break. More often than not documents with line-breaks instead of new paragraphs are a result of incorrect code-behind generation of the document, or import of HTML that contains breaks (&lt;br/&gt; tags) instead of paragraph elements (&lt;p&gt;&lt;/p&gt;) and can be easily avoided.
        
In addition, words that are longer than one line can also hinder the performance. This is so because processing documents containing such words often results in invalidating large portions of the document. This type of performance issue can be observed when using languages where the words are not separated by intervals, e.g. Japanese, Chinese, etc.
        
## Tables

Tables are one of the most complex elements which can be included in a **RadDocument**. Their behavior in general cases is pretty good, however when a table is extremely large (1000 rows or more) the scrolling/editing experience is diminished.
        
## Annotations

The term "annotations" stands for anything deriving from **AnnotationMarkerBase** (see [Manipulating Annotations]({%slug winforms/richtexteditor-/document-elements/annotations/manipulating-annotations%})), which includes both “native” and user-defined annotations. This comprises Bookmarks, Hyperlinks, Fields, Comments, Permission and ReadOnly Ranges and Floating Images.
        
The reason for the impact on the performance is that these elements are kept in special caches in order to enable the specific action that they implement. The more the annotations, the larger the caches, hence the negative effect on the performance.
        
## Headers and Footers, Notes and Comments

It is possible to add [headers and footers]({%slug winforms/richtexteditor-/features/headers-and-footers%}) for each section in the document. The same is also true for [Endnotes and Footnotes]({%slug winforms/richtexteditor-/features/references/footnotes-and-endnotes%}), as well as [Comments]({%slug winforms/richtexteditor-/features/comments%}). This provides the means for creating even richer documents, but also comes at a price. All this additional content is shown in separate instances of **RadRichTextEditor**. Furthermore, the contents of the documents of the headers and footers have to be copied across all pages of the section, which may cause performance hindrance with large documents.
        

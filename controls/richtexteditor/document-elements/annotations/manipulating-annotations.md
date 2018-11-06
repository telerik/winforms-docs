---
title: Manipulating Annotations
page_title: Manipulating Annotations | RadRichTextEditor
description: RadRichTextEditor is a control that allows you to display and edit rich text content including sections, paragraphs, spans, italic text, bold text, inline images, tables etc.
slug: winforms/richtexteditor-/document-elements/annotations/manipulating-annotations
tags: manipulating,annotations
published: True
position: 1
previous_url: richtexteditor-document-elements-annotations-manipulating-annotations
---

# Manipulating Annotations

This article outlines the most commonly used manipulations with regard to **Annotations**.

The types of manipulations that can be performed on annotations include:

* Presentation in the document;

* Retrieving annotations;

* Inserting an annotation;

* Deleting an annotation;

* Splitting an annotation at a given position.

## Presentation

By default, all annotations are markup-only in the sense that they do not have any appearance. If you want to display a highlight, range brackets or anything else, you can use the UI layers feature of **RadRichTextEditor**. You can read more about them in [this article]({%slug winforms/richtexteditor-/how-to/customize-presentation-through-ui-layers%}).        

## Methods for Retrieving Annotations

* **RadDocument** exposes the following general methods for retrieving annotation markers or checking if such exist in the document at all:

{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=contains}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=contains}} 

````C#
bool containsBookamrks = this.radRichTextEditor1.Document.ContainsAnnotationMarkersOfType<BookmarkRangeStart>();
IEnumerable<BookmarkRangeStart> markers = this.radRichTextEditor1.Document.GetAnnotationMarkersOfType<BookmarkRangeStart>();

````
````VB.NET
Dim containsBookamrks As Boolean = Me.radRichTextEditor1.Document.ContainsAnnotationMarkersOfType(Of BookmarkRangeStart)()
Dim markers As IEnumerable(Of BookmarkRangeStart) = Me.radRichTextEditor1.Document.GetAnnotationMarkersOfType(Of BookmarkRangeStart)()

````

{{endregion}} 

* Methods for retrieving the containing annotations around a particular inline. This is particularly convenient if you would like to perform checks against the position where the caret is at. First, you can obtain the current inline like this:

{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=inline}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=inline}} 

````C#
Inline currentInline = this.radRichTextEditor1.Document.CaretPosition.GetCurrentInline();

````
````VB.NET
Dim currentInline As Inline = Me.radRichTextEditor1.Document.CaretPosition.GetCurrentInline()

````

{{endregion}} 

and then, check if this inline is contained in a range using one of the methods below: 

{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=inRange}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=inRange}} 

````C#
bool isInRange = this.radRichTextEditor1.Document.IsInAnnotationRange<BookmarkRangeStart>(inline);
IEnumerable<BookmarkRangeStart> ranges = this.radRichTextEditor1.Document.GetContainingAnnotationRanges<BookmarkRangeStart>(inline);

````
````VB.NET
Dim isInRange As Boolean = Me.radRichTextEditor1.Document.IsInAnnotationRange(Of BookmarkRangeStart)(inline)
Dim ranges As IEnumerable(Of BookmarkRangeStart) = Me.radRichTextEditor1.Document.GetContainingAnnotationRanges(Of BookmarkRangeStart)(inline)

````
{{endregion}} 

* More finely tuned methods that filter the annotation ranges at the time of their retrieval include: 

{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=inRange1}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=inRange1}} 

````C#
bool isInRange1 = this.radRichTextEditor1.Document.IsInAnnotationRange<BookmarkRangeStart>(inline, Filter, true);
IEnumerable<BookmarkRangeStart> ranges1 = this.radRichTextEditor1.Document.GetContainingAnnotationRanges<BookmarkRangeStart>(inline, Filter, true);

````
````VB.NET
Dim isInRange1 As Boolean = Me.radRichTextEditor1.Document.IsInAnnotationRange(Of BookmarkRangeStart)(inline, AddressOf Filter, True)
Dim ranges1 As IEnumerable(Of BookmarkRangeStart) = Me.radRichTextEditor1.Document.GetContainingAnnotationRanges(Of BookmarkRangeStart)(inline, AddressOf Filter, True)

````

{{endregion}} 


## Inserting Annotations

Annotations can be inserted in the document using the following method of [RadDocumentEditor]({%slug winforms/richtexteditor-/features/raddocumenteditor%}).
 
{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=insert}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=insert}} 

````C#
documentEditor.InsertAnnotationRange(new BookmarkRangeStart(), new BookmarkRangeEnd());

````
````VB.NET
documentEditor.InsertAnnotationRange(New BookmarkRangeStart(), New BookmarkRangeEnd())

````

{{endregion}} 

There are also some methods that insert specific types of annotations for the commonly used types, such as Hyperlinks, Comments, etc. For more information, check the respective article.

## Deleting Annotations

In order to delete an annotation, you need to obtain a reference to its range start first. After that, you can use the following method of [RadDocumentEditor]({%slug winforms/richtexteditor-/features/raddocumenteditor%}) to remove it.

{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=delete}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=delete}} 

````C#
documentEditor.DeleteAnnotationRange(start);

````
````VB.NET
documentEditor.DeleteAnnotationRange(start)

````

{{endregion}} 

Note that this method will remove the annotation, but will keep its contents. In order to delete the contents as well, you can select it and use the **Delete** method of the editor:

{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=delete1}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=delete1}} 

````C#
documentEditor.Document.Selection.SelectAnnotationRange(start);
documentEditor.Delete(false);

````
````VB.NET
documentEditor.Document.Selection.SelectAnnotationRange(start)
documentEditor.Delete(False)

````

{{endregion}} 

There are also some methods that remove specific types of annotations for the commonly used types, such as **Hyperlinks**, **Comments**, etc. For more information, check the respective article.

## Splitting Annotations

Some user scenarios require that there would be an easy way to split annotation ranges. In such cases, one can use the following methods:

{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=split}} 
{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=split}} 

````C#
documentEditor.SplitAnnotationRange(start);
//or
documentEditor.SplitAnnotationRange(start, documentPosition);

````
````VB.NET
documentEditor.SplitAnnotationRange(start)
'or
documentEditor.SplitAnnotationRange(start, documentPosition)

````

{{endregion}} 

# See Also

 * [Annotations]({%slug winforms/richtexteditor-/document-elements/annotations%})

 * [Custom Annotations]({%slug winforms/richtexteditor-/document-elements/annotations/custom-annotations%})

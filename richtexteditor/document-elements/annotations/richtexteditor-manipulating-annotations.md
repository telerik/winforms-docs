---
title: Manipulating Annotations
page_title: Manipulating Annotations
description: Manipulating Annotations
slug: richtexteditor-document-elements-annotations-manipulating-annotations
tags: manipulating,annotations
published: True
position: 0
---

# Manipulating Annotations



This article outlines the most commonly used manipulations with regard to Annotations.

The types of manipulations that can be performed on annotations include:

* Presentation in the document;

* Retrieving annotations;

* Inserting an annotation;

* Deleting an annotation;

* Splitting an annotation at a given position.

## Presentation

By default all annotations are markup-only in the sense that they do not have any appearance. If you want to display a highlight, range brackets or 
          anything else, you can use the UI layers feature of RadRichTextBox. You can read more about them in
          [this article]({%slug richtexteditor-how-to-customize-presentation-trought-ui-layers%}).
        

## Methods for Retrieving Annotations

* RadDocument exposes the following general methods for retrieving annotation markers or checking if such exist in the document at all:

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=contains}}
	
	            bool containsBookamrks = this.radRichTextEditor1.Document.ContainsAnnotationMarkersOfType<BookmarkRangeStart>();
	
	            IEnumerable<BookmarkRangeStart> markers = this.radRichTextEditor1.Document.GetAnnotationMarkersOfType<BookmarkRangeStart>();
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=contains}}
	
	        Dim containsBookamrks As Boolean = Me.radRichTextEditor1.Document.ContainsAnnotationMarkersOfType(Of BookmarkRangeStart)()
	
	        Dim markers As IEnumerable(Of BookmarkRangeStart) = Me.radRichTextEditor1.Document.GetAnnotationMarkersOfType(Of BookmarkRangeStart)()
	
	        '#End Region
	
	        Dim paragraph As Paragraph = TryCast(Me.radRichTextEditor1.Document.Sections.First.Blocks.First, Paragraph)
	        Dim inline As Inline = paragraph.Inlines.First
	
	        '#Region "inRange"
	
	        Dim isInRange As Boolean = Me.radRichTextEditor1.Document.IsInAnnotationRange(Of BookmarkRangeStart)(inline)
	
	        Dim ranges As IEnumerable(Of BookmarkRangeStart) = Me.radRichTextEditor1.Document.GetContainingAnnotationRanges(Of BookmarkRangeStart)(inline)
	
	        '#End Region
	
	
	        '#Region "inRange1"
	
	        Dim isInRange1 As Boolean = Me.radRichTextEditor1.Document.IsInAnnotationRange(Of BookmarkRangeStart)(inline, AddressOf Filter, True)
	
	        Dim ranges1 As IEnumerable(Of BookmarkRangeStart) = Me.radRichTextEditor1.Document.GetContainingAnnotationRanges(Of BookmarkRangeStart)(inline, AddressOf Filter, True)
	
	        '#End Region
	
	        Dim documentEditor As New RadDocumentEditor(Me.radRichTextEditor1.Document)
	        Dim start = New BookmarkRangeStart()
	        Dim documentPosition As New Telerik.WinForms.Documents.DocumentPosition(Me.radRichTextEditor1.Document)
	
	        '#Region "insert"
	
	        documentEditor.InsertAnnotationRange(New BookmarkRangeStart(), New BookmarkRangeEnd())
	
	        '#End Region
	
	        '#Region "delete"
	
	        documentEditor.DeleteAnnotationRange(start)
	
	        '#End Region
	
	        '#Region "delete1"
	
	        documentEditor.Document.Selection.SelectAnnotationRange(start)
	        documentEditor.Delete(False)
	
	        '#End Region
	
	        '#Region "split"
	
	        documentEditor.SplitAnnotationRange(start)
	        'or
	        documentEditor.SplitAnnotationRange(start, documentPosition)
	
	        '#End Region
	    End Sub
	    Private Shared Function Filter(ByVal start As BookmarkRangeStart) As Boolean
	        Return True
	    End Function
	
	End Class



* Methods for retrieving the containing annotations around a particular inline. This is particularly convenient if you would like to perform checks 
            against the position where the caret is at.First, you can obtain the current inline like this:

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=inline}}
	
	            Inline currentInline = this.radRichTextEditor1.Document.CaretPosition.GetCurrentInline();
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=inline}}
	
	        Dim currentInline As Inline = Me.radRichTextEditor1.Document.CaretPosition.GetCurrentInline()
	
	        '#End Region
	
	        '#Region "contains"
	
	        Dim containsBookamrks As Boolean = Me.radRichTextEditor1.Document.ContainsAnnotationMarkersOfType(Of BookmarkRangeStart)()
	
	        Dim markers As IEnumerable(Of BookmarkRangeStart) = Me.radRichTextEditor1.Document.GetAnnotationMarkersOfType(Of BookmarkRangeStart)()
	
	        '#End Region
	
	        Dim paragraph As Paragraph = TryCast(Me.radRichTextEditor1.Document.Sections.First.Blocks.First, Paragraph)
	        Dim inline As Inline = paragraph.Inlines.First
	
	        '#Region "inRange"
	
	        Dim isInRange As Boolean = Me.radRichTextEditor1.Document.IsInAnnotationRange(Of BookmarkRangeStart)(inline)
	
	        Dim ranges As IEnumerable(Of BookmarkRangeStart) = Me.radRichTextEditor1.Document.GetContainingAnnotationRanges(Of BookmarkRangeStart)(inline)
	
	        '#End Region
	
	
	        '#Region "inRange1"
	
	        Dim isInRange1 As Boolean = Me.radRichTextEditor1.Document.IsInAnnotationRange(Of BookmarkRangeStart)(inline, AddressOf Filter, True)
	
	        Dim ranges1 As IEnumerable(Of BookmarkRangeStart) = Me.radRichTextEditor1.Document.GetContainingAnnotationRanges(Of BookmarkRangeStart)(inline, AddressOf Filter, True)
	
	        '#End Region
	
	        Dim documentEditor As New RadDocumentEditor(Me.radRichTextEditor1.Document)
	        Dim start = New BookmarkRangeStart()
	        Dim documentPosition As New Telerik.WinForms.Documents.DocumentPosition(Me.radRichTextEditor1.Document)
	
	        '#Region "insert"
	
	        documentEditor.InsertAnnotationRange(New BookmarkRangeStart(), New BookmarkRangeEnd())
	
	        '#End Region
	
	        '#Region "delete"
	
	        documentEditor.DeleteAnnotationRange(start)
	
	        '#End Region
	
	        '#Region "delete1"
	
	        documentEditor.Document.Selection.SelectAnnotationRange(start)
	        documentEditor.Delete(False)
	
	        '#End Region
	
	        '#Region "split"
	
	        documentEditor.SplitAnnotationRange(start)
	        'or
	        documentEditor.SplitAnnotationRange(start, documentPosition)
	
	        '#End Region
	    End Sub
	    Private Shared Function Filter(ByVal start As BookmarkRangeStart) As Boolean
	        Return True
	    End Function
	
	End Class

and then, check if this inline is contained in a range using one of the methods below:

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=inRange}}
	
	            bool isInRange = this.radRichTextEditor1.Document.IsInAnnotationRange<BookmarkRangeStart>(inline);
	
	            IEnumerable<BookmarkRangeStart> ranges = this.radRichTextEditor1.Document.GetContainingAnnotationRanges<BookmarkRangeStart>(inline);
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=inRange}}
	
	        Dim isInRange As Boolean = Me.radRichTextEditor1.Document.IsInAnnotationRange(Of BookmarkRangeStart)(inline)
	
	        Dim ranges As IEnumerable(Of BookmarkRangeStart) = Me.radRichTextEditor1.Document.GetContainingAnnotationRanges(Of BookmarkRangeStart)(inline)
	
	        '#End Region
	
	
	        '#Region "inRange1"
	
	        Dim isInRange1 As Boolean = Me.radRichTextEditor1.Document.IsInAnnotationRange(Of BookmarkRangeStart)(inline, AddressOf Filter, True)
	
	        Dim ranges1 As IEnumerable(Of BookmarkRangeStart) = Me.radRichTextEditor1.Document.GetContainingAnnotationRanges(Of BookmarkRangeStart)(inline, AddressOf Filter, True)
	
	        '#End Region
	
	        Dim documentEditor As New RadDocumentEditor(Me.radRichTextEditor1.Document)
	        Dim start = New BookmarkRangeStart()
	        Dim documentPosition As New Telerik.WinForms.Documents.DocumentPosition(Me.radRichTextEditor1.Document)
	
	        '#Region "insert"
	
	        documentEditor.InsertAnnotationRange(New BookmarkRangeStart(), New BookmarkRangeEnd())
	
	        '#End Region
	
	        '#Region "delete"
	
	        documentEditor.DeleteAnnotationRange(start)
	
	        '#End Region
	
	        '#Region "delete1"
	
	        documentEditor.Document.Selection.SelectAnnotationRange(start)
	        documentEditor.Delete(False)
	
	        '#End Region
	
	        '#Region "split"
	
	        documentEditor.SplitAnnotationRange(start)
	        'or
	        documentEditor.SplitAnnotationRange(start, documentPosition)
	
	        '#End Region
	    End Sub
	    Private Shared Function Filter(ByVal start As BookmarkRangeStart) As Boolean
	        Return True
	    End Function
	
	End Class



* More finely tuned methods that filter the annotation ranges at the time of their retrieval include:

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=inRange1}}
	
	            bool isInRange1 = this.radRichTextEditor1.Document.IsInAnnotationRange<BookmarkRangeStart>(inline, Filter, true);
	
	            IEnumerable<BookmarkRangeStart> ranges1 = this.radRichTextEditor1.Document.GetContainingAnnotationRanges<BookmarkRangeStart>(inline, Filter, true);
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=inRange1}}
	
	        Dim isInRange1 As Boolean = Me.radRichTextEditor1.Document.IsInAnnotationRange(Of BookmarkRangeStart)(inline, AddressOf Filter, True)
	
	        Dim ranges1 As IEnumerable(Of BookmarkRangeStart) = Me.radRichTextEditor1.Document.GetContainingAnnotationRanges(Of BookmarkRangeStart)(inline, AddressOf Filter, True)
	
	        '#End Region
	
	        Dim documentEditor As New RadDocumentEditor(Me.radRichTextEditor1.Document)
	        Dim start = New BookmarkRangeStart()
	        Dim documentPosition As New Telerik.WinForms.Documents.DocumentPosition(Me.radRichTextEditor1.Document)
	
	        '#Region "insert"
	
	        documentEditor.InsertAnnotationRange(New BookmarkRangeStart(), New BookmarkRangeEnd())
	
	        '#End Region
	
	        '#Region "delete"
	
	        documentEditor.DeleteAnnotationRange(start)
	
	        '#End Region
	
	        '#Region "delete1"
	
	        documentEditor.Document.Selection.SelectAnnotationRange(start)
	        documentEditor.Delete(False)
	
	        '#End Region
	
	        '#Region "split"
	
	        documentEditor.SplitAnnotationRange(start)
	        'or
	        documentEditor.SplitAnnotationRange(start, documentPosition)
	
	        '#End Region
	    End Sub
	    Private Shared Function Filter(ByVal start As BookmarkRangeStart) As Boolean
	        Return True
	    End Function
	
	End Class



## Inserting Annotations

Annotations can be inserted in the document using the following method of [RadDocumentEditor]({%slug richtexteditor-features-raddocumenteditor%}).
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=insert}}
	
	            documentEditor.InsertAnnotationRange(new BookmarkRangeStart(), new BookmarkRangeEnd());
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=insert}}
	
	        documentEditor.InsertAnnotationRange(New BookmarkRangeStart(), New BookmarkRangeEnd())
	
	        '#End Region
	
	        '#Region "delete"
	
	        documentEditor.DeleteAnnotationRange(start)
	
	        '#End Region
	
	        '#Region "delete1"
	
	        documentEditor.Document.Selection.SelectAnnotationRange(start)
	        documentEditor.Delete(False)
	
	        '#End Region
	
	        '#Region "split"
	
	        documentEditor.SplitAnnotationRange(start)
	        'or
	        documentEditor.SplitAnnotationRange(start, documentPosition)
	
	        '#End Region
	    End Sub
	    Private Shared Function Filter(ByVal start As BookmarkRangeStart) As Boolean
	        Return True
	    End Function
	
	End Class



There are also some methods that insert specific types of annotations for the commonly used types, such as Hyperlinks, Comments, etc. 
        For more information, check the respective article.

## Deleting Annotations

In order to delete an annotation, you need to obtain a reference to its range start first. After that, you can use the following 
          method of [RadDocumentEditor]({%slug richtexteditor-features-raddocumenteditor%}) to remove it.
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=delete}}
	
	            documentEditor.DeleteAnnotationRange(start);
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=delete}}
	
	        documentEditor.DeleteAnnotationRange(start)
	
	        '#End Region
	
	        '#Region "delete1"
	
	        documentEditor.Document.Selection.SelectAnnotationRange(start)
	        documentEditor.Delete(False)
	
	        '#End Region
	
	        '#Region "split"
	
	        documentEditor.SplitAnnotationRange(start)
	        'or
	        documentEditor.SplitAnnotationRange(start, documentPosition)
	
	        '#End Region
	    End Sub
	    Private Shared Function Filter(ByVal start As BookmarkRangeStart) As Boolean
	        Return True
	    End Function
	
	End Class



Note that this method will remove the annotation, but will keep its contents. In order to delete the contents as well, you can select it and use the 
        Delete method of the editor:

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=delete1}}
	
	            documentEditor.Document.Selection.SelectAnnotationRange(start);
	            documentEditor.Delete(false);
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=delete1}}
	
	        documentEditor.Document.Selection.SelectAnnotationRange(start)
	        documentEditor.Delete(False)
	
	        '#End Region
	
	        '#Region "split"
	
	        documentEditor.SplitAnnotationRange(start)
	        'or
	        documentEditor.SplitAnnotationRange(start, documentPosition)
	
	        '#End Region
	    End Sub
	    Private Shared Function Filter(ByVal start As BookmarkRangeStart) As Boolean
	        Return True
	    End Function
	
	End Class



There are also some methods that remove specific types of annotations for the commonly used types, such as Hyperlinks, Comments, etc. For more 
        information, check the respective article.

## Splitting Annotations

Some user scenarios require that there would be an easy way to split annotation ranges. In such cases, one can use the following methods:
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\DocumentElements\ManipulatingAnnotations.cs region=split}}
	
	            documentEditor.SplitAnnotationRange(start);
	            //or
	            documentEditor.SplitAnnotationRange(start, documentPosition);
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\DocumentElements\ManipulatingAnnotations.vb region=split}}
	
	        documentEditor.SplitAnnotationRange(start)
	        'or
	        documentEditor.SplitAnnotationRange(start, documentPosition)
	
	        '#End Region
	    End Sub
	    Private Shared Function Filter(ByVal start As BookmarkRangeStart) As Boolean
	        Return True
	    End Function
	
	End Class



# See Also

 * [Annotations]({%slug richtexteditor-document-elements-annotations%})

 * [Custom Annotations]({%slug richtexteditor-document-elements-annotations-custom-annotations%})

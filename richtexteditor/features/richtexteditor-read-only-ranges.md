---
title: Read Only Ranges
page_title: Read Only Ranges
description: Read Only Ranges
slug: richtexteditor-features-read-only-ranges
tags: read,only,ranges
published: True
position: 15
---

# Read Only Ranges



The following article explains how to use read only ranges in __RadRichTextEditor__

## What is a Read Only range?

Read only ranges are a convenient way to restrict some of the content of a particular document from editing. When content is in a read only range,
          users are unable to edit, format or delete it. What is more, manipulating the document from code with __RadRichTextEditor'__s
          API or commands is also not possible.
        

>tip__RadRichTextEditor__ also provides another, more advanced option for restricting content which allows particular users or groups of
            users to edit different parts of a document. For more information on this check the documentation of the
            [Document Protection]({%slug richtexteditor-features-document-protection%}) feature.
          

A read only annotation range is represented in __RadDocument__'s structure by two paired annotation markers – a
          __ReadOnlyRangeStart__ instance and a __ReadOnlyRangeEnd__ instance. Both are inline elements, thus users
          are able to edit the document prior and after the annotation markers. More on Annotations you can find
          [here]({%slug richtexteditor-document-elements-annotations%}).
        

>As read only ranges do not have a proper equivalent in most of the supported export formats (like DOCX or HTML), they are only exported to
            __RadDocument__'s native format – XAML.
          

## Insert Read Only Range

__RadDocument__ has two states - measured and non-measured. Depending on the state of the document you can insert a read only range
          in one of the following ways.
        Insert in Measured Document

When the document is measured (for example, shown in a __RadRichTextEditor__), you can select the part of the document which
              you want to make read-only and use the __InsertReadOnlyRange()__ method of __RadRichTextEditor__ (or
              [RadDocumentEditor]({%slug richtexteditor-features-raddocumenteditor%}) respectively):
            

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\Features\ReadOnlyRanges.cs region=insert}}
	            
	            this.radRichTextEditor1.InsertReadOnlyRange();
	            
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\Features\ReadOnlyRanges.vb region=insert}}
	
	        Me.radRichTextEditor1.InsertReadOnlyRange()
	
	        '#End Region
	
	        '#Region "add"
	
	        Dim document As New RadDocument()
	        Dim section As New Section()
	        Dim paragraph As New Paragraph()
	        Dim span As New Span("Content prior range[")
	        Dim span2 As New Span("]Content after range")
	        Dim readOnlyContent As New Span("READ ONLY")
	
	        Dim rangeStart As New ReadOnlyRangeStart()
	        Dim rangeEnd As New ReadOnlyRangeEnd()
	        rangeEnd.PairWithStart(rangeStart)
	
	        paragraph.Inlines.Add(span)
	        paragraph.Inlines.Add(rangeStart)
	        paragraph.Inlines.Add(readOnlyContent)
	        paragraph.Inlines.Add(rangeEnd)
	        paragraph.Inlines.Add(span2)
	
	        section.Blocks.Add(paragraph)
	        document.Sections.Add(section)
	
	        '#End Region
	
	        '#Region "delete"
	
	        Me.radRichTextEditor1.DeleteReadOnlyRange()
	
	        '#End Region
	
	        '#Region "start"
	
	        Dim start As ReadOnlyRangeStart = Me.radRichTextEditor1.Document.EnumerateChildrenOfType(Of ReadOnlyRangeStart)().Where(Function(x) x.Tag = "ReadOnly").FirstOrDefault()
	        If start IsNot Nothing Then
	            Me.radRichTextEditor1.DeleteReadOnlyRange(start)
	        End If
	
	        '#End Region
	    End Sub
	End Class



Generally, editing the content of a read only range is not possible through the UI and through __RadRichTextEditor__'s API.
              However, when manipulating a document using __RadDocumentEditor__ you can set the __RespectReadOnlyRanges__
              property of __RadDocumentEditor__ to *false* and read only ranges will be ignored.
            Insert in Non-measured Document

As opposed to when inserting with one of the methods of __RadRichTextEditor__, when building a document from code you have to
              make sure that the annotations in it are explicitly paired. This can be achieved with the __PairWithStart()__ method of
              __AnnotationRangeEnd__. Here is an example which builds a __RadDocument__ with a read only range in it.
            

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\Features\ReadOnlyRanges.cs region=add}}
	            
	            RadDocument document = new RadDocument();
	            Section section = new Section();
	            Paragraph paragraph = new Paragraph();
	            Span span = new Span("Content prior range[");
	            Span span2 = new Span("]Content after range");
	            Span readOnlyContent = new Span("READ ONLY");
	
	            ReadOnlyRangeStart rangeStart = new ReadOnlyRangeStart();
	            ReadOnlyRangeEnd rangeEnd = new ReadOnlyRangeEnd();
	            rangeEnd.PairWithStart(rangeStart);
	            
	            paragraph.Inlines.Add(span);
	            paragraph.Inlines.Add(rangeStart);
	            paragraph.Inlines.Add(readOnlyContent);
	            paragraph.Inlines.Add(rangeEnd);
	            paragraph.Inlines.Add(span2);
	            
	            section.Blocks.Add(paragraph);
	            document.Sections.Add(section);
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\Features\ReadOnlyRanges.vb region=add}}
	
	        Dim document As New RadDocument()
	        Dim section As New Section()
	        Dim paragraph As New Paragraph()
	        Dim span As New Span("Content prior range[")
	        Dim span2 As New Span("]Content after range")
	        Dim readOnlyContent As New Span("READ ONLY")
	
	        Dim rangeStart As New ReadOnlyRangeStart()
	        Dim rangeEnd As New ReadOnlyRangeEnd()
	        rangeEnd.PairWithStart(rangeStart)
	
	        paragraph.Inlines.Add(span)
	        paragraph.Inlines.Add(rangeStart)
	        paragraph.Inlines.Add(readOnlyContent)
	        paragraph.Inlines.Add(rangeEnd)
	        paragraph.Inlines.Add(span2)
	
	        section.Blocks.Add(paragraph)
	        document.Sections.Add(section)
	
	        '#End Region
	
	        '#Region "delete"
	
	        Me.radRichTextEditor1.DeleteReadOnlyRange()
	
	        '#End Region
	
	        '#Region "start"
	
	        Dim start As ReadOnlyRangeStart = Me.radRichTextEditor1.Document.EnumerateChildrenOfType(Of ReadOnlyRangeStart)().Where(Function(x) x.Tag = "ReadOnly").FirstOrDefault()
	        If start IsNot Nothing Then
	            Me.radRichTextEditor1.DeleteReadOnlyRange(start)
	        End If
	
	        '#End Region
	    End Sub
	End Class



## Delete Read Only Range

In order to remove a read only range, you should simply call the __DeleteReadOnlyRange()__ method of
          __RadRichTextEditor__ or __RadDocumentEditor__:
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\Features\ReadOnlyRanges.cs region=delete}}
	            
	            this.radRichTextEditor1.DeleteReadOnlyRange();
	            
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\Features\ReadOnlyRanges.vb region=delete}}
	
	        Me.radRichTextEditor1.DeleteReadOnlyRange()
	
	        '#End Region
	
	        '#Region "start"
	
	        Dim start As ReadOnlyRangeStart = Me.radRichTextEditor1.Document.EnumerateChildrenOfType(Of ReadOnlyRangeStart)().Where(Function(x) x.Tag = "ReadOnly").FirstOrDefault()
	        If start IsNot Nothing Then
	            Me.radRichTextEditor1.DeleteReadOnlyRange(start)
	        End If
	
	        '#End Region
	    End Sub
	End Class



The above-demonstrated method will delete the read only range the caret is currently located in and make the content which was in it editable again.
        

Additionally, if you can obtain a reference to a particular __ReadOnlyRangeStart__ element in the document, you can delete it with
          the __DeleteReadOnlyRange(ReadOnlyRangeStart start)__ method. For example, if you want to delete a particular range based on its
          __Tag__, you can do it as follows:
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\Features\ReadOnlyRanges.cs region=start}}
	            
	            ReadOnlyRangeStart start = this.radRichTextEditor1.Document.EnumerateChildrenOfType<ReadOnlyRangeStart>().Where(x => x.Tag == "ReadOnly").FirstOrDefault();
	            if (start != null)
	            {
	                this.radRichTextEditor1.DeleteReadOnlyRange(start);
	            }
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\Features\ReadOnlyRanges.vb region=start}}
	
	        Dim start As ReadOnlyRangeStart = Me.radRichTextEditor1.Document.EnumerateChildrenOfType(Of ReadOnlyRangeStart)().Where(Function(x) x.Tag = "ReadOnly").FirstOrDefault()
	        If start IsNot Nothing Then
	            Me.radRichTextEditor1.DeleteReadOnlyRange(start)
	        End If
	
	        '#End Region
	    End Sub
	End Class



# See Also

 * [Annotations]({%slug richtexteditor-document-elements-annotations%})

 * [Manipulating Annotations]({%slug richtexteditor-document-elements-annotations-manipulating-annotations%})

 * [RadDocumentEditor]({%slug richtexteditor-features-raddocumenteditor%})

 * [Document Protection]({%slug richtexteditor-features-document-protection%})

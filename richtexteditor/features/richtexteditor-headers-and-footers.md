---
title: Headers and Footers
page_title: Headers and Footers
description: Headers and Footers
slug: richtexteditor-features-headers-and-footers
tags: headers,and,footers
published: True
position: 8
---

# Headers and Footers



__RadRichTextEditor__ supports Headers and Footers in its document when in Paged [layout mode](15C18CB6-50BA-4E9C-BF8B-ED9A2694A8EE).
      

>Note that Headers and Footers are not persisted when exporting with HtmlFormatProvider
          You can read more about this [here]({%slug richtexteditor-import-export%})

The topic contains the following sections:

* [Header Footer Types](Header_Footer_Types)

* [Customizing Headers And Footers](Customizing_Headers_And_Footers)

* [Disabling Headers and Footers](Disabling_Headers_and_Footers)

## Header Footer Types

The Headers and Footers are properties of a Section and each section in the document can have the following types of Headers and Footers:

* __Default__ - used all through the section;
            

* __First__ - used on the first page of the section only;
            

* __Even__ - to be used on every even page.
            

## Customizing Headers and Footers

Here is an example how you can create a Header: 

#### __[C#] __

{{region header}}
	
	            Header header = new Header() { Body = radDocument, IsLinkedToPrevious = false }; //radDocument is an instance of RadDocument, representing the content of a Header, 
	            //typically contains a few paragraphs
	
	{{endregion}}



#### __[VB.NET] __

{{region header}}
	
	        Dim header As New Header() With {.Body = radDocument, .IsLinkedToPrevious = False} 'radDocument is an instance of RadDocument, representing the content of a Header,
	        'typically contains a few paragraphs
	
	        '#End Region
	
	        Dim section As New Section()
	
	        '#Region "section"
	
	        section.Headers.Default = header
	
	        '#End Region
	
	        '#Region "editor"
	
	        Me.radRichTextEditor1.UpdateHeader(Me.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, header)
	
	        '#End Region
	
	        '#Region "first"
	
	        Me.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = True
	        'or
	        Me.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = True
	
	        '#End Region
	
	        '#Region "footer"
	
	        Dim footer As New Footer() With {.Body = radDocument, .IsLinkedToPrevious = False} 'radDocument is an instance of RadDocument, representing the content of the footer
	
	        '#End Region
	
	        '#Region "footersection"
	
	        section.Footers.Default = footer
	
	        '#End Region
	
	        '#Region "update"
	
	        Me.radRichTextEditor1.UpdateFooter(Me.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, footer)
	
	        '#End Region
	
	        '#Region "even"
	
	        Me.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = True
	        'or
	        Me.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = True
	
	        '#End Region
	    End Sub
	End Class
	
	#Region "custom"
	
	Friend Class CustomUILayerBuilder
	    Inherits UILayersBuilder
	
	    Protected Overrides Sub BuildUILayersOverride(ByVal uiLayerContainer As IUILayerContainer)
	        Me.BuildUILayersOverride(uiLayerContainer)
	        uiLayerContainer.UILayers.Remove(DefaultUILayers.HeaderFooterLayer)
	    End Sub
	End Class
	
	#End Region



When it comes to using a Header created in this manner, this depends on the state of the document - if it has been measured or not.

* In a non-measured document, which you are building in code-behind, you can set the Default page Header of a section in the following way:

#### __[C#] __

{{region section}}
	
	            section.Headers.Default = header;
	
	{{endregion}}



#### __[VB.NET] __

{{region section}}
	
	        section.Headers.Default = header
	
	        '#End Region
	
	        '#Region "editor"
	
	        Me.radRichTextEditor1.UpdateHeader(Me.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, header)
	
	        '#End Region
	
	        '#Region "first"
	
	        Me.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = True
	        'or
	        Me.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = True
	
	        '#End Region
	
	        '#Region "footer"
	
	        Dim footer As New Footer() With {.Body = radDocument, .IsLinkedToPrevious = False} 'radDocument is an instance of RadDocument, representing the content of the footer
	
	        '#End Region
	
	        '#Region "footersection"
	
	        section.Footers.Default = footer
	
	        '#End Region
	
	        '#Region "update"
	
	        Me.radRichTextEditor1.UpdateFooter(Me.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, footer)
	
	        '#End Region
	
	        '#Region "even"
	
	        Me.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = True
	        'or
	        Me.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = True
	
	        '#End Region
	    End Sub
	End Class
	
	#Region "custom"
	
	Friend Class CustomUILayerBuilder
	    Inherits UILayersBuilder
	
	    Protected Overrides Sub BuildUILayersOverride(ByVal uiLayerContainer As IUILayerContainer)
	        Me.BuildUILayersOverride(uiLayerContainer)
	        uiLayerContainer.UILayers.Remove(DefaultUILayers.HeaderFooterLayer)
	    End Sub
	End Class
	
	#End Region



* In a measured document (a document that has been previewed in the editor), you can change the Default page header of the first section like this:

#### __[C#] __

{{region editor}}
	
	            this.radRichTextEditor1.UpdateHeader(this.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, header);
	
	{{endregion}}



#### __[VB.NET] __

{{region editor}}
	
	        Me.radRichTextEditor1.UpdateHeader(Me.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, header)
	
	        '#End Region
	
	        '#Region "first"
	
	        Me.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = True
	        'or
	        Me.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = True
	
	        '#End Region
	
	        '#Region "footer"
	
	        Dim footer As New Footer() With {.Body = radDocument, .IsLinkedToPrevious = False} 'radDocument is an instance of RadDocument, representing the content of the footer
	
	        '#End Region
	
	        '#Region "footersection"
	
	        section.Footers.Default = footer
	
	        '#End Region
	
	        '#Region "update"
	
	        Me.radRichTextEditor1.UpdateFooter(Me.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, footer)
	
	        '#End Region
	
	        '#Region "even"
	
	        Me.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = True
	        'or
	        Me.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = True
	
	        '#End Region
	    End Sub
	End Class
	
	#Region "custom"
	
	Friend Class CustomUILayerBuilder
	    Inherits UILayersBuilder
	
	    Protected Overrides Sub BuildUILayersOverride(ByVal uiLayerContainer As IUILayerContainer)
	        Me.BuildUILayersOverride(uiLayerContainer)
	        uiLayerContainer.UILayers.Remove(DefaultUILayers.HeaderFooterLayer)
	    End Sub
	End Class
	
	#End Region



All header/footer types - Default, First and Even are set identically. The only thing you should add when you set the First or Even Header/Footer of the document,
          is to set the property of the section that notifies the document to use different Header/Footer than the default one using one of the following properties:
        

#### __[C#] __

{{region first}}
	
	            this.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = true;
	            //or
	            this.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = true;
	
	{{endregion}}



#### __[VB.NET] __

{{region first}}
	
	        Me.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = True
	        'or
	        Me.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = True
	
	        '#End Region
	
	        '#Region "footer"
	
	        Dim footer As New Footer() With {.Body = radDocument, .IsLinkedToPrevious = False} 'radDocument is an instance of RadDocument, representing the content of the footer
	
	        '#End Region
	
	        '#Region "footersection"
	
	        section.Footers.Default = footer
	
	        '#End Region
	
	        '#Region "update"
	
	        Me.radRichTextEditor1.UpdateFooter(Me.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, footer)
	
	        '#End Region
	
	        '#Region "even"
	
	        Me.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = True
	        'or
	        Me.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = True
	
	        '#End Region
	    End Sub
	End Class
	
	#Region "custom"
	
	Friend Class CustomUILayerBuilder
	    Inherits UILayersBuilder
	
	    Protected Overrides Sub BuildUILayersOverride(ByVal uiLayerContainer As IUILayerContainer)
	        Me.BuildUILayersOverride(uiLayerContainer)
	        uiLayerContainer.UILayers.Remove(DefaultUILayers.HeaderFooterLayer)
	    End Sub
	End Class
	
	#End Region



Setting the Footers can be done in the same way.
          Here is the respective code for footers:
        

* Creating a Footer:

#### __[C#] __

{{region footer}}
	
	            Footer footer = new Footer() { Body = radDocument, IsLinkedToPrevious = false }; //radDocument is an instance of RadDocument, representing the content of the footer
	
	{{endregion}}



#### __[VB.NET] __

{{region footer}}
	
	        Dim footer As New Footer() With {.Body = radDocument, .IsLinkedToPrevious = False} 'radDocument is an instance of RadDocument, representing the content of the footer
	
	        '#End Region
	
	        '#Region "footersection"
	
	        section.Footers.Default = footer
	
	        '#End Region
	
	        '#Region "update"
	
	        Me.radRichTextEditor1.UpdateFooter(Me.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, footer)
	
	        '#End Region
	
	        '#Region "even"
	
	        Me.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = True
	        'or
	        Me.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = True
	
	        '#End Region
	    End Sub
	End Class
	
	#Region "custom"
	
	Friend Class CustomUILayerBuilder
	    Inherits UILayersBuilder
	
	    Protected Overrides Sub BuildUILayersOverride(ByVal uiLayerContainer As IUILayerContainer)
	        Me.BuildUILayersOverride(uiLayerContainer)
	        uiLayerContainer.UILayers.Remove(DefaultUILayers.HeaderFooterLayer)
	    End Sub
	End Class
	
	#End Region



* Setting the Footer to be used in a particular section:

* In a non-measured document:

#### __[C#] __

{{region footersection}}
	
	            section.Footers.Default = footer;
	
	{{endregion}}



#### __[VB.NET] __

{{region footersection}}
	
	        section.Footers.Default = footer
	
	        '#End Region
	
	        '#Region "update"
	
	        Me.radRichTextEditor1.UpdateFooter(Me.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, footer)
	
	        '#End Region
	
	        '#Region "even"
	
	        Me.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = True
	        'or
	        Me.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = True
	
	        '#End Region
	    End Sub
	End Class
	
	#Region "custom"
	
	Friend Class CustomUILayerBuilder
	    Inherits UILayersBuilder
	
	    Protected Overrides Sub BuildUILayersOverride(ByVal uiLayerContainer As IUILayerContainer)
	        Me.BuildUILayersOverride(uiLayerContainer)
	        uiLayerContainer.UILayers.Remove(DefaultUILayers.HeaderFooterLayer)
	    End Sub
	End Class
	
	#End Region



* In a measured document:

#### __[C#] __

{{region update}}
	
	            this.radRichTextEditor1.UpdateFooter(this.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, footer);
	
	{{endregion}}



#### __[VB.NET] __

{{region update}}
	
	        Me.radRichTextEditor1.UpdateFooter(Me.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, footer)
	
	        '#End Region
	
	        '#Region "even"
	
	        Me.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = True
	        'or
	        Me.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = True
	
	        '#End Region
	    End Sub
	End Class
	
	#Region "custom"
	
	Friend Class CustomUILayerBuilder
	    Inherits UILayersBuilder
	
	    Protected Overrides Sub BuildUILayersOverride(ByVal uiLayerContainer As IUILayerContainer)
	        Me.BuildUILayersOverride(uiLayerContainer)
	        uiLayerContainer.UILayers.Remove(DefaultUILayers.HeaderFooterLayer)
	    End Sub
	End Class
	
	#End Region



As for setting different footers for the first page or the even page, this is done by passing the respective parameter to the UpdateFooter method - HeaderFooterType.
          First or HeaderFooterType.Even and setting the corresponding property of the document/editor:
        

#### __[C#] __

{{region even}}
	
	            this.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = true;
	            //or
	            this.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = true;
	
	{{endregion}}



#### __[VB.NET] __

{{region even}}
	
	        Me.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = True
	        'or
	        Me.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = True
	
	        '#End Region
	    End Sub
	End Class
	
	#Region "custom"
	
	Friend Class CustomUILayerBuilder
	    Inherits UILayersBuilder
	
	    Protected Overrides Sub BuildUILayersOverride(ByVal uiLayerContainer As IUILayerContainer)
	        Me.BuildUILayersOverride(uiLayerContainer)
	        uiLayerContainer.UILayers.Remove(DefaultUILayers.HeaderFooterLayer)
	    End Sub
	End Class
	
	#End Region



## Disabling Headers and Footers

Headers and footers are only present in Paged layout mode, so the easiest way to remove them is to change the layout mode. In case you wish
          to show documents in paged mode and still disable headers and footers, you can do so by removing the UI layer responsible for their visualization -
          __HeaderFooterLayer__.
        

>tipThe concept of UI layers and their usage are explained in [this article]({%slug richtexteditor-how-to-customize-presentation-trought-ui-layers%}).
          

#### __[C#] __

{{region custom}}
	
	    class CustomUILayerBuilder : UILayersBuilder
	    {
	        protected override void BuildUILayersOverride(IUILayerContainer uiLayerContainer)
	        {
	            base.BuildUILayersOverride(uiLayerContainer);
	            uiLayerContainer.UILayers.Remove(DefaultUILayers.HeaderFooterLayer);
	        }
	    }
	
	{{endregion}}



#### __[VB.NET] __

{{region custom}}
	
	Friend Class CustomUILayerBuilder
	    Inherits UILayersBuilder
	
	    Protected Overrides Sub BuildUILayersOverride(ByVal uiLayerContainer As IUILayerContainer)
	        Me.BuildUILayersOverride(uiLayerContainer)
	        uiLayerContainer.UILayers.Remove(DefaultUILayers.HeaderFooterLayer)
	    End Sub
	End Class
	
	#End Region



# See Also

 * [RadDocument]({%slug richtexteditor-document-elements-raddocument%})

 * [Selection]({%slug richtexteditor-features-selection%})

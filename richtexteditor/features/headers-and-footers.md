---
title: Headers and Footers
page_title: Headers and Footers | UI for WinForms Documentation
description: Headers and Footers
slug: winforms/richtexteditor-/features/headers-and-footers
tags: headers,and,footers
published: True
position: 9
previous_url: richtexteditor-features-headers-and-footers
---

# Headers and Footers



__RadRichTextEditor__ supports Headers and Footers in its document when in Paged [layout mode]({%slug winforms/richtexteditor-/document-elements/raddocument%}).
      

>note Note that Headers and Footers are not persisted when exporting with HtmlFormatProvider. You can read more about this [here]({%slug winforms/richtexteditor/import%})
>


The topic contains the following sections:

* [Header Footer Types](#header-footer-types)

* [Customizing Headers And Footers](#customizing-headers-and-footers)

* [Disabling Headers and Footers](#disabling-headers-and-footers)

## Header Footer Types

The Headers and Footers are properties of a Section and each section in the document can have the following types of Headers and Footers:

* __Default__ - used all through the section;
            

* __First__ - used on the first page of the section only;
            

* __Even__ - to be used on every even page.
            

## Customizing Headers And Footers

Here is an example how you can create a Header: 
{{source=..\SamplesCS\RichTextEditor\Features\HeadersAndFooters.cs region=header}} 
{{source=..\SamplesVB\RichTextEditor\Features\HeadersAndFooters.vb region=header}} 

````C#
Header header = new Header() { Body = radDocument, IsLinkedToPrevious = false }; //radDocument is an instance of RadDocument, representing the content of a Header, 
//typically contains a few paragraphs

````
````VB.NET
Dim header As New Header() With {.Body = radDocument, .IsLinkedToPrevious = False} 'radDocument is an instance of RadDocument, representing the content of a Header,
'typically contains a few paragraphs

````

{{endregion}} 

When it comes to using a Header created in this manner, this depends on the state of the document - if it has been measured or not.

* In a non-measured document, which you are building in code-behind, you can set the Default page Header of a section in the following way:

{{source=..\SamplesCS\RichTextEditor\Features\HeadersAndFooters.cs region=section}} 
{{source=..\SamplesVB\RichTextEditor\Features\HeadersAndFooters.vb region=section}} 

````C#
section.Headers.Default = header;

````
````VB.NET
section.Headers.Default = header

````

{{endregion}} 


* In a measured document (a document that has been previewed in the editor), you can change the Default page header of the first section like this:

{{source=..\SamplesCS\RichTextEditor\Features\HeadersAndFooters.cs region=editor}} 
{{source=..\SamplesVB\RichTextEditor\Features\HeadersAndFooters.vb region=editor}} 

````C#
this.radRichTextEditor1.UpdateHeader(this.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, header);

````
````VB.NET
Me.radRichTextEditor1.UpdateHeader(Me.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, header)

````

{{endregion}} 


All header/footer types - Default, First and Even are set identically. The only thing you should add when you set the First or Even Header/Footer of the document, is to set the property of the section that notifies the document to use different Header/Footer than the default one using one of the following properties:
        
{{source=..\SamplesCS\RichTextEditor\Features\HeadersAndFooters.cs region=first}} 
{{source=..\SamplesVB\RichTextEditor\Features\HeadersAndFooters.vb region=first}} 

````C#
this.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = true;
//or
this.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = true;

````
````VB.NET
Me.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = True
'or
Me.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = True

````

{{endregion}} 



Setting the Footers can be done in the same way. Here is the respective code for footers:
        

* Creating a Footer:

{{source=..\SamplesCS\RichTextEditor\Features\HeadersAndFooters.cs region=footer}} 
{{source=..\SamplesVB\RichTextEditor\Features\HeadersAndFooters.vb region=footer}} 

````C#
Footer footer = new Footer() { Body = radDocument, IsLinkedToPrevious = false }; //radDocument is an instance of RadDocument, representing the content of the footer

````
````VB.NET
Dim footer As New Footer() With {.Body = radDocument, .IsLinkedToPrevious = False} 'radDocument is an instance of RadDocument, representing the content of the footer

````

{{endregion}} 


* Setting the Footer to be used in a particular section:

* In a non-measured document:

{{source=..\SamplesCS\RichTextEditor\Features\HeadersAndFooters.cs region=footersection}} 
{{source=..\SamplesVB\RichTextEditor\Features\HeadersAndFooters.vb region=footersection}} 

````C#
section.Footers.Default = footer;

````
````VB.NET
section.Footers.Default = footer

````

{{endregion}} 


* In a measured document:

{{source=..\SamplesCS\RichTextEditor\Features\HeadersAndFooters.cs region=update}} 
{{source=..\SamplesVB\RichTextEditor\Features\HeadersAndFooters.vb region=update}} 

````C#
this.radRichTextEditor1.UpdateFooter(this.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, footer);

````
````VB.NET
Me.radRichTextEditor1.UpdateFooter(Me.radRichTextEditor1.Document.Sections.First, HeaderFooterType.Default, footer)

````

{{endregion}} 


As for setting different footers for the first page or the even page, this is done by passing the respective parameter to the UpdateFooter method - HeaderFooterType. First or HeaderFooterType.Even and setting the corresponding property of the document/editor:

{{source=..\SamplesCS\RichTextEditor\Features\HeadersAndFooters.cs region=even}} 
{{source=..\SamplesVB\RichTextEditor\Features\HeadersAndFooters.vb region=even}} 

````C#
this.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = true;
//or
this.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = true;

````
````VB.NET
Me.radRichTextEditor1.Document.Sections.First.HasDifferentFirstPageHeaderFooter = True
'or
Me.radRichTextEditor1.Document.HasDifferentEvenAndOddHeadersFooters = True

````

{{endregion}} 




## Disabling Headers and Footers

Headers and footers are only present in Paged layout mode, so the easiest way to remove them is to change the layout mode. In case you wish to show documents in paged mode and still disable headers and footers, you can do so by removing the UI layer responsible for their visualization - __HeaderFooterLayer__.
        

>tip The concept of UI layers and their usage are explained in [this article]({%slug winforms/richtexteditor-/how-to/customize-presentation-through-ui-layers%}).
>

{{source=..\SamplesCS\RichTextEditor\Features\HeadersAndFooters.cs region=custom}} 
{{source=..\SamplesVB\RichTextEditor\Features\HeadersAndFooters.vb region=custom}} 

````C#
class CustomUILayerBuilder : UILayersBuilder
{
    protected override void BuildUILayersOverride(IUILayerContainer uiLayerContainer)
    {
        base.BuildUILayersOverride(uiLayerContainer);
        uiLayerContainer.UILayers.Remove(DefaultUILayers.HeaderFooterLayer);
    }
}

````
````VB.NET
Friend Class CustomUILayerBuilder
    Inherits UILayersBuilder
    Protected Overrides Sub BuildUILayersOverride(ByVal uiLayerContainer As IUILayerContainer)
        Me.BuildUILayersOverride(uiLayerContainer)
        uiLayerContainer.UILayers.Remove(DefaultUILayers.HeaderFooterLayer)
    End Sub
End Class

````

{{endregion}} 


# See Also

 * [RadDocument]({%slug winforms/richtexteditor-/document-elements/raddocument%})

 * [Selection]({%slug winforms/richtexteditor-/features/selection%})

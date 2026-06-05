---
title: Headers and Footers
page_title: Headers and Footers - WinForms RichTextEditor Control
description: WinForms RichTextEditor supports Headers and Footers in its document when in Paged layout mode.
slug: winforms/richtexteditor-/features/headers-and-footers
tags: headers,and,footers
published: True
position: 9
previous_url: richtexteditor-features-headers-and-footers
---

# Headers and Footers

__RadRichTextEditor__ supports **Headers** and **Footers** in its document when in *Paged* [layout mode]({%slug winforms/richtexteditor-/document-elements/raddocument%}).
      
>note Note that **Headers** and **Footers** are not persisted when exporting with **HtmlFormatProvider**. You can read more about this [here](https://docs.telerik.com/devtools/winforms/controls/richtexteditor/import-export/overview)
>

The topic contains the following sections:

* [Header Footer Types](#header-footer-types)

* [Customizing Headers And Footers](#customizing-headers-and-footers)

* [Disabling Headers and Footers](#disabling-headers-and-footers)

## Header Footer Types

The **Headers** and **Footers** are properties of a **Section** and each section in the document can have the following types of Headers and Footers:

* __Default__ - used all through the section;
            
* __First__ - used on the first page of the section only;
            
* __Even__ - to be used on every even page.
            
## Customizing Headers And Footers

Here is an example how you can create a **Header**: 

<snippet id='richtexteditor-headersandfooters-header-cs' />
<snippet id='richtexteditor-headersandfooters-header-vb' />



When it comes to using a **Header** created in this manner, this depends on the state of the document - if it has been measured or not.

* In a non-measured document, which you are building in code-behind, you can set the Default page **Header** of a section in the following way:

<snippet id='richtexteditor-headersandfooters-section-cs' />
<snippet id='richtexteditor-headersandfooters-section-vb' />



* In a measured document (a document that has been previewed in the editor), you can change the *Default* page header of the first section like this:

<snippet id='richtexteditor-headersandfooters-editor-cs' />
<snippet id='richtexteditor-headersandfooters-editor-vb' />



All header/footer types - *Default*, *First* and *Even* are set identically. The only thing you should add when you set the *First* or *Even* **Header**/**Footer** of the document, is to set the property of the section that notifies the document to use different **Header**/**Footer** than the default one using one of the following properties:
        
<snippet id='richtexteditor-headersandfooters-first-cs' />
<snippet id='richtexteditor-headersandfooters-first-vb' />



Setting the **Footers** can be done in the same way. Here is the respective code for footers:

* Creating a Footer:

<snippet id='richtexteditor-headersandfooters-footer-cs' />
<snippet id='richtexteditor-headersandfooters-footer-vb' />



* Setting the **Footer** to be used in a particular section:

* In a non-measured document:

<snippet id='richtexteditor-headersandfooters-footersection-cs' />
<snippet id='richtexteditor-headersandfooters-footersection-vb' />



* In a measured document:

<snippet id='richtexteditor-headersandfooters-update-cs' />
<snippet id='richtexteditor-headersandfooters-update-vb' />



As for setting different footers for the first page or the even page, this is done by passing the respective parameter to the **UpdateFooter** method - **HeaderFooterType**. *First* or HeaderFooterType.*Even* and setting the corresponding property of the document/editor:

<snippet id='richtexteditor-headersandfooters-even-cs' />
<snippet id='richtexteditor-headersandfooters-even-vb' />



## Disabling Headers and Footers

**Headers** and **Footers** are only present in *Paged* layout mode, so the easiest way to remove them is to change the layout mode. In case you wish to show documents in paged mode and still disable headers and footers, you can do so by removing the UI layer responsible for their visualization - __HeaderFooterLayer__.
        
>tip The concept of UI layers and their usage are explained in [this article](https://docs.telerik.com/devtools/winforms/controls/richtexteditor/how-to/customize-presentation-through-ui-layers).
>

<snippet id='richtexteditor-headersandfooters-custom-cs' />
<snippet id='richtexteditor-headersandfooters-custom-vb' />



# See Also

 * [RadDocument]({%slug winforms/richtexteditor-/document-elements/raddocument%})

 * [Selection]({%slug winforms/richtexteditor-/features/selection%})

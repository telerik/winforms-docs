---
title: Annotations
page_title: Annotations - WinForms PdfViewer Control
description: WinForms PdfViewer supports Link annotations, which means that if you open a PDF file that includes hyperlinks to absolute URIs, you can click them and have a window open, navigate to the respective address.
components: ["pdfviewer"]
slug: winforms/pdfviewer/annotations
tags: annotations
published: True
position: 0
---

# Annotations

__RadPdfViewer__ supports link annotations. External URI annotations open only when the destination passes both link-format and URI-scheme validation, or an application handler explicitly approves it. The default allowed schemes are `http`, `https`, and `mailto`. Links pointing to destinations in the same PDF document scroll the viewport internally.

The current API includes the following members, which allow customization of the default behavior or implementation of custom logic:

* __AnnotationClicked__ event of __RadPdfViewer__: This event is fired when you click on an annotation such as a hyperlink. It comes in handy when you want to detect or even cancel the opening of a web page. The __AnnotationEventArgs__ contains the Annotation as property and the Link itself has information of its Action, i.e. if it is a UriAction. Handling the event in the following manner will not only show the Uri of each clicked link as the text of a MessageBox but will also cancel the default behavior.

#### AnnotationClicked Event Handler

<snippet id='pdfviewer-pdfannotations-annotationclicked-cs' />
<snippet id='pdfviewer-pdfannotations-annotationclicked-vb' />



* `RadPdfViewer.HyperlinkClicked` is raised for URI annotation navigation. It uses `Telerik.WinControls.Hyperlinks.HyperlinkClickedEventArgs`, which exposes `URL`, `IsTrustedUrl`, and `Handled`. Set `IsTrustedUrl` to `true` only after applying your own destination validation. Set `Handled` to `true` to replace or suppress navigation.

If the local event leaves the request unhandled, `HyperlinkHelper.HyperlinkClicked` runs next. An unhandled request whose final `IsTrustedUrl` is `false` displays the localized invalid-link message. Setting `Handled` to `true` suppresses both the launch and the message. FTP, file/UNC, OneNote, and custom-protocol destinations are not automatically approved. See [shared hyperlink validation]({%slug winforms/telerik-presentation-framework/html-like-text-formatting%}#shared-hyperlink-validation) for the default policy and [handling links across controls]({%slug winforms/telerik-presentation-framework/html-like-text-formatting%}#handling-links-across-controls) for a global approval example.

The following example prompts the user before continuing navigation:

#### HyperlinkClicked Event Handler 

<snippet id='pdfviewer-pdfannotations-hyperlinkclicked-cs' />
<snippet id='pdfviewer-pdfannotations-hyperlinkclicked-vb' />



* __Annotations__ property of __RadFixedDocument__ – A collection which returns all annotations in the document. For example, you can retrieve all links using the following code:

#### Get Annotation Links

<snippet id='pdfviewer-pdfannotations-getalllinks-cs' />
<snippet id='pdfviewer-pdfannotations-getalllinks-vb' />



The bookmarks in terms of “docx bookmarks” are not explicitly saved in PDF files. They are persisted only if there are Link annotations to them, so you can use the snippet below to retrieve all destinations that have links to them:

#### Get Annotation Bookmarks

<snippet id='pdfviewer-pdfannotations-bookmarks-cs' />
<snippet id='pdfviewer-pdfannotations-bookmarks-vb' />



In this way, creating some UI containing all bookmarks would be possible. Then, you could implement the same action as the one being executed when a hyperlink is clicked, i.e. scroll the document to the specific place in the document where the destination of the link is placed. The following code can be used for this purpose – navigating to a specific destination:

#### Navigate to Destination

<snippet id='pdfviewer-pdfannotations-gotodestination-cs' />
<snippet id='pdfviewer-pdfannotations-gotodestination-vb' />



## See Also

* [Getting Started]({%slug winforms/pdfviewer/getting-started%})
* [Logical Structure]({%slug winforms/pdfviewer/structure/logical-structure%})
* [Visual Structure]({%slug winforms/pdfviewer/structure/visual-structure%})
* [Properties, Methods and Events]({%slug winforms/pdfviewer/properties-methods-and-events%})

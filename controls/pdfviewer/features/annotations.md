---
title: Annotations
page_title: Annotations - WinForms PdfViewer Control
description: WinForms PdfViewer supports Link annotations, which means that if you open a PDF file that includes hyperlinks to absolute URIs, you can click them and have a window open, navigate to the respective address.
slug: winforms/pdfviewer/annotations
tags: annotations
published: True
position: 0
---

# Annotations

__RadPdfViewer__ supports link annotations, which means that if you open a PDF file that includes hyperlinks to absolute URIs, you can click them and have a window open, and navigate to the respective address. In addition, if there are links pointing to bookmarks in the same document, the view port will be scrolled to the destination specified in the link.

The current API includes the following members, which allow customization of the default behavior or implementation of custom logic:

* __AnnotationClicked__ event of __RadPdfViewer__: This event is fired when you click on an annotation such as a hyperlink. It comes in handy when you want to detect or even cancel the opening of a web page. The __AnnotationEventArgs__ contains the Annotation as property and the Link itself has information of its Action, i.e. if it is a UriAction. Handling the event in the following manner will not only show the Uri of each clicked link as the text of a MessageBox but will also cancel the default behavior.

#### AnnotationClicked Event Handler

<snippet id='pdfviewer-pdfannotations-annotationclicked-cs' />
<snippet id='pdfviewer-pdfannotations-annotationclicked-vb' />



* __HyperlinkClicked__ event of RadPdfViewer: This event is similar to AnnotationClicked, but it is raised only when you click on the hyperlink type annotations. It allows you to cancel the navigation to the associated URI or to modify the click action. The HyperlinkClickedEventArgs gives access to the URL, which can be manually checked if it is trusted. With the 2024 Q3 (2024.3.924), the default navigation behavior of the hyperlinks is to automatically open only valid and trusted addresses. If needed, the navigation can be canceled by either setting the __Handled__ property of the event args to _true_ or the __IsTrustedUrl__ property to _false_. Below is an example of using this event to prompt that the clicked hyperlink might be unsafe and provide the opportunity to cancel the navigation process upon receiving the end user confirmation:

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

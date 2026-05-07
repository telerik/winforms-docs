---
title: Hyperlink
page_title: Hyperlink - WinForms RichTextEditor Control
description: WinForms RichTextEditor supports having a hyperlink span several paragraphs and being able to embed all kinds of elements inside hyperlinks, e.g. images, tables, and table elements.
slug: winforms/richtexteditor-/features/hyperlink
tags: hyperlink
published: True
position: 9
previous_url: richtexteditor-features-hyperlink
---

# Hyperlink

The following functionality is supported in the __RadRichTextEditor__:

* having a hyperlink span several paragraphs;

* being able to embed all kinds of elements inside hyperlinks, e.g. images, tables, and table elements;

* making bookmarks in the document the targets of hyperlinks.

The classes that encapsulate the functionality of hyperlinks are [HyperlinkInfo](#hyperlinkinfo),[HyperlinkRangeStart and HyperlinkRangeEnd](#hyperlinkrangestart-and-hyperlinkrangeend).      

[Other customization options](#other-customization-options) include setting the tooltip format and detecting the click of hyperlinks.
      
## HyperlinkInfo

More often than not, you would only need to use objects of type **HyperlinkInfo**. **HyperlinkInfo** objects have the following properties:

* **IsAnchor** - a Boolean property determining if the hyperlink points to a URL or a bookmark;

* **NavigateUri** - the URI of the hyperlink;

* **Target** - determines if the link should be opened in another window (if set to HyperlinkTargets.*Blank*) or in the same frame (HyperlinkTargets.*Self*).

For example, a link to our site can be inserted in the document programmatically as follows:

<snippet id='richtexteditor-hyperlinkcode-insert-cs' />
<snippet id='richtexteditor-hyperlinkcode-insert-vb' />



A link to a bookmark is inserted by specifying the bookmark's name as **NavigateUri** and setting the **IsAnchor** property to *true*:

<snippet id='richtexteditor-hyperlinkcode-remove-cs' />
<snippet id='richtexteditor-hyperlinkcode-remove-vb' />



You can also use the overloaded methods for inserting a hyperlink:

* public void __InsertHyperlink__(HyperlinkInfo hyperlinkInfo, string hyperlinkText, StyleDefinition hyperlinkStyle) - insert a hyperlink using a custom style, different from the default blue font color and single underline;
            
* public void __InsertHyperlink__(HyperlinkInfo hyperlinkInfo, IEnumerable&lt;Inline&gt; inlines) - insert a hyperlink which spans several different adjacent inlines, e.g. part of the hyperlink text is bold or there is an image inside the hyperlink;            

* public void __InsertHyperlink__(HyperlinkInfo hyperlinkInfo) - create a hyperlink from the currently selected part of the document;
            
* public void __InsertHyperlink__(HyperlinkInfo hyperlinkInfo, StyleDefinition hyperlinkStyle) - create a hyperlink from the currently selected part of the document and change the style of the text to the style passed as second argument.

Removing a hyperlink (and keeping the part of the document that the hyperlink spanned) can be done by positioning the caret in the hyperlink and invoking:

<snippet id='richtexteditor-hyperlinkcode-remove-cs' />
<snippet id='richtexteditor-hyperlinkcode-remove-vb' />



## HyperlinkRangeStart and HyperlinkRangeEnd

**HyperlinkRangeStart** and **HyperlinkRangeEnd** are **Inline** DocumentElements and can be added to the inlines of a document, if you are building the contents of a **RadDocument** in code-behind.
        
Here is an example that creates a document with a hyperlink spanning several paragraphs, including an image in one of the paragraphs:

<snippet id='richtexteditor-hyperlinkcode-startend-cs' />
<snippet id='richtexteditor-hyperlinkcode-startend-vb' />



The result (`Ctrl` + `Click` to follow):

![WinForms RadRichTextEditor Hyperlink Review](images/richtexteditor-features-hyperlink001.png)

You will also need to use **HyperlinkRangeStart** and **HyperlinkRangeEnd**, if you are using hyperlinks for the implementation of custom logic and want to get all hyperlinks from the document, manipulate the properties of the **HyperlinkInfo** or the whole part of the document that is included in the hyperlink.
        
For instance, here is how you can delete all hyperlinks in the document and replace them with some text:

<snippet id='richtexteditor-hyperlinkcode-delete-cs' />
<snippet id='richtexteditor-hyperlinkcode-delete-vb' />



## Other Customization Options

### ToolTip

By default, hyperlinks take a fixed string as a tooltip. The default format is:

>note "{0}{1} to follow link" - The first parameter is the URL, and the second is "Ctrl + Click" which is taken from the localization file.  
>

You have control over it using the __HyperlinkToolTipFormatString__ of **RadRichTextEditor**, which will set the format for all hyperlinks in the document.
        
### HyperlinkClicked event

When a hyperlink is clicked, the __HyperlinkClicked__ event of __RadRichTextEditor__ is fired. The sender of the event is the document element, that you have clicked, e.g. a **Span**, an **Image**, **InlineUIContainer**, etc. The __HyperlinkClickedEventArgs__ provides the possibility either to cancel or replace the navigation action. This is helpful when you need to validate the clicked hyperlink and prevent it from navigating to an unsecured address or from starting a local process.

With the 2024 Q3 (2024.3.924), the default navigation behavior of the hyperlinks is to automatically open only valid and trusted addresses. The hyperlink navigation can be canceled by either setting the __Handled__ property of the HyperlinkClickedEventArgs to _true_ or __IsTrustedUrl__ to _false_.

Here is an example of using the HyperlinkClicked event prompting that the clicked hyperlink might be unsafe and allows to cancel the navigation process upon receiving the end user confirmation:

<snippet id='richtexteditor-hyperlinkcode-hyperlinkclickedevent-cs' />
<snippet id='richtexteditor-hyperlinkcode-hyperlinkclickedevent-vb' />



### HyperlinkNavigationMode

The __HyperlinkNavigationMode__ allows you to control what action should trigger the opening of a hyperlink. The possible options are:

* **CtrlClick**: Triggers the hyperlink when users hold the Ctrl key and click on the hyperlink.
* **Click**: Triggers the hyperlink when users click on the hyperlink.

Below is demonstrated how to change the default hyperlink navigation mode:

<snippet id='richtexteditor-hyperlinkcode-hyperlinkmode-cs' />
<snippet id='richtexteditor-hyperlinkcode-hyperlinkmode-vb' />



## See Also

 * [Document Elements]({%slug winforms/richtexteditor-/document-elements%})

 * [RadDocument]({%slug winforms/richtexteditor-/document-elements/raddocument%})

 * [Inline Image]({%slug winforms/richtexteditor-/document-elements/inline-image%})

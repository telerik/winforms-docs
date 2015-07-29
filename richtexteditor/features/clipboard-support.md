---
title: Clipboard Support
page_title: Clipboard Support | UI for WinForms Documentation
description: Clipboard Support
slug: winforms/richtexteditor-/features/clipboard-support
tags: clipboard,support
published: True
position: 5
---

# Clipboard Support



__RadRichTextEditor__ takes advantage of the clipboard support in WinForms. As the clipboard keeps content in several formats, it is possible to choose which input to use  and further customize the way the text will look when pasted.
        

## Methods and Commands

__RadRichTextEditor's__ API exposes a method and a command for each of the three actions that can be performed against the clipboard:  Cut, Copy and Paste. They can be invoked as follows:

{{source=..\SamplesCS\RichTextEditor\Features\ClipboardSupport.cs region=clipboard}} 
{{source=..\SamplesVB\RichTextEditor\Features\ClipboardSupport.vb region=clipboard}} 

````C#
            
            this.radRichTextEditor1.Copy();
            this.radRichTextEditor1.Cut();
            this.radRichTextEditor1.Paste();
````
````VB.NET

        Me.radRichTextEditor1.Copy()
        Me.radRichTextEditor1.Cut()
        Me.radRichTextEditor1.Paste()

        '
````

{{endregion}}

## Settings

By default the __PasteCommand__ of the editor uses its __RtfFormatProvider__ and  __HtmlFormatProvider__ in order to create a RadDocument out of the document in the clipboard and insert it in the current document.The PasteCommand tries to create a document out of the RTF content of the clipboard. If it fails for some reason (e.g. the RTF is invalid or not supported by RtfFormatProvider), the paste falls back to HTML. In case HtmlFormatProvider cannot handle the clipboard content as well, the plain text from the clipboard will be inserted in the document.
          
You can customize this behavior by removing or reordering the clipboard handlers for the different formats.

Each Clipboard Handler contains the following properties:

* __DocumentFormatProvider__ – the format provider used to import the data in the clipboard, e.g. HtmlFormatProvider or RtfFormatProvider;

* __ClipboardDataFormat__ – the format of the data (DataFormats.Html or DataFormats.Rtf);

* __ClipboardStringFilter__ – a filter used to preprocess the data if needed. For example, the HTML that Word puts in the clipboard contains some headings which should be stripped in order to acquire the clean HTML content before passing it to a format provider. Such a filter is ClipboardEx.StripHtmlClipboardFormatHeaders, but you can also pass any Func<string, string>.
              

For instance, here is how you can clear the default clipboard handlers and add only a handler which uses __TxtFormatProvider__. In this way only plain text will be pasted when you copy from a source such as another rich text editor or a browser.

{{source=..\SamplesCS\RichTextEditor\Features\ClipboardSupport.cs region=ex}} 
{{source=..\SamplesVB\RichTextEditor\Features\ClipboardSupport.vb region=ex}} 

````C#
            
            ClipboardEx.ClipboardHandlers.Clear();

            ClipboardHandler clipboardHandler = new ClipboardHandler();
            clipboardHandler.ClipboardDataFormat = DataFormats.Text;
            clipboardHandler.DocumentFormatProvider = new TxtFormatProvider();
    
            ClipboardEx.ClipboardHandlers.Add(clipboardHandler);
````
````VB.NET

        ClipboardEx.ClipboardHandlers.Clear()

        Dim clipboardHandler As New ClipboardHandler()
        clipboardHandler.ClipboardDataFormat = DataFormats.Text
        clipboardHandler.DocumentFormatProvider = New TxtFormatProvider()

        ClipboardEx.ClipboardHandlers.Add(clipboardHandler)

        '
````

{{endregion}} 


You can also reorder the clipboard handlers to use first HTML paste and fallback to RTF instead of the other way around, or attach to different events of the format providers.

## Key Bindings

>tip In order to copy, paste or cut, the standard keyboard shortcuts can also be used - __Ctrl + C__ , __Ctrl + V__ , __Ctrl + X__ .
>


To learn more about the default key-bindings of the editor and ways to override them, you can refer to this article: [Keyboard Support]({%slug winforms/richtexteditor-/keyboard-support%})

# See Also

 * [Formatting API]({%slug winforms/richtexteditor-/getting-started/formatting-api%})

 * [Layout Modes]({%slug winforms/richtexteditor-/getting-started/layout-modes%})

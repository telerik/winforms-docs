---
title: Paste Plain Text in RadRichTextBoxEditor
description: Debugging with the source code allows you to examine the source and find the root of the issues
type: how-to
page_title: Paste Plain Text in RadRichTextBoxEditor
slug: paste-plain-text
position: 0
tags: richtexteditor, paste, plain, text 
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2018.3.1016|RadRichTextEditor for WinForms|[Dimitar Karamfilov](https://www.telerik.com/blogs/author/dimitar-karamfilov)|



## Description

When copying text from various sources the formatting is copied as well, the content may not look the same when pasted. For example when pasting from an HTML page. The below example demonstrates how you can intercept the paste command and strip all the styles. 

## Solution

The code below shows how you can intercept the paste command and replace the contents with plain text. 

#### Paste plain text

````C#

public RadForm1()
{
    InitializeComponent();
    radRichTextEditor1.CommandExecuting += RadRichTextEditor1_CommandExecuting;
}
 
private void RadRichTextEditor1_CommandExecuting(object sender, Telerik.WinForms.Documents.RichTextBoxCommands.CommandExecutingEventArgs e)
{
    if (e.Command is PasteCommand && pasteTextOnly)
    {
        e.Cancel = true;
        PasteNewText();
        pasteTextOnly = false;
 
    }
}
 
bool pasteTextOnly = false;
private void button1_Click(object sender, EventArgs e)
{
    pasteTextOnly = true;
    this.radRichTextEditor1.RichTextBoxElement.Commands.PasteCommand.Execute();
}
TxtFormatProvider provider = new TxtFormatProvider();
public void PasteNewText()
{
    DocumentFragment clipboardDocument = null;
    string clipboardText = null;
    bool clipboardContainsData = false;
 
    if (ClipboardEx.ContainsDocument(null))
    {
        clipboardDocument = ClipboardEx.GetDocument();
        clipboardContainsData = true;
    }
    else if (ClipboardEx.ContainsText(null))
    {
        clipboardText = ClipboardEx.GetText(null);
        clipboardContainsData = true;
    }
 
    if (!clipboardContainsData)
    {
        return;
    }
 
    if (clipboardDocument != null)
    {
        RadDocument doc = new RadDocument();
        RadDocumentEditor editor = new RadDocumentEditor(doc);
        editor.InsertFragment(clipboardDocument);
 
        string text = provider.Export(doc);
 
        this.radRichTextEditor1.RichTextBoxElement.ActiveDocumentEditor.Insert(text);
    }
    else if (!string.IsNullOrEmpty(clipboardText))
    {
        this.radRichTextEditor1.RichTextBoxElement.ActiveDocumentEditor.Insert(clipboardText);
    }
}

````


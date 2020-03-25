---
title: How to Save Document in SyntaxEditor
description: This article shows how you can a document in RadSyntaxEditor.
type: how-to
page_title: How to Save Document in SyntaxEditor
slug: save-document-in-syntax-editor
position: 0
tags: save, syntaxeditor
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2020.1.218|RadSyntaxEditor for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 

## Description

**RadSyntaxEditor** is purposed to provide editing options for a document loaded in the control. A common requirement is to save the changes that have been made to the document. 

## Solution 

This solution demonstrates how to get very easily the document's content by using the [selection]({%slug syntax-editor-features-selection%}) functionality and write the content to a file:


````C#

public RadForm1()
{
    InitializeComponent();
    using (StreamReader Reader = new StreamReader(@"..\..\Sample.cs"))
    {
        this.radSyntaxEditor1.Document = new TextDocument(Reader);
    }
}

private void radButton1_Click(object sender, EventArgs e)
{
    this.radSyntaxEditor1.SelectAll();
    string selectedText = this.radSyntaxEditor1.SyntaxEditorElement.Selection.GetSelectedText();
    string fileName = @"..\..\FILENAME.txt";
    if (!File.Exists(fileName))
    {
        File.Create(fileName).Close();
        using (StreamWriter sw = File.AppendText(fileName))
        {
            sw.WriteLine(selectedText);
        }
    }
    else
    {
        File.WriteAllText(fileName, string.Empty);
        using (StreamWriter sw = File.AppendText(fileName))
        {
            sw.WriteLine(selectedText);
        }
    }
}
    

````
````VB.NET

Sub New()
    InitializeComponent()

    Using Reader As StreamReader = New StreamReader("..\..\Sample.cs")
        Me.RadSyntaxEditor1.Document = New TextDocument(Reader)
    End Using
End Sub
Private Sub RadButton1_Click(sender As Object, e As EventArgs) Handles RadButton1.Click
    Me.RadSyntaxEditor1.SelectAll()
    Dim selectedText As String = Me.RadSyntaxEditor1.SyntaxEditorElement.Selection.GetSelectedText()
    Dim fileName As String = "..\..\FILENAME.txt"
    If Not File.Exists(fileName) Then
        File.Create(fileName).Close()
        Using sw As StreamWriter = File.AppendText(fileName)
            sw.WriteLine(selectedText)
        End Using
    Else
        File.WriteAllText(fileName, String.Empty)
        Using sw As StreamWriter = File.AppendText(fileName)
            sw.WriteLine(selectedText)
        End Using
    End If
End Sub    

````


# See Also

* [Getting Started]({%slug syntax-editor-getting-started%}) 
* [Selection]({%slug syntax-editor-features-selection%})



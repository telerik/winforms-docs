---
title: Search
page_title: Search | UI for WinForms Documentation
description: Search
slug: winforms/richtextbox-(obsolete)/features/search
tags: search
published: True
position: 4
previous_url: richtextbox-features-search
---

# Search



## 

RadRichTextBox supports searching the contents of the document along with providing some methods for manipulating the selection. Used in combination, they become quite a powerful tool enabling scenarios like highlighting of specific parts of the document or replacing words and collocations.

>note To learn more about the selection API read the[Selection]({%slug winforms/richtextbox-(obsolete)/features/selection%})topic.
>

The simplest scenario – finding a string in the content of the document can be implemented with the following code:

#### Select all matches

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxSearch.cs region=SelectAllMatches}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxSearch.vb region=SelectAllMatches}} 

````C#
private void SelectAllMatches(string toSearch)
{
    this.radRichTextBox1.Document.Selection.Clear(); // this clears the selection before processing
    DocumentTextSearch search = new DocumentTextSearch(this.radRichTextBox1.Document);
    foreach (var textRange in search.FindAll(toSearch))
    {
        this.radRichTextBox1.Document.Selection.AddSelectionStart(textRange.StartPosition);
        this.radRichTextBox1.Document.Selection.AddSelectionEnd(textRange.EndPosition);
    }
}

````
````VB.NET
Private Sub SelectAllMatches(ByVal toSearch As String)
    Me.RadRichTextBox1.Document.Selection.Clear() ' this clears the selection before processing
    Dim search As New DocumentTextSearch(Me.RadRichTextBox1.Document)
    For Each textRange In search.FindAll(toSearch)
        Me.RadRichTextBox1.Document.Selection.AddSelectionStart(textRange.StartPosition)
        Me.RadRichTextBox1.Document.Selection.AddSelectionEnd(textRange.EndPosition)
    Next textRange
End Sub

````

{{endregion}}

>note Note that the __FindAll()__ method of the __DocumentTextSearch__ class takes a string as an argument, but regards it as a regular expression. For example, searching “ __[a-z]*control[a-z]*__ ”will find all words that contain the word “ __control__ ” as a substring. Thus, if you have the word “ __RadControls__ ” in the document, executing the __SelectAllMatches(“control”)__ will result in only these six letters being selected, as opposed to the whole word “ __RadControls__ ” being selected when __SelectAllMatches(“[a-z]*control[a-z]*”)__ .
>

You can use all kind of regular expressions, such as “__(asp|silverlight)\s*control(s)?__” (which would match both “__ASP Controls__” and “__SilverlightControl__”), __[a-z]*(.)\1[a-z]*__ (which finds all words that have a doubled letter), and basically everything else you can come up with. Make sure to use correct expressions if you want to utilize this functionality, or escape the string in case you want a simple search for a word that can contain special symbols like “__?__”, “__+__”, “__{__“ etc. This can be automatically done by invoking the following code before proceeding with the search.

#### Escape string

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxSearch.cs region=escape}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxSearch.vb region=escape}} 

````C#
toSearch = Regex.Escape(toSearch);

````
````VB.NET
toSearch = Regex.Escape(toSearch)

````

{{endregion}}

Selecting the results of the search is particularly useful, as most formatting commands that are executed on RadRichTextBox (or its document) are selection-based, i.e. they operate on the currently selected parts of the document. You can use that fact by invoking one of these commands after having selected the words in the document. Here is an example.

#### Customize selection

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxSearch.cs region=modifySelection}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxSearch.vb region=modifySelection}} 

````C#
this.radRichTextBox1.ChangeTextHighlightColor(Color.LightGray);  // will highlight all selected words in LightGray
this.radRichTextBox1.ChangeFontSize(Unit.PointToDip(32));   // will increase the font size of the words to 30 DIP
this.radRichTextBox1.ChangeFontFamily("Comic Sans MS"); // will change the font family of the spans, containing these words.

````
````VB.NET
Me.RadRichTextBox1.ChangeTextHighlightColor(Color.LightGray) ' will highlight all selected words in LightGray
Me.RadRichTextBox1.ChangeFontSize(Unit.PointToDip(32)) ' will increase the font size of the words to 30 DIP
Me.RadRichTextBox1.ChangeFontFamily("Comic Sans MS") ' will change the font family of the spans, containing these words.

````

{{endregion}}

Most of the time, you would like to remove the selection at the end of the operations, which is done by calling the __Clear()__ method of the __DocumentSelection__ object.

#### Clear selection

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxSearch.cs region=clearSelection}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxSearch.vb region=clearSelection}} 

````C#
this.radRichTextBox1.Document.Selection.Clear();

````
````VB.NET
Me.RadRichTextBox1.Document.Selection.Clear()

````

{{endregion}}

>warning You should have in mind that performing these actions in __DocumentContentChanged__ event handler will not only raise performance issues, but will also produce an infinite loop, as the changes of the formatting are also considered document changes.
>

On a side note, the find and select functionality can be extended in order to implement a replace of all occurrences matching the searched string with another string. Here is a sample code:

#### Replace all matches

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxSearch.cs region=ReplaceAllMatches}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxSearch.vb region=ReplaceAllMatches}} 

````C#
private void ReplaceAllMatches(string toSearch, string toReplaceWith)
{
    this.radRichTextBox1.Document.Selection.Clear(); // this clears the selection before processing
    DocumentTextSearch search = new DocumentTextSearch(this.radRichTextBox1.Document);
    List<TextRange> rangesTrackingDocumentChanges = new List<TextRange>();
    foreach (var textRange in search.FindAll(toSearch))
    {
        TextRange newRange = new TextRange(new DocumentPosition(textRange.StartPosition, true), new DocumentPosition(textRange.EndPosition, true));
        rangesTrackingDocumentChanges.Add(newRange);
    }
    foreach (var textRange in rangesTrackingDocumentChanges)
    {
        this.radRichTextBox1.Document.Selection.AddSelectionStart(textRange.StartPosition);
        this.radRichTextBox1.Document.Selection.AddSelectionEnd(textRange.EndPosition);
        this.radRichTextBox1.Insert(toReplaceWith);
        textRange.StartPosition.Dispose();
        textRange.EndPosition.Dispose();
    }
}

````
````VB.NET
Private Sub ReplaceAllMatches(ByVal toSearch As String, ByVal toReplaceWith As String)
    Me.RadRichTextBox1.Document.Selection.Clear() ' this clears the selection before processing
    Dim search As New DocumentTextSearch(Me.RadRichTextBox1.Document)
    Dim rangesTrackingDocumentChanges As New List(Of TextRange)()
    For Each textRange In search.FindAll(toSearch)
        Dim newRange As New TextRange(New DocumentPosition(textRange.StartPosition, True), New DocumentPosition(textRange.EndPosition, True))
        rangesTrackingDocumentChanges.Add(newRange)
    Next textRange
    For Each textRange In rangesTrackingDocumentChanges
        Me.RadRichTextBox1.Document.Selection.AddSelectionStart(textRange.StartPosition)
        Me.RadRichTextBox1.Document.Selection.AddSelectionEnd(textRange.EndPosition)
        Me.RadRichTextBox1.Insert(toReplaceWith)
        textRange.StartPosition.Dispose()
        textRange.EndPosition.Dispose()
    Next textRange
End Sub

````

{{endregion}}

There is a need to create new __TextRanges__ with document positions that track the changes to the document, because the deletion and insertion affects the document positions. The document positions created using the 2-parameter constructor with the second parameter set to “*true*” keep their relative position as the document changes. They, however, have to be manually disposed of, as they subscribe to events in order to track the changes to the document and must detach their handlers at the end of their use. This is done using the __Dispose()__ method. If you skip that step, there will be memory leaks in your application.
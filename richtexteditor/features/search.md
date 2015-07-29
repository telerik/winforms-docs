---
title: Search
page_title: Search | UI for WinForms Documentation
description: Search
slug: winforms/richtexteditor-/features/search
tags: search
published: True
position: 2
---

# Search



## 

__RadRichTextEditor__ supports searching the contents of the document along with providing some methods for manipulating the selection. Used in combination, they become quite a powerful tool enabling scenarios like highlighting of specific parts of the document or replacing words and collocations.
        
>tip To learn more about the selection API read the[Selection]({%slug winforms/richtexteditor-/features/selection%})topic.
>

The simplest scenario – finding a string in the content of the document can be implemented with the following code:

{{source=..\SamplesCS\RichTextEditor\Features\Search.cs region=search}} 
{{source=..\SamplesVB\RichTextEditor\Features\Search.vb region=search}} 

````C#
                
        private void SelectAllMatches(string toSearch)
        {
            this.radRichTextEditor1.Document.Selection.Clear(); // this clears the selection before processing
            Telerik.WinForms.Documents.TextSearch.DocumentTextSearch search = new Telerik.WinForms.Documents.TextSearch.DocumentTextSearch(this.radRichTextEditor1.Document);
            foreach (var textRange in search.FindAll(toSearch))
            {
                this.radRichTextEditor1.Document.Selection.AddSelectionStart(textRange.StartPosition);
                this.radRichTextEditor1.Document.Selection.AddSelectionEnd(textRange.EndPosition);
            }
        }
````
````VB.NET

    Private Sub SelectAllMatches(ByVal toSearch As String)
        Me.radRichTextEditor1.Document.Selection.Clear() ' this clears the selection before processing
        Dim search As New Telerik.WinForms.Documents.TextSearch.DocumentTextSearch(Me.radRichTextEditor1.Document)
        For Each textRange In search.FindAll(toSearch)
            Me.radRichTextEditor1.Document.Selection.AddSelectionStart(textRange.StartPosition)
            Me.radRichTextEditor1.Document.Selection.AddSelectionEnd(textRange.EndPosition)
        Next textRange
    End Sub
````

{{endregion}} 

Note that the __FindAll()__ method of the DocumentTextSearch class takes a string as an argument, but regards it as a regular expression. For example, searching __“[a-z]*control[a-z]*”__ will find all words that contain the word "control" as a substring. Thus, if you have the word "Telerik UI" in the document, executing the __SelectAllMatches("control")__ will result in only these six letters being selected, as opposed to the whole word "Telerik UI" being selected when __SelectAllMatches("[a-z]*control[a-z]*")__.
        

You can use all kind of regular expressions, such as __"(asp|silverlight)\s*control(s)?"__ (which would match both "ASP Controls" and "SilverlightControl"), __[a-z]*(.)\1[a-z]*__ (which finds all words that have a doubled letter), and basically   everything else you can come up with. Make sure to use correct expressions if you want to utilize this functionality, or escape the string in case you want a simple search for a word that can contain special symbols like "?", "+", "{" etc. This can be automatically done by invoking the following code before proceeding with the search.

{{source=..\SamplesCS\RichTextEditor\Features\Search.cs region=regex}} 
{{source=..\SamplesVB\RichTextEditor\Features\Search.vb region=regex}} 

````C#
            string toSearch = "";

            toSearch = Regex.Escape(toSearch);
````
````VB.NET
        Dim toSearch As String = ""

        toSearch = Regex.Escape(toSearch)

        '
````

{{endregion}} 


Selecting the results of the search is particularly useful, as most formatting commands that are executed on __RadRichTextEditor__ (or its document) are selection-based, i.e. they operate on the currently selected parts of the document. You can use that fact by invoking one of these commands after having selected the words in the document. Here is an example.
 
{{source=..\SamplesCS\RichTextEditor\Features\Search.cs region=style}} 
{{source=..\SamplesVB\RichTextEditor\Features\Search.vb region=style}} 

````C#
            
            this.radRichTextEditor1.ChangeTextHighlightColor(Telerik.WinControls.RichTextEditor.UI.Colors.LightGray);  // will highlight all selected words in LightGray
            this.radRichTextEditor1.ChangeFontSize(Telerik.WinControls.RichTextBox.Model.Unit.PointToDip(32));   // will increase the font size of the words to 30 DIP
            this.radRichTextEditor1.ChangeFontFamily(new Telerik.WinControls.RichTextEditor.UI.FontFamily("Comic Sans MS")); // will change the font family of the spans, containing these words.
````
````VB.NET

        Me.radRichTextEditor1.ChangeTextHighlightColor(Telerik.WinControls.RichTextEditor.UI.Colors.LightGray) ' will highlight all selected words in LightGray
        Me.radRichTextEditor1.ChangeFontSize(Telerik.WinControls.RichTextBox.Model.Unit.PointToDip(32)) ' will increase the font size of the words to 30 DIP
        Me.radRichTextEditor1.ChangeFontFamily(New Telerik.WinControls.RichTextEditor.UI.FontFamily("Comic Sans MS")) ' will change the font family of the spans, containing these words.

        '
````

{{endregion}} 

Most of the time, you would like to remove the selection at the end of the operations, which is done by calling the __Clear()__ method of the __DocumentSelection__ object.

{{source=..\SamplesCS\RichTextEditor\Features\Search.cs region=clear}} 
{{source=..\SamplesVB\RichTextEditor\Features\Search.vb region=clear}} 

````C#
        
            this.radRichTextEditor1.Document.Selection.Clear();
````
````VB.NET

        Me.radRichTextEditor1.Document.Selection.Clear()

        '
````

{{endregion}} 

>caution You should have in mind that performing these actions in __DocumentContentChanged__ event handler will not only raise performance issues, but will also produce an infinite loop, as the changes of the formatting are also considered document changes.
>

On a side note, the find and select functionality can be extended in order to implement a replace of all occurrences matching the searched string with another string. Here is a sample code:

{{source=..\SamplesCS\RichTextEditor\Features\Search.cs region=allmatches}} 
{{source=..\SamplesVB\RichTextEditor\Features\Search.vb region=allmatches}} 

````C#
                
        private void ReplaceAllMatches(string toSearch, string toReplaceWith)
        {
            this.radRichTextEditor1.Document.Selection.Clear(); // this clears the selection before processing
            Telerik.WinForms.Documents.TextSearch.DocumentTextSearch search = new Telerik.WinForms.Documents.TextSearch.DocumentTextSearch(this.radRichTextEditor1.Document);
            List<Telerik.WinForms.Documents.TextSearch.TextRange> rangesTrackingDocumentChanges = new List<Telerik.WinForms.Documents.TextSearch.TextRange>();
            foreach (var textRange in search.FindAll(toSearch))
            {
                Telerik.WinForms.Documents.TextSearch.TextRange newRange = new Telerik.WinForms.Documents.TextSearch.TextRange(new Telerik.WinForms.Documents.DocumentPosition(textRange.StartPosition, true), new Telerik.WinForms.Documents.DocumentPosition(textRange.EndPosition, true));
                rangesTrackingDocumentChanges.Add(newRange);
            }
            foreach (var textRange in rangesTrackingDocumentChanges)
            {
                this.radRichTextEditor1.Document.Selection.AddSelectionStart(textRange.StartPosition);
                this.radRichTextEditor1.Document.Selection.AddSelectionEnd(textRange.EndPosition);
                this.radRichTextEditor1.Insert(toReplaceWith);
                textRange.StartPosition.Dispose();
                textRange.EndPosition.Dispose();
            }
        }
````
````VB.NET

    Private Sub ReplaceAllMatches(ByVal toSearch As String, ByVal toReplaceWith As String)
        Me.radRichTextEditor1.Document.Selection.Clear() ' this clears the selection before processing
        Dim search As New Telerik.WinForms.Documents.TextSearch.DocumentTextSearch(Me.radRichTextEditor1.Document)
        Dim rangesTrackingDocumentChanges As New List(Of Telerik.WinForms.Documents.TextSearch.TextRange)()
        For Each textRange In search.FindAll(toSearch)
            Dim newRange As New Telerik.WinForms.Documents.TextSearch.TextRange(New Telerik.WinForms.Documents.DocumentPosition(textRange.StartPosition, True), New Telerik.WinForms.Documents.DocumentPosition(textRange.EndPosition, True))
            rangesTrackingDocumentChanges.Add(newRange)
        Next textRange
        For Each textRange In rangesTrackingDocumentChanges
            Me.radRichTextEditor1.Document.Selection.AddSelectionStart(textRange.StartPosition)
            Me.radRichTextEditor1.Document.Selection.AddSelectionEnd(textRange.EndPosition)
            Me.radRichTextEditor1.Insert(toReplaceWith)
            textRange.StartPosition.Dispose()
            textRange.EndPosition.Dispose()
        Next textRange
    End Sub
````

{{endregion}} 




There is a need to create new __TextRanges__ with document positions that track the changes to the document, because the deletion and  insertion affects the document positions. The document positions created using the 2-parameter constructor with the second parameter set to "true" keep their relative position as the document changes. They, however, have to be manually disposed of, as they subscribe to events in order to track the changes to the document and must detach their handlers at the end of their use. This is done using the __Dispose__ method. If you skip that step, there will be memory leaks in your application.
        

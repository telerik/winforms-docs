---
title: Find and Replace
page_title: Find and Replace | UI for WinForms Documentation
description: Find and Replace
slug: winforms/wordsprocessing/features/find-and-replace
tags: find,and,replace
published: True
position: 2
---

# Find and Replace



__RadWordsProcessing__ gives you the ability to search for a string in a [RadFlowDocument]({%slug winforms/wordsprocessing/model/radflowdocument%}) instance and replace all matches. The library also allows you to replace the styling of the matches alone.

Replacing can be achieved with the help of the [RadFlowDocumentEditor]({%slug winforms/wordsprocessing/editing/radflowdocumenteditor%}) class exposed by the library which works with a specific document.

## Replace Text

Finding all instances of a string and replacing it with another can be achieved with the __ReplaceText__ method of __RadFlowDocumentEditor__. The editor exposes three methods accepting different parameters.

* __void ReplaceText(string oldText, string newText)__: Replaces all occurrences of the *oldText* string with the *newText* string. Matches the casing of the old text and replaces occurrences within a word as well.

* __void ReplaceText(string oldText, string newText, bool matchCase, bool matchWholeWord)__: Replaces all occurrences of a string with another string. Accepts Boolean parameters which specify whether the casing should be matched and only whole words should be replaces.

* __void ReplaceText(Regex regex, string newText)__: Replaces all matches of the passed Regex with the new text.

#### Example 1: Replace Text

{{source=..\SamplesCS\WordsProcessing\Editing\WordFindReplace.cs region=radwordsprocessing-find-replace-01}} 
{{source=..\SamplesVB\WordsProcessing\Editing\WordFindReplace.vb region=radwordsprocessing-find-replace-01}} 

````C#
        
public void FindReplace(RadFlowDocument document)
{ 
    RadFlowDocumentEditor editor = new RadFlowDocumentEditor(document);
    editor.ReplaceText("code", "source code", true, true);
}

````
````VB.NET
Public Sub FindReplace(document As RadFlowDocument)
    Dim editor As New RadFlowDocumentEditor(document)
    editor.ReplaceText("code", "source code", True, True)
End Sub

````

{{endregion}}

## Replace Styling

__RadFlowDocumentEditor__ gives you the ability to format all occurrences of a string in a document. This can be achieved by using one of the overloads of the __ReplaceStyling__ method. The overloads accept an Action delegate that allows to modify the [CharacterProperties]({%slug winforms/wordsprocessing/concepts/style-properties%}) of the matches.

* __void ReplaceStyling(string searchedText, Action<CharacterProperties> replacePropertiesAction)__: Applies the character property changes from the Action delegate to all matches with the casing of the string.

* __void ReplaceStyling(string searchedText, bool matchCase, bool matchWholeWord, Action<CharacterProperties> replacePropertiesAction)__: Applies the character property changes from the Action delegate to all matches. Accepts Boolean parameters which specify whether the casing should be matched and only whole words should be styled.

* __void ReplaceStyling(Regex regex, Action<CharacterProperties> replacePropertiesAction)__: Applies the character property changes from the Action delegate to all matches of the Regex.

Example 2 shows how to apply red highlight color to all occurrences of the word "alert".

#### Example 2: Replace Character Properties

{{source=..\SamplesCS\WordsProcessing\Editing\WordFindReplace.cs region=radwordsprocessing-find-replace-02}} 
{{source=..\SamplesVB\WordsProcessing\Editing\WordFindReplace.vb region=radwordsprocessing-find-replace-02}} 

````C#
        
public void ReplaceStyling(RadFlowDocument document)
{ 
    RadFlowDocumentEditor editor = new RadFlowDocumentEditor(document); 
    editor.ReplaceStyling("text", new Action<Telerik.Windows.Documents.Flow.Model.Styles.CharacterProperties>
        ((properties) => { properties.HighlightColor.LocalValue = Colors.Red;}));
}

````
````VB.NET
Public Sub ReplaceStyling(document As RadFlowDocument)
    Dim editor As New RadFlowDocumentEditor(document)
    editor.ReplaceStyling("text", New Action(Of Telerik.Windows.Documents.Flow.Model.Styles.CharacterProperties) _
                          (Function(properties) properties.HighlightColor.LocalValue = Colors.Red))
End Sub

````

{{endregion}}

# See Also

 * [RadFlowDocumentEditor]({%slug winforms/wordsprocessing/editing/radflowdocumenteditor%})

 * [Style Properties]({%slug winforms/wordsprocessing/concepts/style-properties%})

 * [RadFlowDocument]({%slug winforms/wordsprocessing/model/radflowdocument%})

 * [RadFlowDocument API Reference](http://www.telerik.com/help/winforms/allmembers_t_telerik_windows_documents_flow_model_editing_radflowdocumenteditor.html)

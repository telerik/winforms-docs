---
title: Localization
page_title: Localization | RadMarkupDialog
description: This article shows how one ca localize the strings used in RadMarkupDialog.
slug: winforms/tpd/markup-dialog/localization
tags: localization 
published: True
position: 1
---

# Localization

To localize RadMarkupDialog to display control text and messages in a specific language:

*  All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

*  Start by creating a descendant of the __RadMarkupEditorLocalizationProvider__ class.

*  Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.
 
Below is a sample implementation of an English localization provider:

#### Localizing RadGridView Strings

{{source=..\SamplesCS\TPF\RadMarkupDialogForm.cs region=CustomProvider}} 
{{source=..\SamplesVB\TPF\RadMarkupDialogForm.vb region=CustomProvider}}
````C#
class MyRadMarkupEditorLocalizationProvider : RadMarkupEditorLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case RadMarkupEditorStringId.MarkupEditorTitle: return "RadMarkupEditor";
            case RadMarkupEditorStringId.MarkupEditorUndoString: return "Undo";
            case RadMarkupEditorStringId.MarkupEditorRedoString: return "Redo";
            case RadMarkupEditorStringId.MarkupEditorCopyString: return "Copy";
            case RadMarkupEditorStringId.MarkupEditorCutString: return "Cut";
            case RadMarkupEditorStringId.MarkupEditorPasteString: return "Paste";
            case RadMarkupEditorStringId.MarkupEditorBoldString: return "Bold";
            case RadMarkupEditorStringId.MarkupEditorItalicString: return "Italic";
            case RadMarkupEditorStringId.MarkupEditorUnderlineString: return "Underline";
            case RadMarkupEditorStringId.MarkupEditorClipboardString: return "Clipboard";
            case RadMarkupEditorStringId.MarkupEditorFontString: return "Font";
            case RadMarkupEditorStringId.MarkupEditorFontColorString: return "Font color";
            case RadMarkupEditorStringId.MarkupEditorHighlightString: return "Highlight";
            case RadMarkupEditorStringId.MarkupEditorBulletsString: return "Bullets";
            case RadMarkupEditorStringId.MarkupEditorUnorderedListString: return "Unordered list";
            case RadMarkupEditorStringId.MarkupEditorListsString: return "Lists";
            case RadMarkupEditorStringId.MarkupEditorNumberingString: return "Numbering";
            case RadMarkupEditorStringId.MarkupEditorOrderedListString: return "Ordered list";
            case RadMarkupEditorStringId.MarkupEditorLinksString: return "Links";
            case RadMarkupEditorStringId.MarkupEditorLinkString: return "Link";
            case RadMarkupEditorStringId.MarkupEditorHyperlinkString: return "Hyperlink";
            case RadMarkupEditorStringId.MarkupEditorApplyString: return "Apply";
            case RadMarkupEditorStringId.MarkupEditorDesignString: return "Design";
            case RadMarkupEditorStringId.MarkupEditorMarkupString: return "Markup";
            case RadMarkupEditorStringId.RibbonBarQuickAccessAboveItemText: return "Show Above the Ribbon";
            case RadMarkupEditorStringId.RibbonBarQuickAccessBelowItemText: return "Show Below the Ribbon";
            case RadMarkupEditorStringId.RibbonBarMinimizeItemText: return "Minimize the Ribbon";
            case RadMarkupEditorStringId.RibbonBarMaximizeItemText: return "Maximize the Ribbon";
            case RadMarkupEditorStringId.AddHyperLinkDialogTitle: return "New Hyperlink";
            case RadMarkupEditorStringId.AddHyperlinkType: return "Type:";
            case RadMarkupEditorStringId.AddHyperlinkURI: return "URI:";
            case RadMarkupEditorStringId.AddHyperlinkDialogOK: return "OK";
            case RadMarkupEditorStringId.AddHyperlinkDialogCancel: return "Cancel";
        }
        return base.GetLocalizedString(id);
    }
}

````
````VB.NET
Public Class MyRadMarkupEditorLocalizationProvider
    Inherits RadMarkupEditorLocalizationProvider
    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case RadMarkupEditorStringId.MarkupEditorTitle
                Return "RadMarkupEditor"
            Case RadMarkupEditorStringId.MarkupEditorUndoString
                Return "Undo"
            Case RadMarkupEditorStringId.MarkupEditorRedoString
                Return "Redo"
            Case RadMarkupEditorStringId.MarkupEditorCopyString
                Return "Copy"
            Case RadMarkupEditorStringId.MarkupEditorCutString
                Return "Cut"
            Case RadMarkupEditorStringId.MarkupEditorPasteString
                Return "Paste"
            Case RadMarkupEditorStringId.MarkupEditorBoldString
                Return "Bold"
            Case RadMarkupEditorStringId.MarkupEditorItalicString
                Return "Italic"
            Case RadMarkupEditorStringId.MarkupEditorUnderlineString
                Return "Underline"
            Case RadMarkupEditorStringId.MarkupEditorClipboardString
                Return "Clipboard"
            Case RadMarkupEditorStringId.MarkupEditorFontString
                Return "Font"
            Case RadMarkupEditorStringId.MarkupEditorFontColorString
                Return "Font color"
            Case RadMarkupEditorStringId.MarkupEditorHighlightString
                Return "Highlight"
            Case RadMarkupEditorStringId.MarkupEditorBulletsString
                Return "Bullets"
            Case RadMarkupEditorStringId.MarkupEditorUnorderedListString
                Return "Unordered list"
            Case RadMarkupEditorStringId.MarkupEditorListsString
                Return "Lists"
            Case RadMarkupEditorStringId.MarkupEditorNumberingString
                Return "Numbering"
            Case RadMarkupEditorStringId.MarkupEditorOrderedListString
                Return "Ordered list"
            Case RadMarkupEditorStringId.MarkupEditorLinksString
                Return "Links"
            Case RadMarkupEditorStringId.MarkupEditorLinkString
                Return "Link"
            Case RadMarkupEditorStringId.MarkupEditorHyperlinkString
                Return "Hyperlink"
            Case RadMarkupEditorStringId.MarkupEditorApplyString
                Return "Apply"
            Case RadMarkupEditorStringId.MarkupEditorDesignString
                Return "Design"
            Case RadMarkupEditorStringId.MarkupEditorMarkupString
                Return "Markup"
            Case RadMarkupEditorStringId.RibbonBarQuickAccessAboveItemText
                Return "Show Above the Ribbon"
            Case RadMarkupEditorStringId.RibbonBarQuickAccessBelowItemText
                Return "Show Below the Ribbon"
            Case RadMarkupEditorStringId.RibbonBarMinimizeItemText
                Return "Minimize the Ribbon"
            Case RadMarkupEditorStringId.RibbonBarMaximizeItemText
                Return "Maximize the Ribbon"
            Case RadMarkupEditorStringId.AddHyperLinkDialogTitle
                Return "New Hyperlink"
            Case RadMarkupEditorStringId.AddHyperlinkType
                Return "Type:"
            Case RadMarkupEditorStringId.AddHyperlinkURI
                Return "URI:"
            Case RadMarkupEditorStringId.AddHyperlinkDialogOK
                Return "OK"
            Case RadMarkupEditorStringId.AddHyperlinkDialogCancel
                Return "Cancel"
        End Select
        Return MyBase.GetLocalizedString(id)
    End Function
End Class

```` 

{{endregion}}
To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\TPF\RadMarkupDialogForm.cs region=ChangeProvider}} 
{{source=..\SamplesVB\TPF\RadMarkupDialogForm.vb region=ChangeProvider}}
````C#
RadMarkupEditorLocalizationProvider.CurrentProvider = new MyRadMarkupEditorLocalizationProvider();

````
````VB.NET
RadMarkupEditorLocalizationProvider.CurrentProvider = New MyRadMarkupEditorLocalizationProvider()

```` 

{{endregion}}

The code provided above illustrates the approach to be used to localize the __RadGridView__ and is not intended as a full translation.
        
# See Also
* [Markup Dialog]({%slug winforms/telerik-presentation-framework/radmarkupdialog%})
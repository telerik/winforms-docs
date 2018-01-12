---
title: Localization
page_title: Localization | RadSpellChecker
description: RadSpellChecker enables developers to add multilingual spell checking capabilities to their WinForms applications.
slug: winforms/spellchecker/localization
tags: localization
published: True
position: 5
previous_url: spellchecker-localization
---

# Localization

To localize **RadSpellChecker** to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadSpellCheckerLocalizationProvider__ class. 

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example. 

Below is a sample implementation of an English localization provider:

{{source=..\SamplesCS\SpellChecker\SpellCheckerLocalization.cs region=myEnglishLocalizationProvider}} 
{{source=..\SamplesVB\SpellChecker\SpellCheckerLocalization.vb region=myEnglishLocalizationProvider}} 

````C#
    
class MyEnglishSpellCheckerLocalizationProvider : RadSpellCheckerLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
            switch (id)
            {
                case RadSpellCheckerStringId.Title:
                    return "Spell Checking";
                case RadSpellCheckerStringId.OK:
                    return "OK";
                case RadSpellCheckerStringId.Cancel:
                    return "Cancel";
                case RadSpellCheckerStringId.Close:
                    return "Close";
                case RadSpellCheckerStringId.ChangeAll:
                    return "Change All";
                case RadSpellCheckerStringId.Change:
                    return "Change";
                case RadSpellCheckerStringId.Complete:
                    return "The spelling check is complete.";
                case RadSpellCheckerStringId.AddToDictionary:
                    return "Add to Dictionary";
                case RadSpellCheckerStringId.Ingore :
                    return "Ignore";
                case RadSpellCheckerStringId.IngoreAll:
                    return "Ignore All";
                case RadSpellCheckerStringId.Suggestions:
                    return "Suggestions:";
                case RadSpellCheckerStringId.ChangeTo:
                    return "Change To:";
                case RadSpellCheckerStringId.NotInDictionary:
                    return "Not in Dicitionary:";
            }
        return null;
    }
}

````
````VB.NET
Class MyEnglishSpellCheckerLocalizationProvider
    Inherits RadSpellCheckerLocalizationProvider
    Public Overrides Function GetLocalizedString(id As String) As String
        Select Case id
            Case RadSpellCheckerStringId.Title
                Return "Spell Checking"
            Case RadSpellCheckerStringId.OK
                Return "OK"
            Case RadSpellCheckerStringId.Cancel
                Return "Cancel"
            Case RadSpellCheckerStringId.Close
                Return "Close"
            Case RadSpellCheckerStringId.ChangeAll
                Return "Change All"
            Case RadSpellCheckerStringId.Change
                Return "Change"
            Case RadSpellCheckerStringId.Complete
                Return "The spelling check is complete."
            Case RadSpellCheckerStringId.AddToDictionary
                Return "Add to Dictionary"
            Case RadSpellCheckerStringId.Ingore
                Return "Ignore"
            Case RadSpellCheckerStringId.IngoreAll
                Return "Ignore All"
            Case RadSpellCheckerStringId.Suggestions
                Return "Suggestions:"
            Case RadSpellCheckerStringId.ChangeTo
                Return "Change To:"
            Case RadSpellCheckerStringId.NotInDictionary
                Return "Not in Dicitionary:"
        End Select
        Return Nothing
    End Function
End Class

````

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\SpellChecker\SpellCheckerLocalization.cs region=localizeSpellChecker}} 
{{source=..\SamplesVB\SpellChecker\SpellCheckerLocalization.vb region=localizeSpellChecker}} 

````C#
            
RadSpellCheckerLocalizationProvider.CurrentProvider = new MyEnglishSpellCheckerLocalizationProvider();

````
````VB.NET
RadSpellCheckerLocalizationProvider.CurrentProvider = New MyEnglishSpellCheckerLocalizationProvider()

````

{{endregion}} 

The code provided above illustrates the approach to be used to localize the __RadSpellChecker__ and is not intended as a full translation.

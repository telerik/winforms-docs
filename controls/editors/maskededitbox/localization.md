---
title: Localization
page_title: Localization - RadMaskedEditBox
description: RadMaskedEditBox is a themeable text box that formats and constrains text to a predefined pattern or a pattern you define.
slug: radmaskededitbox-localization
tags: radmaskededitbox
published: True
position: 11
---

# Localization

To localize **RadMaskedEditBox** to display text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the **RadMaskedEditBoxLocalizationProvider** class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

{{source=..\SamplesCS\Editors\MaskEditBox1.cs region=MyRadMaskedEditBoxLocalizationProvider}} 
{{source=..\SamplesVB\Editors\MaskEditBox1.vb region=MyRadMaskedEditBoxLocalizationProvider}}

````C#
public class MyRadMaskedEditBoxLocalizationProvider : RadMaskedEditBoxLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case RadMaskedEditBoxStringId.CopyMenuItem: return "Copy";
            case RadMaskedEditBoxStringId.CutMenuItem: return "Cut";
            case RadMaskedEditBoxStringId.DeleteMenuItem: return "Delete";
            case RadMaskedEditBoxStringId.PasteMenuItem: return "Paste";
            case RadMaskedEditBoxStringId.SelectAllMenuItem: return "SelectAll";
        }
        
        return string.Empty;
    }
}

````
````VB.NET
Public Class MyRadMaskedEditBoxLocalizationProvider
    Inherits RadMaskedEditBoxLocalizationProvider
    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case RadMaskedEditBoxStringId.CopyMenuItem
                Return "Copy"
            Case RadMaskedEditBoxStringId.CutMenuItem
                Return "Cut"
            Case RadMaskedEditBoxStringId.DeleteMenuItem
                Return "Delete"
            Case RadMaskedEditBoxStringId.PasteMenuItem
                Return "Paste"
            Case RadMaskedEditBoxStringId.SelectAllMenuItem
                Return "SelectAll"
        End Select

        Return String.Empty
    End Function

```` 

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\Editors\MaskEditBox1.cs region=localizeMaskEditBox}} 
{{source=..\SamplesVB\Editors\MaskEditBox1.vb region=localizeMaskEditBox}}
````C#
RadMaskedEditBoxLocalizationProvider.CurrentProvider = new MyRadMaskedEditBoxLocalizationProvider();

````
````VB.NET
RadMaskedEditBoxLocalizationProvider.CurrentProvider = New MyRadMaskedEditBoxLocalizationProvider()

```` 

{{endregion}} 


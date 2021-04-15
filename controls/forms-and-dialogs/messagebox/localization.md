---
title: Localization
page_title: Localization - WinForms MessageBox
description: WinForms MessageBox provides localization of its buttons text via RadMessageLocalizationProvider.
slug: winforms/forms-and-dialogs/messagebox/localization
tags: localization
published: True
position: 5
previous_url: forms-and-dialogs-messagebox-localization
---

# Localization

__RadMessageBox__ provides localization of its buttons text via __RadMessageLocalizationProvider__:

1\. Start by creating a descendant of the __RadGridLocalizationSettings__ class. Then, override the __GetLocalizedString(string id)__ method, and in its implementation, provide a translation for the label and user messages. If one is not provided, the default value will be returned - this is guaranteed by the call to the base __GetLocalizedString__ method in the default clause of the switch statement. 

#### Creating a custom localization provider 

{{source=..\SamplesCS\Forms and Dialogs\MessageBox1.cs region=LocalizationProvider}} 
{{source=..\SamplesVB\Forms and Dialogs\MessageBox1.vb region=LocalizationProvider}} 

````C#
public class MyRadMessageLocalizationProvider : RadMessageLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case RadMessageStringID.AbortButton: return "Abbruch";
            case RadMessageStringID.CancelButton: return "Löschen";
            case RadMessageStringID.IgnoreButton: return "Ignorieren";
            case RadMessageStringID.NoButton: return "Nein";
            case RadMessageStringID.OKButton: return "OK";
            case RadMessageStringID.RetryButton: return "Wiederholung";
            case RadMessageStringID.YesButton: return "Ja";
            default:
                return base.GetLocalizedString(id);
        }
    }
}

````
````VB.NET
Public Class MyRadMessageLocalizationProvider
    Inherits RadMessageLocalizationProvider
    Public Overloads Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case RadMessageStringID.AbortButton
                Return "Abbruch"
            Case RadMessageStringID.CancelButton
                Return "Löschen"
            Case RadMessageStringID.IgnoreButton
                Return "Ignorieren"
            Case RadMessageStringID.NoButton
                Return "Nein"
            Case RadMessageStringID.OKButton
                Return "OK"
            Case RadMessageStringID.RetryButton
                Return "Wiederholung"
            Case RadMessageStringID.YesButton
                Return "Ja"
            Case Else
                Return MyBase.GetLocalizedString(id)
        End Select
    End Function
End Class

````

{{endregion}} 
 
2\. To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Setting the custom localization provider to RadMessageBox 

{{source=..\SamplesCS\Forms and Dialogs\MessageBox1.cs region=settingTheLocalizationProvider}} 
{{source=..\SamplesVB\Forms and Dialogs\MessageBox1.vb region=settingTheLocalizationProvider}} 

````C#
RadMessageLocalizationProvider.CurrentProvider = new MyRadMessageLocalizationProvider();

````
````VB.NET
RadMessageLocalizationProvider.CurrentProvider = New MyRadMessageLocalizationProvider()

````

{{endregion}} 




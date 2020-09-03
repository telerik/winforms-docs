---
title: Localization
page_title: Localization | Task Dialog
description: RadTaskDialog is a themable alternative of the windows dialog boxes and the newly released TaskDialog for .NET 5.
slug: task-dialog-localization
tags: task dialog, icons
published: True
position: 6 
---

# Localization

To localize **RadTaskDialog** to display control text and messages in a specific language, :

* All required classes for localization are defined in Telerik.WinControls.UI.Localization namespace.

* Start by creating a descendant of the **RadTaskDialogLocalizationProvider** class.

* Override the **GetLocalizedString(string id)** method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base **GetLocalizedString** method in the default clause of the switch statement in the example.

Below is a sample implementation of an English localization provider:

#### Localizing Task Dialog

{{source=..\SamplesCS\TaskDialog\TaskDialogGettingStarted.cs region=myEnglishLocalizationProvider}} 
{{source=..\SamplesVB\TaskDialog\TaskDialogGettingStarted.vb region=myEnglishLocalizationProvider}}


````C#
 public class EnglishRadTaskDialogLocalizationProvider : RadTaskDialogLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case RadTaskDialogStringId.ExpanderCollapsedButtonText: return "See details";
            case RadTaskDialogStringId.ExpanderExpandedButtonText: return "Hide details";
            case RadTaskDialogStringId.ContinueButtonText: return "Continue";
            case RadTaskDialogStringId.TryAgainButtonText: return "TryAgain";
            case RadTaskDialogStringId.HelpButtonText: return "Help";
            case RadTaskDialogStringId.CloseButtonText: return "Close";
            case RadTaskDialogStringId.NoButtonText: return "No";
            case RadTaskDialogStringId.YesButtonText: return "Yes";
            case RadTaskDialogStringId.RetryButtonText: return "Retry";
            case RadTaskDialogStringId.AbortButtonText: return "Abort";
            case RadTaskDialogStringId.IgnoreButtonText: return "Ignore";
            case RadTaskDialogStringId.OKButtonText: return "OKdfgdf";
            case RadTaskDialogStringId.CancelButtonText: return "Cancel";
            default: return base.GetLocalizedString(id);
        }
    }
}
    

````
````VB.NET
 Public Class EnglishRadTaskDialogLocalizationProvider
    Inherits RadTaskDialogLocalizationProvider

    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case RadTaskDialogStringId.ExpanderCollapsedButtonText
                Return "See details"
            Case RadTaskDialogStringId.ExpanderExpandedButtonText
                Return "Hide details"
            Case RadTaskDialogStringId.ContinueButtonText
                Return "Continue"
            Case RadTaskDialogStringId.TryAgainButtonText
                Return "TryAgain"
            Case RadTaskDialogStringId.HelpButtonText
                Return "Help"
            Case RadTaskDialogStringId.CloseButtonText
                Return "Close"
            Case RadTaskDialogStringId.NoButtonText
                Return "No"
            Case RadTaskDialogStringId.YesButtonText
                Return "Yes"
            Case RadTaskDialogStringId.RetryButtonText
                Return "Retry"
            Case RadTaskDialogStringId.AbortButtonText
                Return "Abort"
            Case RadTaskDialogStringId.IgnoreButtonText
                Return "Ignore"
            Case RadTaskDialogStringId.OKButtonText
                Return "OK"
            Case RadTaskDialogStringId.CancelButtonText
                Return "Cancel"
            Case Else
                Return MyBase.GetLocalizedString(id)
        End Select
    End Function
End Class
 

````

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\TaskDialog\TaskDialogGettingStarted.cs region=SetProvider}} 
{{source=..\SamplesVB\TaskDialog\TaskDialogGettingStarted.vb region=SetProvider}}


````C#
     

````
````VB.NET
  

````

{{endregion}}

# See Also

* [Getting Started]({%slug task-dialog-getting-started%})
* [Structure]({%slug task-dialog-structure%})
* [Element Types]({%slug task-dialog-element-types%})
 
        

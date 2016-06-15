---
title: Localization
page_title: Localization | UI for WinForms Documentation
description: Localization
slug: winforms/commandbar/localization/localization
tags: localization
published: True
position: 0
previous_url: commandbar-localization-localization
---

# Localization



## 

To localize RadCommandBar to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI__ namespace.

* Start by creating a descendant of the __CommandBarLocalizationProvider__ class. 

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider: 
 
{{source=..\SamplesCS\CommandBar\MyEnglishCommandBarLocalizationProvider.cs region=provider}} 
{{source=..\SamplesVB\CommandBar\MyEnglishCommandBarLocalizationProvider.vb region=provider}} 

````C#
public class MyEnglishCommandBarLocalizationProvider : CommandBarLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case CommandBarStringId.CustomizeDialogChooseToolstripLabelText: return "Choose a toolstrip to rearrange:";
            case CommandBarStringId.CustomizeDialogCloseButtonText: return "Close";
            case CommandBarStringId.CustomizeDialogItemsPageTitle: return "Items";
            case CommandBarStringId.CustomizeDialogMoveDownButtonText: return "Move Down";
            case CommandBarStringId.CustomizeDialogMoveUpButtonText: return "Move Up";
            case CommandBarStringId.CustomizeDialogResetButtonText: return "Reset";
            case CommandBarStringId.CustomizeDialogTitle: return "Customize1";
            case CommandBarStringId.CustomizeDialogToolstripsPageTitle: return "Toolstrips";
            case CommandBarStringId.OverflowMenuAddOrRemoveButtonsText: return "Add or Remove Buttons";
            case CommandBarStringId.OverflowMenuCustomizeText: return "Customize...";
            case CommandBarStringId.ContextMenuCustomizeText: return "Customize...";
            default: return base.GetLocalizedString(id);
        }
    }
}

````
````VB.NET
Public Class MyEnglishCommandBarLocalizationProvider
    Inherits CommandBarLocalizationProvider
    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case CommandBarStringId.CustomizeDialogChooseToolstripLabelText : Return "Choose a toolstrip to rearrange:"
            Case CommandBarStringId.CustomizeDialogCloseButtonText : Return "Close"
            Case CommandBarStringId.CustomizeDialogItemsPageTitle : Return "Items"
            Case CommandBarStringId.CustomizeDialogMoveDownButtonText : Return "Move Down"
            Case CommandBarStringId.CustomizeDialogMoveUpButtonText : Return "Move Up"
            Case CommandBarStringId.CustomizeDialogResetButtonText : Return "Reset"
            Case CommandBarStringId.CustomizeDialogTitle : Return "Customize1"
            Case CommandBarStringId.CustomizeDialogToolstripsPageTitle : Return "Toolstrips"
            Case CommandBarStringId.OverflowMenuAddOrRemoveButtonsText : Return "Add or Remove Buttons"
            Case CommandBarStringId.OverflowMenuCustomizeText : Return "Customize..."
            Case CommandBarStringId.ContextMenuCustomizeText : Return "Customize..."
            Case Else : Return MyBase.GetLocalizedString(id)
        End Select
        Return String.Empty
    End Function
End Class

````

{{endregion}} 
 

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider 

{{source=..\SamplesCS\CommandBar\FloatingStrips.cs region=usingProvider}} 
{{source=..\SamplesVB\CommandBar\FloatingStrips.vb region=usingProvider}} 

````C#
            
CommandBarLocalizationProvider.CurrentProvider = new MyEnglishCommandBarLocalizationProvider();

````
````VB.NET
CommandBarLocalizationProvider.CurrentProvider = New MyEnglishCommandBarLocalizationProvider()

````

{{endregion}} 
 

The code provided above illustrates the approach to be used to localize the __RadCommandBar__ and is not intended as a full translation.

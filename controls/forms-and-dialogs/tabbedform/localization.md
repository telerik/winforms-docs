---
title: Localization
page_title: Localization - RadTabbedForm
description:  RadTabbedForm allows to display tab items directly in the title bar  
slug: radtabbedform-localization
tags: radtabbedform
published: True
position: 17
---

# Localization

To localize __RadTabbedForm__ to display any text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadTabbedFormControlLocalizationProvider__ class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

{{source=..\SamplesCS\Forms and Dialogs\TabbedFormCode.cs region=Localization}} 
{{source=..\SamplesVB\Forms and Dialogs\TabbedFormCode.vb region=Localization}}
````C#
class MyRadTabbedFormControlLocalizationProvider : RadTabbedFormControlLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case RadTabbedFormControlStringId.NewTabMenuTtem: return "New tab";
            case RadTabbedFormControlStringId.PinTabMenuTtem: return "Pin tab";
            case RadTabbedFormControlStringId.CloseTabMenuTtem: return "Close tab";
            case RadTabbedFormControlStringId.CloseOtherTabsMenuTtem: return "Close other tabs";
            case RadTabbedFormControlStringId.CloseRightTabsMenuTtem: return "Close tabs to the right";
            case RadTabbedFormControlStringId.UnpinTabMenuTtem: return "Unpin tab";
        }
        return base.GetLocalizedString(id);
    }
}

````
````VB.NET
Friend Class MyRadTabbedFormControlLocalizationProvider
    Inherits RadTabbedFormControlLocalizationProvider
    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case RadTabbedFormControlStringId.NewTabMenuTtem
                Return "New tab"
            Case RadTabbedFormControlStringId.PinTabMenuTtem
                Return "Pin tab"
            Case RadTabbedFormControlStringId.CloseTabMenuTtem
                Return "Close tab"
            Case RadTabbedFormControlStringId.CloseOtherTabsMenuTtem
                Return "Close other tabs"
            Case RadTabbedFormControlStringId.CloseRightTabsMenuTtem
                Return "Close tabs to the right"
            Case RadTabbedFormControlStringId.UnpinTabMenuTtem
                Return "Unpin tab"
        End Select
        Return MyBase.GetLocalizedString(id)
    End Function
End Class

```` 

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\Forms and Dialogs\TabbedFormCode.cs region=ChangeProvider}} 
{{source=..\SamplesVB\Forms and Dialogs\TabbedFormCode.vb region=ChangeProvider}}
````C#
RadTabbedFormControlLocalizationProvider.CurrentProvider = new MyRadTabbedFormControlLocalizationProvider();

````
````VB.NET
RadTabbedFormControlLocalizationProvider.CurrentProvider = New MyRadTabbedFormControlLocalizationProvider()

```` 

{{endregion}} 

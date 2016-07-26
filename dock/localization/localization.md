---
title: Localization
page_title: Localization | RadDock
description: This article show how you can localize the strings used in RadDock.
slug: winforms/dock/localization/localization
tags: localization
published: True
position: 0
previous_url: dock-localization
---

# Localization
 
To localize __RadDock__ to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace. 

* Start by creating a descendant of the `RadDockLocalizationProvider` class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the switch statement in the example. 

Below is a sample implementation of a custom localization provider, which returns translations of the default values in English:

#### Localizing RadDock Strings 

{{source=..\SamplesCS\Dock\CustomDockProvider.cs region=customProvider}} 
{{source=..\SamplesVB\Dock\CustomDockProvider.vb region=customProvider}} 

````C#
public class EnglishDockLocalizationProvider : RadDockLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case RadDockStringId.ContextMenuFloating:
                return "Floating";
            case RadDockStringId.ContextMenuDockable:
                return "Dockable";
            case RadDockStringId.ContextMenuTabbedDocument:
                return "Tabbed Document";
            case RadDockStringId.ContextMenuAutoHide:
                return "Auto Hide";
            case RadDockStringId.ContextMenuHide:
                return "Hide";
            case RadDockStringId.ContextMenuClose:
                return "Close";
            case RadDockStringId.ContextMenuCloseAll:
                return "Close All";
            case RadDockStringId.ContextMenuCloseAllButThis:
                return "Close All But This";
            case RadDockStringId.ContextMenuMoveToPreviousTabGroup:
                return "Move to Previous Tab Group";
            case RadDockStringId.ContextMenuMoveToNextTabGroup:
                return "Move to Next Tab Group";
            case RadDockStringId.ContextMenuNewHorizontalTabGroup:
                return "New Horizontal Tab Group";
            case RadDockStringId.ContextMenuNewVerticalTabGroup:
                return "New Vertical Tab Group";
            case RadDockStringId.ToolTabStripCloseButton:
                return "Close Window";
            case RadDockStringId.ToolTabStripDockStateButton:
                return "Window State";
            case RadDockStringId.ToolTabStripUnpinButton:
                return "Auto Hide";
            case RadDockStringId.ToolTabStripPinButton:
                return "Docked";
            case RadDockStringId.DocumentTabStripCloseButton:
                return "Close Document";
            case RadDockStringId.DocumentTabStripListButton:
                return "Active Documents";
            case RadDockStringId.ContextMenuCloseAllButPinned:
                return "Close All but Pinned";
        }
        return string.Empty;
    }
}

````
````VB.NET
Public Class EnglishDockLocalizationProvider
    Inherits RadDockLocalizationProvider
    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case RadDockStringId.ContextMenuFloating
                Return "Floating"
            Case RadDockStringId.ContextMenuDockable
                Return "Dockable"
            Case RadDockStringId.ContextMenuTabbedDocument
                Return "Tabbed Document"
            Case RadDockStringId.ContextMenuAutoHide
                Return "Auto Hide"
            Case RadDockStringId.ContextMenuHide
                Return "Hide"
            Case RadDockStringId.ContextMenuClose
                Return "Close"
            Case RadDockStringId.ContextMenuCloseAll
                Return "Close All"
            Case RadDockStringId.ContextMenuCloseAllButThis
                Return "Close All But This"
            Case RadDockStringId.ContextMenuMoveToPreviousTabGroup
                Return "Move to Previous Tab Group"
            Case RadDockStringId.ContextMenuMoveToNextTabGroup
                Return "Move to Next Tab Group"
            Case RadDockStringId.ContextMenuNewHorizontalTabGroup
                Return "New Horizontal Tab Group"
            Case RadDockStringId.ContextMenuNewVerticalTabGroup
                Return "New Vertical Tab Group"
            Case RadDockStringId.ToolTabStripCloseButton
                Return "Close Window"
            Case RadDockStringId.ToolTabStripDockStateButton
                Return "Window State"
            Case RadDockStringId.ToolTabStripUnpinButton
                Return "Auto Hide"
            Case RadDockStringId.ToolTabStripPinButton
                Return "Docked"
            Case RadDockStringId.DocumentTabStripCloseButton
                Return "Close Document"
            Case RadDockStringId.DocumentTabStripListButton
                Return "Active Documents"
            Case RadDockStringId.ContextMenuCloseAllButPinned
                Return "Close All but Pinned"
        End Select
        Return String.Empty
    End Function
End Class

````

{{endregion}} 
 

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Localizing RadDock Strings 

{{source=..\SamplesCS\Dock\CustomDockProvider.cs region=settingCustomProvider}} 
{{source=..\SamplesVB\Dock\CustomDockProvider.vb region=settingCustomProvider}} 

````C#
RadDockLocalizationProvider.CurrentProvider = new EnglishDockLocalizationProvider();

````
````VB.NET
RadDockLocalizationProvider.CurrentProvider = New EnglishDockLocalizationProvider()

````

{{endregion}} 

 
The code provided above illustrates the approach to be used to localize the __RadDock__ and is not intended as a full translation.

# See Also

* [Right-to-left support]({%slug winforms/dock/localization/right-to-left-support%})

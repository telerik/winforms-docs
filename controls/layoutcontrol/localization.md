---
title: Localization
page_title: Localization | RadLayoutControl
description: Localization
slug: winforms/layoutcontrol/localization
tags: localization
published: True
position: 8
previous_url: layoutcontrol-localization
---

# Localization

To localize __RadLayoutControl__ to display any text and messages in a specific language:

* Create a custom __LayoutControlLocalizationProvider__ class.        

* Override the __GetLocalizedString(string id)__ method and provide a translation for the labels and user messages. If a translation is not provided, the default value will be returned.

Below is a sample implementation of an English localization provider:

#### Localizing RadLayoutControl Strings.

{{source=..\SamplesCS\LayoutControl\LayoutControlLocalization.cs region=Localization}} 
{{source=..\SamplesVB\LayoutControl\LayoutControlLocalization.vb region=Localization}} 

````C#
    
class MyEnglishLayoutControlLocalizationProvider : LayoutControlLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case LayoutControlStringId.CustomizeDialogHiddenItems:
                return "Hidden Items ({0})";
            case LayoutControlStringId.CustomizeDialogNewItems:
                return "New Items ({0})";
                
            case LayoutControlStringId.CustomizeDialogPageItems:
                return "Items";
            case LayoutControlStringId.CustomizeDialogPageStructure:
                return "Structure";
                
            case LayoutControlStringId.CustomizeDialogRootItem:
                return "Root";
            case LayoutControlStringId.CustomizeDialogLayoutItem:
                return "Layout Item";
            case LayoutControlStringId.CustomizeDialogLabelItem:
                return "Label Item";
            case LayoutControlStringId.CustomizeDialogSplitterItem:
                return "Splitter Item";
            case LayoutControlStringId.CustomizeDialogSeparatorItem:
                return "Separator Item";
            case LayoutControlStringId.CustomizeDialogGroupItem:
                return "Group Item";
            case LayoutControlStringId.CustomizeDialogTabbedGroup:
                return "Tabbed Group";
                
            case LayoutControlStringId.CustomizeDialogSaveLayout:
                return "Save Layout";
            case LayoutControlStringId.CustomizeDialogLoadLayout:
                return "Load Layout";
                
            case LayoutControlStringId.NewGroupDefaultText:
                return "Item Group";
            case LayoutControlStringId.NewLabelDefaultText:
                return "Label Item";
                
            case LayoutControlStringId.CustomizeDialogNewItemsEmptySpace:
                return "Empty Space";
            case LayoutControlStringId.CustomizeDialogNewItemsLabel:
                return "Label";
            case LayoutControlStringId.CustomizeDialogNewItemsSeparator:
                return "Separator";
            case LayoutControlStringId.CustomizeDialogNewItemsSplitter:
                return "Splitter";
            case LayoutControlStringId.CustomizeDialogNewItemsGroup:
                return "Group";
            case LayoutControlStringId.CustomizeDialogNewItemsTabbedGroup:
                return "Tabbed Group";
                
            case LayoutControlStringId.ContextMenuCustomize:
                return "Customize";
            case LayoutControlStringId.ContextMenuHideItem:
                return "Hide";
            case LayoutControlStringId.CustomizeDialogTitle:
                return "Customize";
                
            case LayoutControlStringId.ErrorBoxTitle:
                return "Error!";
            case LayoutControlStringId.ErrorFileNotFoundMessage:
                return "File not found!";
            case LayoutControlStringId.ErrorLoadingLayoutMessage:
                return "Error loading layout!";
        }
    
        return base.GetLocalizedString(id);
    }
}

````
````VB.NET
Friend Class DataLayoutEnglishLayoutControlLocalizationProvider
    Inherits LayoutControlLocalizationProvider
    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case LayoutControlStringId.CustomizeDialogHiddenItems
                Return "Hidden Items ({0})"
            Case LayoutControlStringId.CustomizeDialogNewItems
                Return "New Items ({0})"
            Case LayoutControlStringId.CustomizeDialogPageItems
                Return "Items"
            Case LayoutControlStringId.CustomizeDialogPageStructure
                Return "Structure"
            Case LayoutControlStringId.CustomizeDialogRootItem
                Return "Root"
            Case LayoutControlStringId.CustomizeDialogLayoutItem
                Return "Layout Item"
            Case LayoutControlStringId.CustomizeDialogLabelItem
                Return "Label Item"
            Case LayoutControlStringId.CustomizeDialogSplitterItem
                Return "Splitter Item"
            Case LayoutControlStringId.CustomizeDialogSeparatorItem
                Return "Separator Item"
            Case LayoutControlStringId.CustomizeDialogGroupItem
                Return "Group Item"
            Case LayoutControlStringId.CustomizeDialogTabbedGroup
                Return "Tabbed Group"
            Case LayoutControlStringId.CustomizeDialogSaveLayout
                Return "Save Layout"
            Case LayoutControlStringId.CustomizeDialogLoadLayout
                Return "Load Layout"
            Case LayoutControlStringId.NewGroupDefaultText
                Return "Item Group"
            Case LayoutControlStringId.NewLabelDefaultText
                Return "Label Item"
            Case LayoutControlStringId.CustomizeDialogNewItemsEmptySpace
                Return "Empty Space"
            Case LayoutControlStringId.CustomizeDialogNewItemsLabel
                Return "Label"
            Case LayoutControlStringId.CustomizeDialogNewItemsSeparator
                Return "Separator"
            Case LayoutControlStringId.CustomizeDialogNewItemsSplitter
                Return "Splitter"
            Case LayoutControlStringId.CustomizeDialogNewItemsGroup
                Return "Group"
            Case LayoutControlStringId.CustomizeDialogNewItemsTabbedGroup
                Return "Tabbed Group"
            Case LayoutControlStringId.ContextMenuCustomize
                Return "Customize"
            Case LayoutControlStringId.ContextMenuHideItem
                Return "Hide"
            Case LayoutControlStringId.CustomizeDialogTitle
                Return "Customize"
            Case LayoutControlStringId.ErrorBoxTitle
                Return "Error!"
            Case LayoutControlStringId.ErrorFileNotFoundMessage
                Return "File not found!"
            Case LayoutControlStringId.ErrorLoadingLayoutMessage
                Return "Error loading layout!"
        End Select
        Return MyBase.GetLocalizedString(id)
    End Function
End Class

````

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\LayoutControl\LayoutControlLocalization.cs region=SetProvider}} 
{{source=..\SamplesVB\LayoutControl\LayoutControlLocalization.vb region=SetProvider}} 

````C#
            
LayoutControlLocalizationProvider.CurrentProvider = new MyEnglishLayoutControlLocalizationProvider();

````
````VB.NET
LayoutControlLocalizationProvider.CurrentProvider = New DataLayoutEnglishLayoutControlLocalizationProvider()

````

{{endregion}}

# See Also

* [Items]({%slug winforms/layoutcontrol/items%})
* [Design Time]({%slug winforms/layoutcontrol/design-time%})
* [Getting Started]({%slug winforms/layoutcontrol/getting-started%})
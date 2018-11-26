---
title: Localization
page_title: Localization | RadPageView
description: RadPageView is yet another great addition to the Telerik UI for for WinForms suite. As the name implies, this control layouts pages of subcontrols in different views.
slug: winforms/pageview/localization/localization
tags: localization
published: True
position: 0
previous_url: pageview-localization
---

# Localization
 
To localize **RadPageView** to display control text and messages in a specific language:

* All required classes for localization are defined in the __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadPageViewLocalizationProvider__ class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of a custom localization provider, which returns translations of the default values in German:

#### Localizing RadPageView strings

{{source=..\SamplesCS\PageView\Localization.cs region=localizationImpl}} 
{{source=..\SamplesVB\PageView\Localization.vb region=localizationImpl}} 

````C#
public class MyEnglishRadPageViewLocalizationProvider : RadPageViewLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case RadPageViewStringId.CloseButtonTooltip:
                return "Close Selected Page";
            case RadPageViewStringId.ItemListButtonTooltip:
                return "Available Pages";
            case RadPageViewStringId.LeftScrollButtonTooltip:
                return "Scroll Strip Left";
            case RadPageViewStringId.RightScrollButtonTooltip:
                return "Scroll Strip Right";
            case RadPageViewStringId.ShowMoreButtonsItemCaption:
                return "Show More Buttons";
            case RadPageViewStringId.ShowFewerButtonsItemCaption:
                return "Show Fewer Buttons";
            case RadPageViewStringId.AddRemoveButtonsItemCaption:
                return "Add or Remove Buttons";
            case RadPageViewStringId.ItemCloseButtonTooltip:
                return "Close Page";
            case RadPageViewStringId.NewItemTooltipText:
                return "Add New Page";
        }
        return base.GetLocalizedString(id);
    }
}

````
````VB.NET
Public Class MyEnglishRadPageViewLocalizationProvider
    Inherits RadPageViewLocalizationProvider
    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case RadPageViewStringId.CloseButtonTooltip
                Return "Close Selected Page"
            Case RadPageViewStringId.ItemListButtonTooltip
                Return "Available Pages"
            Case RadPageViewStringId.LeftScrollButtonTooltip
                Return "Scroll Strip Left"
            Case RadPageViewStringId.RightScrollButtonTooltip
                Return "Scroll Strip Right"
            Case RadPageViewStringId.ShowMoreButtonsItemCaption
                Return "Show More Buttons"
            Case RadPageViewStringId.ShowFewerButtonsItemCaption
                Return "Show Fewer Buttons"
            Case RadPageViewStringId.AddRemoveButtonsItemCaption
                Return "Add or Remove Buttons"
            Case RadPageViewStringId.ItemCloseButtonTooltip
                Return "Close Page"
            Case RadPageViewStringId.NewItemTooltipText
                Return "Add New Page"
        End Select
        Return MyBase.GetLocalizedString(id)
    End Function
End Class

````

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Using the custom localization provider

{{source=..\SamplesCS\PageView\Localization.cs region=localizationUsage}} 
{{source=..\SamplesVB\PageView\Localization.vb region=localizationUsage}} 

````C#
RadPageViewLocalizationProvider.CurrentProvider = new MyEnglishRadPageViewLocalizationProvider();

````
````VB.NET
RadPageViewLocalizationProvider.CurrentProvider = New MyEnglishRadPageViewLocalizationProvider()

````

{{endregion}}

The code provided above illustrates the approach to be used to localize the __RadPageView__ and is not intended as a full translation.

# See Also

* [Right-to-left support]({%slug winforms/pageview/localization/right-to-left-support%})	

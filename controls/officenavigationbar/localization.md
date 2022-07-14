---
title: Localization
page_title: Localization - WinForms OfficeNavigationBar Control
description: Learn how you can localize the strings used in WinForms OfficeNavigationBar.
slug: officenavigationbar-localization
tags: localization
published: True
position: 9
---

# Localization
 
To localize __RadOfficeNavigationBar__ to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace. 

* Start by creating a descendant of the **RadOfficeNavigationBarLocalizationProvider** class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the switch statement in the example. 

Below is a sample implementation of a custom localization provider, which returns translations of the default values in English:

#### Localizing RadOfficeNavigationBar Strings 

{{source=..\SamplesCS\OfficeNavigationBar\OfficeNavigationBarGettingStarted.cs region=Localization}} 
{{source=..\SamplesVB\OfficeNavigationBar\OfficeNavigationBarGettingStarted.vb region=Localization}} 

````C#

	public class EnglishOfficeNavigationBarLocalizationProvider : RadOfficeNavigationBarLocalizationProvider
	{
		public override string GetLocalizedString(string id)
		{
			switch (id)
			{
				case RadOfficeNavigationBarStringId.NavigationOptionsMenuItemText:
					return "NavigationOptionsMenuItemText";
				case RadOfficeNavigationBarStringId.NavigationOptionsDialogTitle:
					return "NavigationOptionsDialogTitle";
				case RadOfficeNavigationBarStringId.NavigationOptionsDialogLabelMaxVisibleItems:
					return "NavigationOptionsDialogLabelMaxVisibleItems";
				case RadOfficeNavigationBarStringId.NavigationOptionsDialogLabelDisplayStyle:
					return "NavigationOptionsDialogLabelDisplayStyle";
				case RadOfficeNavigationBarStringId.NavigationOptionsDialogUseCompactFont:
					return "NavigationOptionsDialogUseCompactFont";
				case RadOfficeNavigationBarStringId.NavigationOptionsDialogLabelDisplayInOrder:
					return "NavigationOptionsDialogLabelDisplayInOrder";
				case RadOfficeNavigationBarStringId.NavigationOptionsDialogButtonMoveUp:
					return "NavigationOptionsDialogButtonMoveUp";
				case RadOfficeNavigationBarStringId.NavigationOptionsDialogButtonMoveDown:
					return "NavigationOptionsDialogButtonMoveDown";
				case RadOfficeNavigationBarStringId.NavigationOptionsDialogButtonOK:
					return "NavigationOptionsDialogButtonOK";
				case RadOfficeNavigationBarStringId.NavigationOptionsDialogButtonCancel:
					return "NavigationOptionsDialogButtonCancel";
				case RadOfficeNavigationBarStringId.NavigationOptionsDialogDropDownDisplayStyleText:
					return "NavigationOptionsDialogDropDownDisplayStyleText";
				case RadOfficeNavigationBarStringId.NavigationOptionsDialogDropDownDisplayStyleImage:
					return "NavigationOptionsDialogDropDownDisplayStyleImage";
				case RadOfficeNavigationBarStringId.NavigationOptionsDialogDropDownDisplayStyleImageAndText:
					return "NavigationOptionsDialogDropDownDisplayStyleImageAndText";
			}
			return string.Empty;
		}
	}

````
````VB.NET

Public Class EnglishOfficeNavigationBarLocalizationProvider
    Inherits RadOfficeNavigationBarLocalizationProvider

    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case RadOfficeNavigationBarStringId.NavigationOptionsMenuItemText
                Return "NavigationOptionsMenuItemText"
            Case RadOfficeNavigationBarStringId.NavigationOptionsDialogTitle
                Return "NavigationOptionsDialogTitle"
            Case RadOfficeNavigationBarStringId.NavigationOptionsDialogLabelMaxVisibleItems
                Return "NavigationOptionsDialogLabelMaxVisibleItems"
            Case RadOfficeNavigationBarStringId.NavigationOptionsDialogLabelDisplayStyle
                Return "NavigationOptionsDialogLabelDisplayStyle"
            Case RadOfficeNavigationBarStringId.NavigationOptionsDialogUseCompactFont
                Return "NavigationOptionsDialogUseCompactFont"
            Case RadOfficeNavigationBarStringId.NavigationOptionsDialogLabelDisplayInOrder
                Return "NavigationOptionsDialogLabelDisplayInOrder"
            Case RadOfficeNavigationBarStringId.NavigationOptionsDialogButtonMoveUp
                Return "NavigationOptionsDialogButtonMoveUp"
            Case RadOfficeNavigationBarStringId.NavigationOptionsDialogButtonMoveDown
                Return "NavigationOptionsDialogButtonMoveDown"
            Case RadOfficeNavigationBarStringId.NavigationOptionsDialogButtonOK
                Return "NavigationOptionsDialogButtonOK"
            Case RadOfficeNavigationBarStringId.NavigationOptionsDialogButtonCancel
                Return "NavigationOptionsDialogButtonCancel"
            Case RadOfficeNavigationBarStringId.NavigationOptionsDialogDropDownDisplayStyleText
                Return "NavigationOptionsDialogDropDownDisplayStyleText"
            Case RadOfficeNavigationBarStringId.NavigationOptionsDialogDropDownDisplayStyleImage
                Return "NavigationOptionsDialogDropDownDisplayStyleImage"
            Case RadOfficeNavigationBarStringId.NavigationOptionsDialogDropDownDisplayStyleImageAndText
                Return "NavigationOptionsDialogDropDownDisplayStyleImageAndText"
        End Select

        Return String.Empty
    End Function
End Class

````

{{endregion}} 
 

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Localizing RadDock Strings 

{{source=..\SamplesCS\OfficeNavigationBar\OfficeNavigationBarGettingStarted.cs region=SettingCustomProvider}} 
{{source=..\SamplesVB\OfficeNavigationBar\OfficeNavigationBarGettingStarted.vb region=SettingCustomProvider}}  

````C#

RadOfficeNavigationBarLocalizationProvider.CurrentProvider = new EnglishOfficeNavigationBarLocalizationProvider();

````
````VB.NET
RadOfficeNavigationBarLocalizationProvider.CurrentProvider = New EnglishOfficeNavigationBarLocalizationProvider()

````

{{endregion}} 

 
The code provided above illustrates the approach to be used to localize the __RadOfficeNavigationBar__ and is not intended as a full translation.


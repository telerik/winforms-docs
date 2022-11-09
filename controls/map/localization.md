---
title: Localization
page_title: Localization - RadMap
description: RadMap can visualize tile data from the Bing Maps and the OpenStreetMaps REST services as well as from the local file system.
slug: winforms/map/localization
tags: map, structure
published: True
position: 10
---

# Localization

All required classes for localization are defined in the __Telerik.WinControls.UI.Localization__ namespace. To localize __RadMap__ to display text in a specific language:
 
*  Start by creating a descendant of the __RadMapLocalizationProvider__ class.

*  Override the __GetLocalizedString(string id)__ method and provide a translation for the label. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement.

Below is a sample implementation of an English localization provider:

#### Localizing RadMap's Strings

{{source=..\SamplesCS\Map\MapLocalization.cs region=LocalizeText}} 
{{source=..\SamplesVB\Map\MapLocalization.vb region=LocalizeText}} 

````C#
        
public class EnglishMapLocalizationProvider : Telerik.WinControls.UI.Localization.RadMapLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case RadMapStringId.SearchBarNullText:
                return "Search";
            case RadMapStringId.ScaleIndicatorMiles:
                return "mi";
            case RadMapStringId.ScaleIndicatorKilometers:
                return "km";
            case RadMapStringId.ScaleIndicatorFeet:
                return "ft";
            case RadMapStringId.ScaleIndicatorMeters:
                return "m";
            case RadMapStringId.BingMapsAerialView:
                return "Aerial";
            case RadMapStringId.BingMapsRoadView:
                return "Road";
            case RadMapStringId.NavigationBarShowViewLabels:
                return "Show labels";
        }
        
        return string.Empty;
    }
}

````
````VB.NET
Public Class EnglishMapLocalizationProvider
    Inherits Telerik.WinControls.UI.Localization.RadMapLocalizationProvider
    Public Overrides Function GetLocalizedString(id As String) As String
        Select Case id
            Case RadMapStringId.SearchBarNullText
                Return "Search"
            Case RadMapStringId.ScaleIndicatorMiles
                Return "mi"
            Case RadMapStringId.ScaleIndicatorKilometers
                Return "km"
            Case RadMapStringId.ScaleIndicatorFeet
                Return "ft"
            Case RadMapStringId.ScaleIndicatorMeters
                Return "m"
            Case RadMapStringId.BingMapsAerialView
                Return "Aerial"
            Case RadMapStringId.BingMapsRoadView
                Return "Road"
            Case RadMapStringId.NavigationBarShowViewLabels
                Return "Show labels"
        End Select
        Return String.Empty
    End Function
End Class

````

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\Map\MapLocalization.cs region=SetMapLocalization}} 
{{source=..\SamplesVB\Map\MapLocalization.vb region=SetMapLocalization}} 

````C#
        
public MapLocalization()
{
    Telerik.WinControls.UI.Localization.RadMapLocalizationProvider.CurrentProvider = new EnglishMapLocalizationProvider();
    InitializeComponent();
}

````
````VB.NET
Public Sub New()
    Telerik.WinControls.UI.Localization.RadMapLocalizationProvider.CurrentProvider = New EnglishMapLocalizationProvider()
    InitializeComponent()
End Sub

````

{{endregion}} 
            

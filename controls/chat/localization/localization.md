---
title: Localization
page_title: Localization | RadChat
description: This article shows how you can localize all string used inside RadChat.
slug: winforms/chat/localization/localization
tags: localization
published: True
position: 0 
---

# Localization

To localize **RadChat** to display control text and messages in a specific language:

*  All required classes for localization are defined in __Telerik.WinControls.Localization__ namespace.

*  Start by creating a descendant of the **ChatLocalizationProvider** class.

*  Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

#### Localizing RadChat Strings

{{source=..\SamplesCS\Chat\ChatLocalization.cs region=myEnglishLocalizationProvider}} 
{{source=..\SamplesVB\Chat\ChatLocalization.vb region=myEnglishLocalizationProvider}} 

````C#
public class MyEnglishChatLocalizationProvider : Telerik.WinControls.Localization.ChatLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case ChatStringId.TypeAMessage: return "Type a message";
            case ChatStringId.OverlayOK: return "OK";
            case ChatStringId.OverlayCancel: return "Cancel";
            case ChatStringId.FlightCardDeparture: return "Departure";
            case ChatStringId.FlightCardArrival: return "Arrival";
            case ChatStringId.FlightCardPassenger: return "Passenger";
            case ChatStringId.FlightCardTotal: return "Total";
            default:
                break;
        }
        return base.GetLocalizedString(id);
    }
}

````
````VB.NET
Public Class MyEnglishChatLocalizationProvider
    Inherits Telerik.WinControls.Localization.ChatLocalizationProvider
    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case ChatStringId.TypeAMessage
                Return "Type a message"
            Case ChatStringId.OverlayOK
                Return "OK"
            Case ChatStringId.OverlayCancel
                Return "Cancel"
            Case ChatStringId.FlightCardDeparture
                Return "Departure"
            Case ChatStringId.FlightCardArrival
                Return "Arrival"
            Case ChatStringId.FlightCardPassenger
                Return "Passenger"
            Case ChatStringId.FlightCardTotal
                Return "Total"
            Case Else
        End Select
        Return MyBase.GetLocalizedString(id)
    End Function
End Class

````

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\Chat\ChatLocalization.cs region=localizeChat}} 
{{source=..\SamplesVB\Chat\ChatLocalization.vb region=localizeChat}} 

````C#
ChatLocalizationProvider.CurrentProvider = new MyEnglishChatLocalizationProvider();

````
````VB.NET
ChatLocalizationProvider.CurrentProvider = New MyEnglishChatLocalizationProvider()

````

{{endregion}}

The code provided above illustrates the approach to be used to localize the **RadChat** and is not intended as a full translation.
        


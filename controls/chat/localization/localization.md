---
title: Localization
page_title: Localization - RadChat
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
            case ChatStringId.TodayStamp: return "TODAY";
            case ChatStringId.YesterdayStamp: return "YESTERDAY";
            case ChatStringId.Reply: return "Reply";
            case ChatStringId.Copy: return "Copy";
            case ChatStringId.ContextMenuReply: return "Reply with quote";
            case ChatStringId.ContextMenuCopy: return "Copy";
            case ChatStringId.ContextMenuEdit: return "Edit";
            case ChatStringId.ContextMenuDelete: return "Delete";
            case ChatStringId.ReplyingToMessage: return "Replying to message";
            case ChatStringId.ReplyingTo: return "Replying to {0}";
            case ChatStringId.EditingMessage: return "Editing message";
            case ChatStringId.CancelEditing: return "Cancel editing";
            case ChatStringId.Edited: return "Edited";
            case ChatStringId.AttachmentDownload: return "Download";
            case ChatStringId.AttachmentShare: return "Share";
            case ChatStringId.AttachmentDownloadAll: return "Download All";
            case ChatStringId.SuggestedPrompts: return "Suggested Prompts";
            case ChatStringId.RecentPrompts: return "Recent Prompts";
            case ChatStringId.NullText: return "Type a message...";
            case ChatStringId.AttachFile: return "Attach";
            case ChatStringId.AttachPhoto: return "Photo";
            case ChatStringId.Send: return "Send";
            case ChatStringId.Stop: return "Stop";
            case ChatStringId.Clear: return "Clear";
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
            Case ChatStringId.TodayStamp
                Return "TODAY"
            Case ChatStringId.YesterdayStamp
                Return "YESTERDAY"
            Case ChatStringId.Reply
                Return "Reply"
            Case ChatStringId.Copy
                Return "Copy"
            Case ChatStringId.ContextMenuReply
                Return "Reply with quote"
            Case ChatStringId.ContextMenuCopy
                Return "Copy"
            Case ChatStringId.ContextMenuEdit
                Return "Edit"
            Case ChatStringId.ContextMenuDelete
                Return "Delete"
            Case ChatStringId.ReplyingToMessage
                Return "Replying to message"
            Case ChatStringId.ReplyingTo
                Return "Replying to {0}"
            Case ChatStringId.EditingMessage
                Return "Editing message"
            Case ChatStringId.CancelEditing
                Return "Cancel editing"
            Case ChatStringId.Edited
                Return "Edited"
            Case ChatStringId.AttachmentDownload
                Return "Download"
            Case ChatStringId.AttachmentShare
                Return "Share"
            Case ChatStringId.AttachmentDownloadAll
                Return "Download All"
            Case ChatStringId.SuggestedPrompts
                Return "Suggested Prompts"
            Case ChatStringId.RecentPrompts
                Return "Recent Prompts"
            Case ChatStringId.NullText
                Return "Type a message..."
            Case ChatStringId.AttachFile
                Return "Attach"
            Case ChatStringId.AttachPhoto
                Return "Photo"
            Case ChatStringId.Send
                Return "Send"
            Case ChatStringId.Stop
                Return "Stop"
            Case ChatStringId.Clear
                Return "Clear"
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
        


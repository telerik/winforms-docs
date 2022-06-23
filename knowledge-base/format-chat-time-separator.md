---
title: How to Format the Time Separator in RadChat
description: Learn how to specify the format for the time separator in the WinForms Chat.
type: how-to 
page_title: How to Format the Time Separator in RadChat
slug: format-chat-time-separator
position: 39
tags: chat, separator, time, format
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2022.1.222|RadChat for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|


## Description

**RadChat** offers the ChatElement.MessagesViewElement.**TimeSeparatorInterval** property that controls the time interval between messages that will trigger the automatic addition of a Time separator. You can set this property to 24 hours in order to display the time separator once when the date has changed. 
 
![format-chat-time-separator 001](images/format-chat-time-separator001.png)

When a new message is added, the **TimeSeparatorAdding** event is fired. It gives you the opportunity to control whether to add a time separator or not no matter the already specified TimeSeparatorInterval. 

A common requirement is to format the time separator in a specific way. This article demonstrates a sample approach how to control what text to be displayed for the time separator.
 
## Solution

It is appropriate to use the [ItemFormatting]({%slug winforms/chat/customizing-appearance/accessing-and-customizing-elements%}) event and specify the exact text you want to see for the separator:
 
![format-chat-time-separator 002](images/format-chat-time-separator002.png)


````C# 
private void RadChat1_ItemFormatting(object sender, ChatItemElementEventArgs e)
{
    ChatTimeSeparatorDataItem separator = e.ItemElement.Data as ChatTimeSeparatorDataItem;
    if (separator != null)
    {
        ChatTimeSeparatorMessage msg = separator.Message as ChatTimeSeparatorMessage;
        e.ItemElement.Text = msg.TimeStamp.ToString("dd-MM-yyyy");
    }
}
    
````
````VB.NET
Private Sub RadChat1_ItemFormatting(ByVal sender As Object, ByVal e As ChatItemElementEventArgs)
    Dim separator As ChatTimeSeparatorDataItem = TryCast(e.ItemElement.Data, ChatTimeSeparatorDataItem)

    If separator IsNot Nothing Then
        Dim msg As ChatTimeSeparatorMessage = TryCast(separator.Message, ChatTimeSeparatorMessage)
        e.ItemElement.Text = msg.TimeStamp.ToString("dd-MM-yyyy")
    End If
End Sub
 
````

# See Also

* [ItemFormatting]({%slug winforms/chat/customizing-appearance/accessing-and-customizing-elements%})
* [Chat Messages]({%slug winforms/chat/chat-items/messages%})
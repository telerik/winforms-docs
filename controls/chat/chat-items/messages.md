---
title: Messages
page_title: Chat Messages in RadChat - WinForms Chat Control
description: Learn when to use each RadChat message type and how to configure time separators, media, cards, overlays, and suggested actions.
slug: winforms/chat/chat-items/messages
tags: chat,messages,radchat
published: True
position: 2
---

# Chat Messages in RadChat

`ChatMessage` is the base message type in `RadChat`. Use the message classes in this article to display plain text, media, cards, overlays, suggested actions, and time separators in a conversation.

By default, when a user types in the input box and sends a message, `RadChat` adds the message automatically. Clear `AutoAddUserMessages` when you need to validate, replace, or delay user messages. Handle the `SendMessage` event when you need to inspect or modify a message before `RadChat` renders it.

>note Starting with R3 2018, all message types expose a `UserData` property. Use `UserData` to attach application-specific data such as identifiers, status values, or business objects to a message.

## Choose a Chat Message Type

Use the following guidance to select the correct message type:

* `ChatTextMessage`: Displays plain text from a user, bot, or system message.
* `ChatMediaMessage`: Displays an image together with author and timestamp information.
* `ChatCardMessage`: Displays a single card based on a `BaseChatCardElement`.
* `ChatCarouselMessage`: Displays multiple cards in one horizontally scrollable message.
* `ChatOverlayMessage`: Prompts the user for input in an overlay, such as selecting a date or a list item.
* `ChatSuggestedActionsMessage`: Displays quick-reply actions that the user can select.
* `ChatTimeSeparatorMessage`: Inserts a visual separator between messages when enough time has passed.

## Use ChatTimeSeparatorMessage to Group Messages by Time

`ChatTimeSeparatorMessage` adds a visual divider between messages based on elapsed time. Set `TimeSeparatorInterval` when you want `RadChat` to insert separators automatically between message groups.

>caption Figure 1: Time separators in RadChat

![RadChat conversation with time separator labels between message groups](images/chat-items-messages001.png)

### Set TimeSeparatorInterval

Use the following example to configure `TimeSeparatorInterval`:

<snippet id='chat-messages-timeseparatorinterval-cs'/>
<snippet id='chat-messages-timeseparatorinterval-vb'/>

Handle the `TimeSeparatorAdding` event when you need custom logic. This event lets you suppress or force a separator regardless of the configured `TimeSeparatorInterval`. The following example adds a time separator when the interval between messages is more than 20 seconds:

### Handle TimeSeparatorAdding

<snippet id='chat-messages-timeseparatoradding-cs'/>
<snippet id='chat-messages-timeseparatoradding-vb'/>

>caption Figure 2: Custom time separator behavior

![RadChat conversation with a separator inserted after a time gap](images/chat-items-messages003.png)

## Use ChatTextMessage for Plain Text

`ChatTextMessage` displays a single text entry from a specific author at a specific time. Use it for standard user, bot, or system replies that do not require custom content.

>caption Figure 3: Text messages in RadChat

![RadChat conversation showing plain text messages from participants](images/chat-items-messages002.png)


### Add Text Messages

Use the following example to add text messages:

<snippet id='chat-messages-addtextmessage-cs'/>
<snippet id='chat-messages-addtextmessage-vb'/>

## Use ChatMediaMessage for Images

`ChatMediaMessage` displays an image together with the same author and timestamp metadata that other chat messages use. Use it when the message content is an image instead of plain text.

>caption Figure 4: Media messages in RadChat

![RadChat conversation showing a media message with an image preview](images/chat-items-messages004.png)


### Add a Media Message

Use the following example to add a media message:

<snippet id='chat-messages-addmediamessage-cs'/>
<snippet id='chat-messages-addmediamessage-vb'/>

## Use ChatCardMessage for a Single Card

`ChatCardMessage` displays one card element derived from `BaseChatCardElement`. Use it when one structured layout, such as a product card or a summary card, fits better than plain text.

For the available card types and configuration details, see [Cards]({%slug winforms/chat/chat-items/cards%}).

## Use ChatCarouselMessage for Multiple Cards

`ChatCarouselMessage` displays multiple [card elements]({%slug winforms/chat/chat-items/cards%}) in one horizontally scrollable message. Use it when you want to present several related choices without sending several separate messages.

Starting with R3 2019, set `ShowScrollBar` when you want to display the horizontal scrollbar.

>caption Figure 5: A carousel message in RadChat

![RadChat carousel message showing several cards in one message](images/chat-items-messages005.gif)


### Add a Carousel Message with Cards

Use the following example to add a carousel message with cards:

<snippet id='chat-messages-addcarouselmessage-cs'/>
<snippet id='chat-messages-addcarouselmessage-vb'/>

## Use ChatOverlayMessage for User Input

`ChatOverlayMessage` hosts a [chat overlay]({%slug winforms/chat/chat-items/overlays%}) either as a popup or over the messages container. Use it when the user must complete an action, such as selecting a date, time, or list item, before the conversation continues.

>caption Figure 6: An overlay message in RadChat

![RadChat overlay message prompting the user for additional input](images/chat-items-messages006.gif)

### Add a ChatListOverlay Message

Use the following example to display a `ChatListOverlay` inside a `ChatOverlayMessage`:

<snippet id='chat-messages-addoverlaymessage-cs'/>
<snippet id='chat-messages-addoverlaymessage-vb'/>

>caption Figure 7: ChatListOverlay hosted in ChatOverlayMessage

![RadChat list overlay displayed inside a chat overlay message](images/chat-items-messages007.png)

`ChatOverlayMessage` can host any `BaseChatOverlay` implementation, including `ChatCalendarOverlay`, `ChatDateTimeOverlay`, `ChatListOverlay`, and `ChatTimeOverlay`.

## Use ChatSuggestedActionsMessage for Quick Replies

`ChatSuggestedActionsMessage` displays a list of `SuggestedActionDataItem` options that the user can select. Use it for quick replies and short guided flows where the next step is known in advance.

When the user selects an action, the `SuggestedActionClicked` event fires so that you can update the conversation or trigger application logic. Starting with R3 2019, set `ShowScrollBar` when you want to display the horizontal scrollbar.

>caption Figure 8: Suggested actions in RadChat

![RadChat message showing suggested actions as quick-reply buttons](images/chat-items-messages008.gif)

### Add a ChatSuggestedActionsMessage

Use the following example to add suggested actions:

<snippet id='chat-messages-addsuggestedactionsmessage-cs'/>
<snippet id='chat-messages-addsuggestedactionsmessage-vb'/>

## See Also

* [Overlays]({%slug winforms/chat/chat-items/overlays%})
* [Cards]({%slug winforms/chat/chat-items/cards%})
* [Getting Started]({%slug winforms/chat/getting-started%})
* [Reversed Order of Chat Messages]({%slug chat-messages-in-reversed-order%})
* [How to Format the Time Separator in RadChat]({%slug format-chat-time-separator%})



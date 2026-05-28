---
title: Properties, Methods and Events
page_title: Properties, Methods, Events - Chat
description: RadChat is a control that provides conversational experience.
slug: winforms/chat/properties-methods-and-events
tags: pivotgrid, properties, methods, events
published: True
position: 9
---

# RadChat's Properties

|Property|Description|
|------|------|
|**ChatElement**|Gets the main chat element.|
|**Author**|Gets or sets the current author. This instance is used when AutoAddUserMessages is set to true as well as to determine the messages alignment and styling.|
|**AutoAddUserMessages**|Gets or sets a value indicating whether messages typed by the user will automatically be added to the chat.|
|**IsMoreButtonVisible**|Gets or sets a value indicating whether the More button is visible in the input area.|
|**IsSpeechToTextButtonVisible**|Gets or sets a value indicating whether the speech-to-text button is visible in the input area.|
|**MaxVisibleAttachments**|Gets or sets the maximum number of visible attachment rows before the attachment area becomes scrollable. Default is 3.|
|**EnableReplies**|Gets or sets a value indicating whether the reply functionality is enabled. When disabled, the Reply context menu item is hidden and StartReply calls are ignored.|
|**AvatarSize**|Gets or sets the size of the avatar images.|
|**ShowAvatars**|Gets or sets whether avatar images will be displayed in the chat window next to messages.|
|**ShowMessagesOnOneSide**|Gets or sets whether messages will be displayed aligned to only one side of the chat window or on both.|
|**TimeSeparatorInterval**|Gets or sets the time interval between messages that will trigger the automatic addition of a time separator. If set to TimeSpan.Zero, no time separators will be added.|

# RadChatElement's Properties

|Property|Description|
|------|------|
|**MessagesViewElement**|Gets the messages view element.|
|**SuggestedActionsElement**|Gets the actions element.|
|**ToolbarElement**|Gets the toolbar element.|
|**InputTextBox**|Gets the input text box element.|
|**PromptInputElement**|Gets the prompt input element that provides input functionality including text entry, attached files, speech-to-text, and send capabilities.|
|**ShowToolbarButtonElement**|Gets the toolbar button element in the input box.|
|**OverlayElement**|Gets the overlay element.|
|**OverlayPopupElement**|Gets the overlay popup element.|
|**IsOverlayShown**|Indicates whether the overlay is shown.|
|**IsPopupOverlayShown**|Indicates whether the popup overlay is shown.|
|**ChatFactory**|Gets or sets the chat factory.|
|**ReplyPreviewElement**|Gets the reply preview element shown above the input area when replying to a message.|
|**EnableReplies**|Gets or sets a value indicating whether the reply functionality is enabled.|
|**MaxReplyMessages**|Gets or sets the maximum number of messages that can be replied to at once. Default is 5.|
|**IsReplyMode**|Gets a value indicating whether the chat is currently in reply mode.|
|**IsMultiReplyMode**|Gets a value indicating whether the chat is replying to multiple messages.|
|**ReplyToMessage**|Gets the first message being replied to, or null if not in reply mode.|
|**ReplyToMessages**|Gets all messages currently being replied to.|
|**IsEditMode**|Gets a value indicating whether the chat is currently in edit mode.|
|**EditMessage**|Gets the message being edited, or null if not in edit mode.|
|**IsSpeechToTextButtonVisible**|Gets or sets a value indicating whether the speech-to-text button is visible.|
|**IsMoreButtonVisible**|Gets or sets a value indicating whether the More button is visible.|
|**MaxVisibleAttachments**|Gets or sets the maximum number of visible attachment rows before scrolling.|

# Methods

|Method|Description|
|------|------|
|**ShowOverlay**|Shows the provided overlay in the control.|
|**HideOverlay**|Hides any overlays that are currently displayed by the control.|
|**AddMessage**|Adds a new message to the chat. Typical messages are ChatTextMessage, ChatSuggestedActionsMessage, ChatMediaMessage, ChatCardMessage, and ChatOverlayMessage.|
|**StartReply**|Starts a reply to the specified message. Returns true if the message was added to the reply list.|
|**RemoveFromReply**|Removes a specific message from the current multi-reply list.|
|**CancelReply**|Cancels the current reply operation and hides the reply preview.|

# Events

## RadChat Events

|Event|Description|
|------|------|
|**SendMessage**|Occurs when the user performs an action such as pressing the Enter key, clicking the Send button, or confirming an overlay interaction.|
|**SuggestedActionClicked**|Occurs when the user clicks on a Suggested Action.|
|**CardActionClicked**|Occurs when the user clicks on a Card Action.|
|**ToolbarActionClicked**|Occurs when the user clicks on a Toolbar Action.|
|**TimeSeparatorAdding**|Occurs after a new message is added. Allows you to decide whether a time separator should be inserted before the currently added message.|
|**ItemFormatting**|Occurs when the data item of a visual element is changed and the element is prepared for visualization.|
|**AttachmentActionRequested**|Occurs when the user invokes an attachment action (Download or Share) on a chat message. Set Handled to true to suppress the default behavior.|
|**AttachedFilesChanged**|Occurs after the prompt input attached files collection changes (file added or removed).|

## RadChatElement Events

|Event|Description|
|------|------|
|**ReplyStarted**|Occurs when the user starts replying to one or more messages.|
|**ReplyCancelled**|Occurs when the user cancels a reply operation.|
|**ReplyBubbleClicked**|Occurs when the user clicks a reply bubble in a sent message, allowing navigation to the original message.|
|**EditStarted**|Occurs when the user starts editing a message.|
|**EditCancelled**|Occurs when the user cancels editing a message.|
|**MessageEdited**|Occurs when a message has been edited.|
|**MessageDeleted**|Occurs when a message has been deleted.|

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radchat.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radchat.html#methods)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radchat.html#events)


---
title: Properties, Methods and Events
page_title: Properties, Methods, Events | Chat
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
|**Author**|Gets or sets the current author. This instance is used when is set to true as well as to determine the messages alignment and styling.|
|**AutoAddUserMessages**|Gets or sets a value indicating whether messages typed by the user will automatically be added as to the chat.|
|**AvatarSize**|Gets or sets the size of the avatar images.|
|**ShowAvatars**|Gets or sets whether avatar images will be displayed in the chat window next to messages.|
|**ShowMessagesOnOneSide**|Gets or sets whether messages will be displayed aligned to only one side of the chat window or on both.|
|**TimeSeparatorInterval**|Gets or sets the time interval between messages that will trigger the automatic addition of a Time separator. If set to no Time separators will be added.|

# RadChatElement's Properties

|Property|Description|
|------|------|
|**MessagesViewElement**|Gets the messages view element.|
|**SuggestedActionsElement**|Gets the actions element.|
|**ToolbarElement**|Gets the toolbar element.|
|**InputTextBox**|Gets the input box.|
|**ShowToolbarButtonElement**|Gets the toolbar button element in the input box.|
|**SendButtonElement**|Gets the send button element in the input box.|
|**OverlayElement**|Gets the overlay element.|
|**OverlayPopupElement**|Gets the overlay popup element.|
|**IsOverlayShown**|Indicates whether the overlay is shown.|
|**IsPopupOverlayShown**|Indicates whether the popup overlay is shown.|
|**ChatFactory**|Gets or sets the chat factory.|

# Methods

|Method|Description|
|------|------|
|**ShowOverlay**|Shows the provided overlay in the control.|
|**HideOverlay**|Hides any overlays that are currently displayed by the control.|
|**AddMessage**|Adds a new message to the chat. Typical messages are ChatTextMessage, ChatSuggestedActionsMessage, ChatMediaMessage, ChatCardMessage, and ChatOverlayMessage.|

# Events

|Event|Description|
|------|------|
|**SendMessage**|Occurs when the user performs an action e.g hits the Enter key, clicks the Send message button, clicks OK on an overlay.|
|**SuggestedActionClicked**|Occurs when the user clicks on a Suggested Action.|
|**CardActionClicked**|Occurs when the user clicks on a Card Action.|
|**ToolbarActionClicked**|Occurs when the user clicks on a Toolbar Action.|
|**TimeSeparatorAdding**|Occurs after a new message is added. Allows you to decide whether a time separator should be inserted before the currently added message.|
|**ItemFormatting**|Occurs when the data item of a visual element is changed and the element is prepared for visualization.|

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radchat.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radchat.html#methods)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radchat.html#events)


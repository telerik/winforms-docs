---
title: Properties, Methods and Events
page_title: Properties, Methods, Events | Chat
description: RadChat is a control that provides conversational experience.
slug: winforms/chat/properties-methods-and-events
tags: pivotgrid, properties, methods, events
published: True
position: 9
---

# Properties

|Property|Description|
|------|------|
|**ChatElement**|Gets the main chat element.|
|**Author**|Gets or sets the current author. This instance is used when is set to true as well as to determine the messages alignment and styling.|
|**AutoAddUserMessages**|Gets or sets a value indicating whether messages typed by the user will automatically be added as to the chat.|
|**TimeSeparatorInterval**|Gets or sets the time interval between messages that will trigger the automatic addition of a Time separator. If set to no Time separators will be added.|

# Methods

|Method|Description|
|------|------|
|**ShowOverlay**|Shows the provided overlay in the control.|
|**HideOverlay**|Hides any overlays that are currently displayed by the control.|
|**AddMessage**|Adds a new message to the chat. Typical messages are ChatTextMessage, ChatSuggestedActionsMessage, ChatMediaMessage, ChatCardMessage, and ChatOverlayMessage.|

# Events

|Event|Description|
|------|------|
|**SendMessage**|Occurs when the user performs an action e.g hits the Enter key, clicks the Send message button, clicks on a Suggested Action or a Card Action, clicks OK on an overlay.|
|**SuggestedActionClicked**|Occurs when the user clicks on a Suggested Action.|
|**CardActionClicked**|Occurs when the user clicks on a Card Action.|
|**ToolbarActionClicked**|Occurs when the user clicks on a Toolbar Action.|
|**TimeSeparatorAdding**|Occurs after a new message is added. Allows you to decide whether a time separator should be inserted before the currently added message.|
|**ItemFormatting**|Occurs when the data item of a visual element is changed and the element is prepared for visualization.|

# See Also

* [Properties](http://docs.telerik.com/devtools/winforms/api/html/properties_t_telerik_wincontrols_ui_radchat.htm)
* [Methods](http://docs.telerik.com/devtools/winforms/api/html/methods_t_telerik_wincontrols_ui_radchat.htm)
* [Events](http://docs.telerik.com/devtools/winforms/api/html/events_t_telerik_wincontrols_ui_radchat.htm)


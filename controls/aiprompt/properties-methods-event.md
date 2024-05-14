---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - WinForms AIPrompt Control
description: Learn the most important of the public API that the WinForms AIPrompt offers.
slug: aiprompt-properties-methods-events
tags: aiprompt, properties, methods, events
published: True
position: 4 
---

# Properties, Methods and Events for RadAIPrompt

## RadAIPromptElement's Properties

|Property|Description|
|----|----|
|**Items**|Gets the items that represent the different views of the AI Prompt control.|
|**OutputItems**|Gets the output items (the responses from the AI).|
|**ActiveItem**|Gets or sets the currently active item.|
|**ToolbarPosition**|Gets or sets the position of the toolbar.|
|**InputText**|Gets or sets the input text.|
|**ViewContainer**|Gets the container wrapping the control.|

## RadAIPromptElement's Events

|Event|Description|
|----|----|
|**PromptRequest**|Occurs when the user initiates a prompt request.|
|**OutputItemAction**|Occurs when the user initiates an interaction with the output visual item.|
|**OutputVisualItemCreated**|Occurs when a new item is added to the **OutputItems** and a new visual item is about to be added to the **AIPromptOutputView**. The event is suitable to modify or replace the visual item.|

## RadAIPromptButton's Properties

|Property|Description|
|----|----|
|**AIPrompt**|Gets or sets the **RadAIPrompt** instance that will be the child of the **Form**|
|**PopupWidth**|Gets or sets a double value for the Width of the PopupWindow hosting the **RadAIPrompt**.|
|**PopupHeight**|Gets or sets a double value for Height of the **PopupWindow** hosting the **RadAIPrompt**.|
|**IsPopupOpen**|Gets or sets a boolean value indicating whether the **Form** hosting the **RadAIPrompt** is open.|
|**PopupShowAnimation**|Gets or sets the animation played when opening the popup.|
|**PopupHideAnimation**|Gets or sets the animation played when hiding the popup.|

## AIPromptOutputItem's Properties

|Property|Description|
|----|----|
|**Title**|Gets or sets the title of the output response item.|
|**InputText**|Gets or sets the input text (the end-user's request) that was sent to the AI model.|
|**ResponseText**|Gets or sets the text response from the AI model.|
|**Rating**|Gets or sets the end-user rating for this response.|
|**Tag**|Gets or sets an object associated with this item. The developer can use this property to store information related to a specific response.|



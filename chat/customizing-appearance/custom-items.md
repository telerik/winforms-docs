---
title: Custom Items
page_title: Custom Items
description: RadChat is a control that provides conversational experience
slug: winforms/chat/customizing-appearance/custom-items
tags: chat
published: True
position: 1
---

# Custom Items

By using the [ChatFactory]({%slug winforms/chat/chatelementfactory%}), it is possible to customize all visual elements and data items in the Chat UI. It is just necessary to create your own factory, override the relevant method where the element/item you want to replace is created and create your custom class. 

Each **BaseChatItemElement** can be customized according to any specific requirements. There are different methods which can be overridden according to inner element you want to modify:

* **CreateAvatarElement** - it creates the **ChatMessageAvatarElement**.
* **CreateNameLabel** - it creates the **ChatMessageNameElement**.
* **CreateStatusLabel** - it creates the **ChatMessageStatusElement**.
* **CreateMainMessageElement** - it creates the **ChatMessageBubbleElement**.
* **CreateChildElements** - it calls all of the above methods to create all internal elements of the message.

The following example demonstrates a sample code snippet how to add a button element next to the message indicating whether you like a certain message:

>caption Figure 1. Custom message

![winforms/chat-custom-items 001](images/chat-custom-items001.gif) 

#### Creating a custom message

{{source=..\SamplesCS\Chat\ChatFactory.cs region=CustomMessage}} 
{{source=..\SamplesVB\Chat\ChatFactory.vb region=CustomMessage}}

````C#
````
````VB.NET
```` 


{{endregion}}


# See Also

* [Overview]({%slug winforms/chat/overview%})
* [Messages]({%slug winforms/chat/chat-items/messages%})
* [Cards]({%slug winforms/chat/chat-items/cards%})
* [Overlays]({%slug winforms/chat/chat-items/overlays%})
* [Suggested Actions]({%slug winforms/chat/chat-items/suggested-actions%})
* [ChatElementFactory]({%slug winforms/chat/chatelementfactory%})

 
        

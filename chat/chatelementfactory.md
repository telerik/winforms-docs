---
title: ChatElementFactory
page_title: ChatElementFactory | Chat
description: RadChat is a control that provides conversational experience
slug: winforms/chat/chatelementfactory
tags: chat
published: True
position: 4 
---

# ChatElementFactory 

The **ChatFactory** class provides means for changing the default visual elements and data items in the **RadChat** control. If you need to customize any of the **Chat UI**'s elements or items you can create a descendant of the **ChatFactory** class, override the corresponding methods and replace the default elements with custom ones.

Depending on the type of the **BaseChatDataItem**, the possible visual item elements are listed below:

|Data item|Visual item element|
|----|----|
|**TextMessageDataItem**|TextMessageItemElement|
|**CardMessageDataItem**|CardMessageItemElement|
|**CarouselMessageDataItem**|CarouselMessageItemElement|
|**MediaMessageDataItem**|MediaMessageItemElement|
|**ChatTimeSeparatorDataItem**|ChatTimeSeparatorItemElement|

Depending on the type of the **BaseChatCardDataItem**, the possible visual card elements are listed below:

|Card item|Visual card element|
|----|----|
|**ChatFlightCardDataItem**|ChatFlightCardElement|
|**ChatImageCardDataItem**|ChatImageCardElement|
|**ChatProductCardDataItem**|ChatProductCardElement|
|**ChatWeatherCardDataItem**|ChatWeatherCardElement|

For the **ToolbarActionDataItem**, the visual element is **ToolbarActionElement** and for the **SuggestedActionDataItem**, the visual element is **SuggestedActionElement**. 

The following example demonstrates how to create a custom **ChatFactory**, override the **CreateItemElement**, **CreateCardElement**, **CreateToolbarActionElement**, **CreateSuggestedActionElement** and **CreateDataItem** methods and create the desired visual element or data item considering the required type. It illustrates how the default elements and data items are created actually. If you need to implement your own, feel free to create a descendant of the desired element/item introducing the required functionality. Then, replace it in the proper method.

#### Creating a custom ChatFactory

{{source=..\SamplesCS\Chat\ChatItemFactory.cs region=CustomFactory}} 
{{source=..\SamplesVB\Chat\ChatItemFactory.vb region=CustomFactory}}

````C#
public void SetCustomFactory()
{
    this.radChat1.ChatElement.ChatFactory = new CustomChatFactory();
}
public class CustomChatFactory : ChatFactory
{
    public override BaseChatItemElement CreateItemElement(BaseChatDataItem item)
    {
        if (item.GetType() == typeof(TextMessageDataItem))
        {
            return new TextMessageItemElement();
        }
        else if (item.GetType() == typeof(CardMessageDataItem))
        {
            return new CardMessageItemElement();
        }
        else if (item.GetType() == typeof(CarouselMessageDataItem))
        {
            return new CarouselMessageItemElement();
        }
        else if (item.GetType() == typeof(MediaMessageDataItem))
        {
            return new MediaMessageItemElement();
        }
        else if (item.GetType() == typeof(ChatTimeSeparatorDataItem))
        {
            return new ChatTimeSeparatorItemElement();
        }
        return base.CreateItemElement(item);
    }
    public override BaseChatCardElement CreateCardElement(BaseChatCardDataItem cardDataItem)
    {
        if (cardDataItem.GetType() == typeof(ChatFlightCardDataItem))
        {
            return new ChatFlightCardElement(cardDataItem as ChatFlightCardDataItem);
        }
        else if (cardDataItem.GetType() == typeof(ChatImageCardDataItem))
        {
            return new ChatImageCardElement(cardDataItem as ChatImageCardDataItem);
        }
        else if (cardDataItem.GetType() == typeof(ChatProductCardDataItem))
        {
            return new ChatProductCardElement(cardDataItem as ChatProductCardDataItem);
        }
        else if (cardDataItem.GetType() == typeof(ChatWeatherCardDataItem))
        {
            return new ChatWeatherCardElement(cardDataItem as ChatWeatherCardDataItem);
        }
        return base.CreateCardElement(cardDataItem);
    }
    public override ToolbarActionElement CreateToolbarActionElement(ToolbarActionDataItem item)
    {
        return new ToolbarActionElement(item);
    }
    public override SuggestedActionElement CreateSuggestedActionElement(SuggestedActionDataItem item)
    {
        return new SuggestedActionElement(item);
    }
    public override BaseChatDataItem CreateDataItem(ChatMessage message)
    {
        ChatTextMessage textMessage = message as ChatTextMessage;
        if (textMessage != null)
        {
            return new TextMessageDataItem(textMessage);
        }
        ChatMediaMessage mediaMessage = message as ChatMediaMessage;
        if (mediaMessage != null)
        {
            return new MediaMessageDataItem(mediaMessage);
        }
        ChatCardMessage cardMessage = message as ChatCardMessage;
        if (cardMessage != null)
        {
            return new CardMessageDataItem(cardMessage);
        }
        ChatCarouselMessage carouselMessage = message as ChatCarouselMessage;
        if (carouselMessage != null)
        {
            return new CarouselMessageDataItem(carouselMessage);
        }
        return base.CreateDataItem(message);
    }
}

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
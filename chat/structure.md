---
title: Structure
page_title: Structure | Chat
description: RadChat is a control that provides conversational experience
slug: winforms/chat/structure 
tags: chat
published: True
position: 1 
---

# Structure 

This article will get you familiar with the internal elements structure of **RadChat**.

>caption Figure 1: RadChat's elements hierarchy

![winforms/chat-structure 001](images/chat-structure001.png) 


>caption Figure 2: RadChat's visual structure

![winforms/chat-structure 002](images/chat-structure002.png) 

1. **RadChatElement** - the main element in **RadChat**.
2. **ChatMessagesViewElement** - the main container that hosts the messages.
3. **RadTextBoxElement** - the text box which handles user's input.
4. **ChatMessageNameElement** - represents the author's name and time of the message. 
5. **ChatMessageBubbleElement** - contains the message's content.
6. **ChatMessageAvatarElement** - represents the author's avatar. 
7. **TextMessageItemElement** - represents a single text message.
8. **MediaMessageItemElement** - represents a single image message.
9. **ChatTimeSeparatorItemElement** - time separator between the messages in different days.

>caption Figure 3: ChatImageCardElement's visual structure

![winforms/chat-structure 003](images/chat-structure003.png) 

1. **ChatImageCardElement** - represents an image card.
2. **StackLayoutPanel** - the container that host all information elements.
3. **LightVisualElement** - represents a single text/image element in the card.

**ChatProductCardElement** and **ChatWeatherCardElement** have identical visual structure: one **StackLayoutPanel** that hosts several **LightVisualElement** s.

>caption Figure 4: ChatProductCardElement's visual structure

![winforms/chat-structure 005](images/chat-structure005.png) 

>caption Figure 5: ChatWeatherCardElement's visual structure

![winforms/chat-structure 006](images/chat-structure006.png) 


>caption Figure 6: ChatFlightCardElement's visual structure

![winforms/chat-structure 004](images/chat-structure004.png) 

 1. **ChatFlightCardElement** - represents a flight card.
 2. **FlightStackLayoutPanel** - the container that hosts the flight information elements.
 3. **FlightCardAirportInfo** - represents a single flight information element.
 4. **LightVisualElement** - represents a single text/image element in the card.

# See Also

* [Overview]({%slug winforms/chat/overview%})
* [Getting Started]({%slug winforms/chat/getting-started%})
 
        

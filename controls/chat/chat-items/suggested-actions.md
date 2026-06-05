---
title: Suggested Actions
page_title: Suggested Actions - WinForms Chat Control
description: WinForms Chat offers different suggested actions to present the user a selection of action choices. 
slug: winforms/chat/chat-items/suggested-actions
tags: chat, actions
published: True
position: 4 
---

# Suggested Actions

**RadChat** offers different suggested actions to present the user a selection of action choices. Once an action is selected, the **SuggestedActionClicked** event is fired. Then, you can choose how to proceed further, e.g. adding a message with the user's choice. The **SuggestedActionEventArgs** gives you access to the **SuggestedActionDataItem**. 


>caption Figure 1: Suggested Actions

![WinForms RadChat Suggested Actions](images/chat-items-suggested-actions001.gif) 

**SuggestedActionDataItem** is single action unit that can be added to a [ChatSuggestedActionsMessage]({%slug winforms/chat/chat-items/messages%}). Since R3 2019 you can use the __ShowScrollBar__ property in order to show the horizontal scrollbar. 

#### Adding a SuggestedActionDataItem

<snippet id='chat-suggested-actions-addsuggestedactions-cs'/>
<snippet id='chat-suggested-actions-addsuggestedactions-vb'/>



 
 
# See Also

* [Messages]({%slug winforms/chat/chat-items/messages%})
* [Cards]({%slug winforms/chat/chat-items/cards%})
* [Getting Started]({%slug winforms/chat/getting-started%})
 
        

---
title: Suggested Actions
page_title: Suggested Actions | Chat
description: RadChat is a control that provides conversational experience
slug: winforms/chat/chat-items/suggested-actions
tags: chat, actions
published: True
position: 4 
---

# Suggested Actions

**RadChat** offers different suggested actions to present the user a selection of action choices. Once an action is selected, the **SuggestedActionClicked** event is fired. Then, you can choose how to proceed further, e.g. adding a message with the user's choice. The **SuggestedActionEventArgs** gives you access to the **SuggestedActionDataItem**. 


>caption Figure 1: Suggested Actions

![winforms/chat-items-suggested-actions 001](images/chat-items-suggested-actions001.gif) 

**SuggestedActionDataItem** is single action unit that can be added to a [ChatSuggestedActionsMessage]({%slug winforms/chat/chat-items/messages%})

#### Adding a SuggestedActionDataItem

{{source=..\SamplesCS\Chat\ChatOverlaysActions.cs region=AddSuggestedActions}} 
{{source=..\SamplesVB\Chat\ChatOverlaysActions.vb region=AddSuggestedActions}}

````C#
        
private void AddSuggstedActions()
{
    this.radChat1.AddMessage(new ChatTextMessage("Hello, what kind of a vacation do you need?", this.radChat1.Author, DateTime.Now));
    
    List<SuggestedActionDataItem> actions = new List<SuggestedActionDataItem>();
    
    actions.Add(new SuggestedActionDataItem("Family trip"));
    actions.Add(new SuggestedActionDataItem("Summer holiday with friends"));
    actions.Add(new SuggestedActionDataItem("Business trip"));
    
    Author author = new Author(Properties.Resources.andrew1, "Andrew");
    ChatSuggestedActionsMessage suggestionActionsMessage = new ChatSuggestedActionsMessage(actions, author, DateTime.Now);
    this.radChat1.AddMessage(suggestionActionsMessage);
    this.radChat1.SuggestedActionClicked += radChat1_SuggestedActionClicked;
}
        
private void radChat1_SuggestedActionClicked(object sender, SuggestedActionEventArgs e)
{
    this.radChat1.AddMessage(new ChatTextMessage("You have chosen " + e.Action.Text, this.radChat1.Author, DateTime.Now)); 
}

````
````VB.NET
```` 


{{endregion}}
 
 
# See Also

* [Messages]({%slug winforms/chat/chat-items/messages%})
* [Cards]({%slug winforms/chat/chat-items/cards%})
* [Getting Started]({%slug winforms/chat/getting-started%})
 
        

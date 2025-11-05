---
title: Resizing and Wrapping Text in ChatCardAction for RadChat
description: Learn how to resize and wrap text in ChatCardAction buttons within RadChat cards in UI for WinForms.
type: how-to
page_title: How to Resize and Wrap Text for ChatCardAction in RadChat
meta_title: How to Resize and Wrap Text for ChatCardAction in RadChat
slug: chat-resize-wrap-text-cardaction
tags: chat, ui-for-winforms, chatcardaction, itemformatting, textwrap, resizing
res_type: kb
ticketid: 1702233
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.3.812|RadChat for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In the following tutorial, we will demonstrate how to wrap the text in ChatCardAction buttons within RadChat cards. Additionally, we will demonstrate how to increase the size of the entire chat card.

This knowledge base article also answers the following questions:
- How can I make ChatCardAction text wrap in RadChat?
- How do I increase the size of RadChat cards?
- How to customize the appearance of ChatCardAction buttons?

## Solution

To resize and wrap the text in ChatCardAction buttons and increase the size of the RadChat card, use the following approach:

1. Handle the `ItemFormatting` event of RadChat.
2. Target the `ChatImageCardElement` and its child elements representing the action buttons.
3. Set the `TextWrap` property to enable text wrapping for the action buttons.
4. Customize the size of the card by modifying its child elements.

### Code Example

Use this code to enable text wrapping for ChatCardAction buttons and resize the chat card:

````C#

private void RadChat1_ItemFormatting1(object sender, ChatItemElementEventArgs e)
{
    CardMessageItemElement cardMessageItemElement = e.ItemElement as CardMessageItemElement;
	if (cardMessageItemElement != null)
	{
		LightVisualElement bubble2 = e.ItemElement.MainMessageElement;
		if (e.ItemElement.MainMessageElement is ChatMessageBubbleElement bubbleElement)
		{
			ChatImageCardElement imageCard = bubbleElement.FindDescendant<ChatImageCardElement>();
			if (imageCard != null)
			{
				imageCard.MaxSize = new Size(0,0);
				imageCard.Children[0].MinSize= new Size(280, 350); // this is the StackLayoutPanel holding the elements
				foreach (LightVisualElement lve in imageCard.Children[0].Children)
				{
					lve.TextWrap = true;
				}
			}
		}
		e.ItemElement.DrawFill = true;
		//e.ItemElement.BackColor = Color.LightBlue;
		e.ItemElement.TextAlignment = ContentAlignment.MiddleLeft;
		e.ItemElement.TextWrap = true;
		bubble2.TextWrap = true;
		bubble2.MaxSize = new Size(280, 350);
		bubble2.MinSize = new Size(280, 350);
	}  
}

````

### Key Steps

1. Use the `FindDescendant` method to locate the `ChatImageCardElement`.
2. Access its child elements to customize the `TextWrap` property of action buttons.
3. Adjust the size of the `StackLayoutPanel` holding the card elements to increase the overall card size.

## See Also

* [RadChat Overview](https://docs.telerik.com/devtools/winforms/controls/chat/overview)
* [Item Formatting Event](https://docs.telerik.com/devtools/winforms/controls/chat/customizing-appearance/accessing-and-customizing-elements)


---
title: Inserting a Message at a Specific Index in RadChat
description: Learn how to insert a message at a specific index in the RadChat control in UI for WinForms. This guide explains how to utilize the `Insert` method with a `BaseChatDataItem`.
type: how-to
page_title: How to Insert a Message at a Specific Index in RadChat Control
meta_title: How to Insert a Message at a Specific Index in RadChat Control
slug: chat-insert-message-specific-index
tags: chat, ui-for-winforms, insert-message, basechatdataitem, messagesviewelement
res_type: kb
ticketid: 1694976
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.3.812|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In this tutorial, we will demonstrate how to insert a new message at a specific index in the RadChat control.

## Solution

To insert a message at a specific index in RadChat, use the `Insert()` method with a `BaseChatDataItem`. Follow these steps:

1. Access the existing messages in RadChat using the `MessagesViewElement.Items` collection.
2. Create a `ChatMediaMessage` or another appropriate message type.
3. Convert the message into a `BaseChatDataItem` using the `ChatFactory.CreateDataItem()` method.
4. Use the `Insert()` method to place the new message at a specific index.

Here is an example:

````C#

private void InsertMediaMessageAtBeginning()
{
    ChatMediaMessage mediaMessage = new ChatMediaMessage(Properties.Resources.AndrewFuller, new Size(300, 200), null, this.radChat1.Author, DateTime.Now);
    BaseChatDataItem baseChatDataItem = this.radChat1.ChatElement.ChatFactory.CreateDataItem(mediaMessage);
    this.radChat1.ChatElement.MessagesViewElement.Items.Insert(0, baseChatDataItem);
}

````

## See Also

* [RadChat Documentation](https://docs.telerik.com/devtools/winforms/controls/chat/overview)

* [RadChat Messages](https://docs.telerik.com/devtools/winforms/controls/chat/chat-items/messages)

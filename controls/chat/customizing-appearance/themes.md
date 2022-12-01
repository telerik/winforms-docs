---
title: Themes
page_title: Themes - RadChat
description: This article shows how you can change the styles of RadChat in Visual Style Builder.
slug: winforms/chat/customizing-appearance/themes
tags: chat, themes
published: True
position: 3
---

# Themes

This help article will demonstrate a step by step tutorial how to customize the `Metro` theme for **RadChat**

1. Open [Visual Style Builder] ({%slug winforms/tools/visual-style-builder/starting-vsb%})
2. Export the built-in themes in a specific folder by selecting `File` >> `Export Built-in Themes`.
3. Load a desired theme from the just exported files by selecting `File` >> `Open Package`.
4. Expand **RadChat** and select the `ChatMessageBubbleElement`. 
   ![WinForms RadChat chat-themes 001](images/chat-themes001.png)

5. For the `IsOwnMessage` element state, open the `Edit Repository Item` dialog and change the `BackColor`:
   ![WinForms RadChat chat-themes 002](images/chat-themes002.png)

6. Expand the **RadTextBoxElement** and select the `ChatShowToolbarElement`.
   ![WinForms RadChat chat-themes 003](images/chat-themes003.png)

7. For the default and `MouseOver` element states, open the `Edit Repository Item` dialog and change the `ForeColor`:
   ![WinForms RadChat chat-themes 004](images/chat-themes004.png)

8. Select the `ChatSendButtonElement`.
   ![WinForms RadChat chat-themes 005](images/chat-themes005.png)

9. For the default and `MouseOver` element states, open the `Edit Repository Item` dialog and change the `Image`:
   ![WinForms RadChat chat-themes 006](images/chat-themes006.png)

10. The bellow image shows the result.
   ![WinForms RadChat chat-themes 007](images/chat-themes007.png)

>note The following article shows how you can use the new theme: [Using Custom Themes]({%slug winforms/themes/using-custom-themes%}).

# See Also

* [Structure]({%slug winforms/chat/structure %})
* [Accessing and Customizing Elements]({%slug winforms/chat/customizing-appearance/accessing-and-customizing-elements%})

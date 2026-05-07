---
title: Formatting Blocks
page_title: Formatting Blocks - RadAutoCompleteBox
description: This article shows how one can change the tokenized elements styles.
slug: winforms/editors/autocompletebox/formatting-blocks
tags: formatting,blocks
published: True
position: 0
previous_url: editors-autocompletetextbox-formatting-blocks, editors/autocompletebox/formatting-blocks
---

# Formatting Blocks

The __RadAutoCompleteBox__ allows appearance customization of each instance of __ITextBlock__. This can be easily achieved by subscribing to the __FormattingTextBlock__ event: 

<snippet id='editors-autocompletebox-formatting-cs' />
<snippet id='editors-autocompletebox-formatting-vb' />



>caption Figure 1: Items with yellow background.

![WinForms RadAutoCompleteBox Items With Yellow Background](images/editors-autocompletebox-formatting-blocks001.png)

Note that the event occurs when the text blocks are repositioned. This happens in different cases - editing, control resizing and etc. Hence, you should subscribe to the event before initializing the __Text__ property.
		
# See Also

* [Customize Fill and Border]({%slug winforms/editors/autocompletebox/fill-and-border%})
* [Themes]({%slug winforms/editors/autocompletebox/themes%})

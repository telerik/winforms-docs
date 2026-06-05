---
title: Formatting Blocks
page_title: Formatting Blocks - RadTextBoxControl
description: Formatting Blocks
slug: winforms/editors/textboxcontrol/formatting-blocks
tags: formatting,blocks
published: True
position: 2
previous_url: editors-textboxcontrol-formatting-blocks, editors/textboxcontrol/formatting-blocks
---

# Formatting Blocks

The RadTextBoxControl allow appearance customization of each instance of __ITextBlock__. This can be easily achieved by subscribing to the __FormattingTextBlock__ event: 

#### Subscribing to TextBlockFormatting event

<snippet id='editors-textboxcontrol-formatting1-cs' />
<snippet id='editors-textboxcontrol-formatting1-vb' />



#### The TextBlockFormatting event handler

<snippet id='editors-textboxcontrol-formatting2-cs' />
<snippet id='editors-textboxcontrol-formatting2-vb' />



![WinForms RadTextBoxControl Formatting Blocks](images/editors-textboxcontrol-formatting-blocks001.png)

>note Notice that the event occurs when the text blocks are repositioned. This happens in different cases: editing, control resizing and etc. Hence, you should subscribe to the event before initializing the __Text__ property.

# See Also

* [Themes]({%slug winforms/editors/radtextboxcontrol/themes%})
* [Customizing Appearance]({%slug winforms/editors/textboxcontrol/customizing-appearance%})

---
title: Creating Custom Blocks
page_title: Creating Custom Blocks - WinForms AutoCompleteBox Control
description: Learn how you can create custom tokens with RadAutoCompleteBox.
slug: winforms/editors/autocompletebox/creating-custom-blocks
tags: creating,custom,blocks
published: True
position: 7
previous_url: editors-autocompletetextbox-creating-custom-blocks
---

# Creating Custom Blocks

__RadAutoCompleteBox__ allows not only appearance customization via the formatting event, but also replacement of the default UI block representation. The __CreateTextBlock__ event exposes this possibility.
        

You should create a custom text block that inherits from __ITextBlock__ and any inheritor of __RadElement__. Let’s extend the default __TokenizedTextBlockElement__ by adding a check box. You don’t need to implement the __ITextBlock__ interface, because it is already defined in the base class: 

<snippet id='editors-autocompletebox-customtokens-cs' />
<snippet id='editors-autocompletebox-customtokens-vb' />



Then you should replace the default text block in the __CreateTextBlock__ event handler, in the following manner: 

<snippet id='editors-autocompletebox-replacetokens-cs' />
<snippet id='editors-autocompletebox-replacetokens-vb' />



Finally, the text property should be set:

>note The subscription to the event, should be introduced before setting the text of the control.
>
 

<snippet id='editors-autocompletebox-subscribetocreatetextblock-cs' />
<snippet id='editors-autocompletebox-subscribetocreatetextblock-vb' />



The following image demonstrates the final result:

![WinForms RadAutoCompleteBox Creating Custom Blocks](images/editors-autocompletebox-creating-custom-blocks001.png)


# See Also

* [Caret Positioning and Selection]({%slug winforms/editors/autocompletebox/caret-positioning-and-selection%}) 
* [Element Structure and Document Object Model]({%slug winforms/editors/autocompletebox/element-structure-and-document-object-model%})
* [Properties and Events]({%slug winforms/editors/autocompletebox/formatting-blocks%})
* [Text Editing]({%slug winforms/editors/autocompletebox/text-editing%})
* [Auto-Complete]({%slug winforms/editors/autocompletebox/auto-complete%})

---
title: Text Editing
page_title: Text Editing - WinForms AutoCompleteBox Control
description: Learn how you can edit the text in the code behind.
slug: winforms/editors/autocompletebox/text-editing
tags: text,editing
published: True
position: 5
previous_url: editors-autocompletebox-text-editing
---

# Text Editing

The editing point is determined by the caret position and selection in __RadAutoCompleteBox__. The editing position is visible only if the control is focused.
        

You can insert text programmatically at concrete position by using the __Insert__ method. In this case, the text is inserted at the position determined by the __SelectionStart__ property. If the __SelectionLength__ property is greater than zero, the inserted text replaces the selected text. 

#### Using the Insert method.

<snippet id='editors-autocompletebox-insert-cs' />
<snippet id='editors-autocompletebox-insert-vb' />



>caption Figure 1: Inserting text.

![WinForms RadAutoCompleteBox Inserting text](images/editors-autocompletebox-text-editing001.png)

Alternatively, you can insert text at the end of the __RadAutoCompleteBox__ content by using the __AppendText__ method: 

#### Using the AppendText method. 

<snippet id='editors-autocompletebox-append-cs' />
<snippet id='editors-autocompletebox-append-vb' />



>caption Figure 2: The text is appended at the end.

![WinForms RadAutoCompleteBox Text is Appended at the End](images/editors-autocompletebox-text-editing002.png)

You can delete the selected text or character at the caret position by using the __Delete__ method: 

#### Using the Delete method.

<snippet id='editors-autocompletebox-delete-cs' />
<snippet id='editors-autocompletebox-delete-vb' />



>caption Figure 3: The firs word is deleted. 

![WinForms RadAutoCompleteBox The Firs Word Deleted](images/editors-autocompletebox-text-editing003.png)

Each editing operation raises the __TextChanging__ and __TextChanged__ events. Notice that you can prevent successful finishing of operation by subscribing to the __TextChanging__ event: 

#### Prevent deleting a tokenized text blocks in RadAutoCompleteBox.

<snippet id='editors-autocompletebox-preventdeleteoftokens-cs' />
<snippet id='editors-autocompletebox-preventdeleteoftokens-vb' />



The code above prevents deleting a tokenized text blocks in RadAutoCompleteBox.


# See Also

* [Caret Positioning and Selection]({%slug winforms/editors/autocompletebox/caret-positioning-and-selection%})
* [Creating Custom Blocks]({%slug winforms/editors/autocompletebox/creating-custom-blocks%})
* [Element Structure and Document Object Model]({%slug winforms/editors/autocompletebox/element-structure-and-document-object-model%})
* [Properties and Events]({%slug winforms/editors/autocompletebox/formatting-blocks%})
* [Auto-Complete]({%slug winforms/editors/autocompletebox/auto-complete%})

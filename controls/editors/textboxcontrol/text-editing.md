---
title: Text editing
page_title: Text editing - WinForms TextBoxControl
description: Use the RadtextBoxControl API to edit the text in the code behind.
slug: winforms/editors/textboxcontrol/text-editing
tags: text,editing
published: True
position: 6
previous_url: editors-textboxcontrol-text-editing
---

# Text editing

The editing point is determined by the caret position and selection in __RadTextBoxControl__. The editing position is visible only if the control is focused.
        

You can insert text programmatically at concrete position by using the __Insert__ method. At that case, the text is inserted at the position determined by the __SelectionStart__ property. If the __SelectionLength__ property is greater than zero, the inserted text replaces the selected text. 

#### Insert string.
<snippet id='editors-textboxcontrol-insert-cs' />
<snippet id='editors-textboxcontrol-insert-vb' />



>caption Figure 1: The string is inserted at the specified position.

![WinForms RadTextBoxControl Insert String](images/editors-textboxcontrol-text-editing001.png)

Alternatively, you can insert text at the end of the RadTextBoxControl content by using the __AppendText__ method: 

### Append specific string.
<snippet id='editors-textboxcontrol-appendtext-cs' />
<snippet id='editors-textboxcontrol-appendtext-vb' />



>caption Figure 2: The string is added at the end of the existing text.

![WinForms RadTextBoxControl Add String At The End](images/editors-textboxcontrol-text-editing002.png)

You can delete the selected text or character at the caret position by using the __Delete__ method: 

#### Select and delete a word.
<snippet id='editors-textboxcontrol-delete-cs' />
<snippet id='editors-textboxcontrol-delete-vb' />



>caption Figure 3: The first word is deleted.

![WinForms RadTextBoxControl Delete First Word](images/editors-textboxcontrol-text-editing003.png)

Each editing operation raises the __TextChanging__ and __TextChanged__ events. Notice that you can prevent successful finishing of operation by subscribing to the __TextChanging__ event: 

#### Cancel the ex changing if the entire text is deleted.

<snippet id='editors-textboxcontrol-textchanging-cs' />
<snippet id='editors-textboxcontrol-textchanging-vb' />



# See Also

* [AutoComplete]({%slug winforms/editors/textboxcontrol/autocomplete%})
* [Caret positioning and selection]({%slug winforms/editors/textboxcontrol/caret-positioning-and-selection%})
* [Creating custom blocks]({%slug winforms/editors/textboxcontrol/creating-custom-blocks%})
* [Structure]({%slug winforms/editors/textboxcontrol/element-structure-and-document-object-model%})
* [Properties and Events]({%slug winforms/editors/textboxcontrol/properties%})
* [Text editing]({%slug winforms/editors/textboxcontrol/text-editing%})

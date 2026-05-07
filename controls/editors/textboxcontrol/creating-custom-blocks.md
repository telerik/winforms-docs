---
title: Creating custom blocks
page_title: Creating custom blocks - WinForms TextBoxControl
description: Shows how you can create a custom text block and replace a word with a button for example.
slug: winforms/editors/textboxcontrol/creating-custom-blocks
tags: creating,custom,blocks
published: True
position: 9
previous_url: editors-textboxcontrol-creating-custom-blocks
---

# Creating custom blocks


The __RadTextBoxControl__ allows not only appearance customizations via the formatting event, but also a replacement of the default UI block representation. The __CreateTextBlock__ event exposes this possibility.
        

You should create a custom text block that inherits from __ITextBlock__ and any inheritor of `RadElement`. Let’s create a button text block that should be created for each occurrence of the string here:
        

First, you should create a button that implements __ITextBlock__ interface: 

<snippet id='editors-textboxcontrol-customtextblock-cs' />
<snippet id='editors-textboxcontrol-customtextblock-vb' />



Then you should subscribe to the __CreateTextBlock__ event before initializing the __Text__ property: 

<snippet id='editors-textboxcontrol-applycustomtextblock1-cs' />
<snippet id='editors-textboxcontrol-applycustomtextblock1-vb' />



<snippet id='editors-textboxcontrol-applycustomtextblock2-cs' />
<snippet id='editors-textboxcontrol-applycustomtextblock2-vb' />



Finally, the __Text__ property should be set: 

<snippet id='editors-textboxcontrol-applycustomtextblock3-cs' />
<snippet id='editors-textboxcontrol-applycustomtextblock3-vb' />



>caption Figure 1: The "here" word is replaced with a button.

![WinForms RadTextBoxControl The "here" word is replaced with a button](images/editors-textboxcontrol-creatng-custom-blocks001.png)

# See Also

* [Caret positioning and selection]({%slug winforms/editors/textboxcontrol/caret-positioning-and-selection%})
* [AutoComplete]({%slug winforms/editors/textboxcontrol/autocomplete%})
* [Structure]({%slug winforms/editors/textboxcontrol/element-structure-and-document-object-model%})
* [Properties and Events]({%slug winforms/editors/textboxcontrol/properties%})
* [Text editing]({%slug winforms/editors/textboxcontrol/text-editing%})

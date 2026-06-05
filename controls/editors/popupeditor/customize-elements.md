---
title: Customize Elements
page_title: Customize Elements - RadPopupEditor
description: This article shows how you can access and change the properties of the PopupEditor elements. 
slug: winforms/editors/popupeditor/customize-elements
tags: customize,elements
published: True
position: 6
previous_url: editors-popupeditor-customize-elements
---

# Customize Elements

## Customizing the Text Box

You can access the text box by using the __TextBoxElement__ property. This allows you to change any property specific to the text box. For example the following code snippet shows how you can change the __Font__ and the __ForeColor__:

#### Customize TextBoxElement 

<snippet id='editors-popupeditorcode-textbox-cs' />
<snippet id='editors-popupeditorcode-textbox-vb' />



>caption Figure 1: Customizing the text box Font and ForeColor.

![WinForms RadPopupEditor Customizing Font and ForeColor](images/editors-popupeditor-customize-elements001.png)

## Customizing the Arrow Button

The arrow button can be accessed via the __ArrowButtonElement__ property. The following example shows how you can access and set the __BackColor__ of the button:


#### Set arrow button BackColor 

<snippet id='editors-popupeditorcode-button-cs' />
<snippet id='editors-popupeditorcode-button-vb' />



>caption Figure 2: Set Arrow Button BackColor.

![WinForms RadPopupEditor Arrow Button BackColor](images/editors-popupeditor-customize-elements002.png)

## Customizing the Popup

The popup can be access with the __Popup__ property. This gives you access to all public popup properties and elements. For example you can change the __BackColor__ of the popup like this:

#### Change Popup BackColor

<snippet id='editors-popupeditorcode-dropdown-cs' />
<snippet id='editors-popupeditorcode-dropdown-vb' />



>caption Figure 3: Change Popup BackColor.

![WinForms RadPopupEditor Change Popup BackColor](images/editors-popupeditor-customize-elements003.png)

# See Also

 * [Properties, Events and Methods]({%slug winforms/editors/popupeditor/properties,-events-and-methods%})

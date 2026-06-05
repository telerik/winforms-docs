---
title: Tooltips
page_title: Tooltips - UI for WinForms Documentation
description: RadDropDownButton provides a menu-like interface open from a button. Each of the items of RadDropDownButton can be set to perform an action when clicked.
slug: winforms/buttons/dropdownbutton/tooltips
tags: dropdownbutton
published: True
position: 6 
---

# Tooltips

There are two ways to assign tooltips to __RadDropDownButton__, namely setting the __ToolTipText__ property of the __DropDownButtonElement__, or as in most of the RadControls by using the __ToolTipTextNeeded__ event of __RadDropDownButton__. It is necessary the __ShowItemToolTips__ property to be set to *true* which is the default value.

#### Setting the ToolTipText property

<snippet id='buttons-dropdownbutton-tooltips-settooliptext-cs' />
<snippet id='buttons-dropdownbutton-tooltips-settooliptext-vb' />



>note In order to assign different tooltips for the action part and the arrow button, you must specify the __ToolTipText__ property of the DropDownButtonElement.__ActionButton__ or DropDownButtonElement.__ArrowButton__ element.

![WinForms RadButtons buttons-dropdownbutton-tooltips 001](images/buttons-dropdownbutton-tooltips001.gif)

#### Setting tool tips in the ToolTipTextNeeded event

<snippet id='buttons-dropdownbutton-tooltips-tooltiptextneeded-cs' />
<snippet id='buttons-dropdownbutton-tooltips-tooltiptextneeded-vb' />



![WinForms RadButtons buttons-dropdownbutton-tooltips 002](images/buttons-dropdownbutton-tooltips002.gif)

>note The __ToolTipTextNeeded__ event has higher priority and overrides the tool tips set in  the __ToolTipText__ property.



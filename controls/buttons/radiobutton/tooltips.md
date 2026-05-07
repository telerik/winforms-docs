---
title: Tooltips
page_title: Tooltips - UI for WinForms Documentation
description: RadRadioButton replaces the WinForms RadioButton control and adds robust data binding, state management, and design options. 
slug: winforms/buttons/radiobutton/tooltips
tags: radiobutton
published: True
position: 7
---

# Tooltips

There are two ways to assign tooltips to __RadRadioButton__, namely setting the __ToolTipText__ property of the __RadRadioButtonElement__, or as in most of the RadControls by using the __ToolTipTextNeeded__ event of __RadRadioButton__. It is necessary the __ShowItemToolTips__ property to be set to *true* which is the default value.

#### Setting the ToolTipText property

<snippet id='buttons-radiobutton-tooltips-settooliptext-cs' />
<snippet id='buttons-radiobutton-tooltips-settooliptext-vb' />




![WinForms RadRadioButton ToolTipText](images/buttons-radibutton-tooltips001.png)

#### Setting tool tips in the ToolTipTextNeeded event

<snippet id='buttons-radiobutton-tooltips-tooltiptextneeded-cs' />
<snippet id='buttons-radiobutton-tooltips-tooltiptextneeded-vb' />



![WinForms RadRadioButton ToolTipTextNeeded](images/buttons-radibutton-tooltips002.png)

>note The __ToolTipTextNeeded__ event has higher priority and overrides the tool tips set in the __ToolTipText__ property.


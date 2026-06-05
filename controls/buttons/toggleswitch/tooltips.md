---
title: Tooltips
page_title: Tooltips - UI for WinForms Documentation
description: RadToggleSwitch is a control designed to represent two states- e.g. true/false, On/Off, etc.

slug: winforms/buttons/toggleswitch/tooltips
tags: toggleswitch
published: True
position: 6 
---

# Tooltips

There are two ways to assign tooltips to __RadToggleSwitch__, namely setting the __ToolTipText__ property of the __RadToggleSwitchElement__, or as in most of the RadControls by using the __ToolTipTextNeeded__ event of __RadToggleSwitch__. It is necessary the __ShowItemToolTips__ property to be set to *true* which is the default value.

#### Setting the ToolTipText property

<snippet id='buttons-toggleswitch-tooltips-settooliptext-cs' />
<snippet id='buttons-toggleswitch-tooltips-settooliptext-vb' />

![WinForms RadToggleSwitch ToolTipText](images/buttons-toggleswitch-tooltips001.png)

#### Setting tool tips in the ToolTipTextNeeded event

<snippet id='buttons-toggleswitch-tooltips-tooltiptextneeded-cs' />
<snippet id='buttons-toggleswitch-tooltips-tooltiptextneeded-vb' />

![WinForms RadToggleSwitch ToolTipTextNeeded](images/buttons-toggleswitch-tooltips002.png)

>note The __ToolTipTextNeeded__ event has higher priority and overrides the tool tips set in  the __ToolTipText__ property.

 

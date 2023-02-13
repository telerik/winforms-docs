---
title: Structure
page_title: Structure - UI for WinForms Documentation
description: RadToggleSwitch is a control designed to represent two states- e.g. true/false, On/Off, etc.

slug: winforms/buttons/toggleswitch/structure
tags: structure
published: True
position: 1
previous_url: buttons-toggleswitch-structure
---

# Structure

This article will show the internal elements structure of __RadToggleSwitch__:

>caption Fiure 1: RadToggleSwitch's elements hierarchy

![WinForms RadToggleSwitch's Elements Hierarchy](images/buttons-toggleswitch-structure002.png)

This article describes the inner structure and organization of the elements which build the __RadToggleSwitch__ control.
        
>caption Figure 2: RadToggleSwitch visual structure

![WinForms RadToggleSwitch Visual Structure](images/buttons-toggleswitch-structure001.png)

1. __ToggleSwitchPartElement__: visual representation of the RadToggleSwitchElement.__OnElement__.
            

1. __ToggleSwitchThumbElement__: visual representation of the RadToggleSwitchElement.__Thumb__.
            

1. __ToggleSwitchPartElement__: visual representation of the RadToggleSwitchElement.__OffElement__.
            

>note Depending on the __Value__ only one of the __ToggleSwitchPartElement__ s is shown.
>


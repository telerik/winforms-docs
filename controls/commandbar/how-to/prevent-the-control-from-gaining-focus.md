---
title: Prevent the control from gaining focus
page_title: Prevent the control from gaining focus - UI for WinForms Documentation
description: Prevent the control from gaining focus
slug: winforms/commandbar/how-to/prevent-the-control-from-gaining-focus
tags: prevent,the,control,from,gaining,focus
published: True
position: 2
previous_url: commandbar-howto-prevent-the-control-from-gaining-focus
---

# Prevent the control from gaining focus

Currently, __RadCommandBar__ receives the focus. One can easily override this behavior and do not allow the control to become focused. Here are the three simple steps that need to be followed:
        

1. Create a custom class that derives from __RadCommandBar__;

1. Override the __ThemeClassName__ property, so that the theming mechanism can recognize the new control as a __RadCommandBar__;

1. Override the ProcessFocusRequested method and return false. 
 

<snippet id='commandbar-prevent-the-control-from-gaining-focus-forbidfocus-cs'/>
<snippet id='commandbar-prevent-the-control-from-gaining-focus-forbidfocus-vb'/>

 




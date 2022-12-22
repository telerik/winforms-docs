---
title: Structure
page_title: Structure - WinForms TitleBar Control
description: Get familiar with the inner structure and organization of the elements which build the WinForms TitleBar.
slug: winforms/forms-and-dialogs/radtitlebar/structure
tags: radtitlebar
published: True
position: 1 
---

# Structure

This article describes the inner structure and organization of the elements which build the __RadTitleBar__ control.
        
>caption Figure 1: RadTitleBar's Elements Hierarchy

![WinForms RadRadTitleBar Elements Hierarchy](images/forms-and-dialogs-titlebar-structure001.png)

>caption Figure 2: RadTitleBar's structure

![WinForms RadRadTitleBar Structure](images/forms-and-dialogs-titlebar-structure002.png)

1. __RadTitleBarElement__  
	1.1 __FillPrimitive__: Represents the fill of __RadTitleBar__    
	1.2 __DockLayoutPanel__: Holds the system buttons and text element   
&nbsp;&nbsp;&nbsp;&nbsp; 1.2.1 __TextPrimitive__: Represents the text of __RadTitleBar__  
&nbsp;&nbsp;&nbsp;&nbsp; 1.2.2 __StackLayoutElement__: Holds the system buttons   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.2.2.1 __RadImageButtonElement__: Represents each of the system buttons.

# See Also

* [Help Button]({%slug winforms/forms-and-dialogs/radtitlebar/help-button%})	

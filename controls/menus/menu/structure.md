---
title: Structure
page_title: Structure - WinForms Menu Control
description: Get familiar with the inner structure and organization of the elements which build the WinForms Menu.
slug: winforms/menus/menu/structure
tags: menu
published: True
position: 1 
---

# Structure

This article describes the inner structure and organization of the elements which build the **RadMenu** control.

>caption Figure 1: RadMenu's Elements Hierarchy

![WinForms RadMenu MenuElement Elements Hierarchy](images/menus-menu-structure001.png)

![WinForms RadMenu DropDownMenuElement Elements Hierarchy](images/menus-menu-structure003.png)
        
>caption Figure 2: RadMenu Visual Structure

![WinForms RadMenu Visual Structure](images/menus-menu-structure002.png)

1. **RadMenuElement**    
	1\.1\. **WrapLayoutPanel**       
		&nbsp;&nbsp;&nbsp;1\.1\.1\. **RadMenuItem**          
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1\.1\.1\.1\. **FillPrimitive**       
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1\.1\.1\.2\. **BorderPrimitive**      
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1\.1\.1\.3\. **RadMenuItemLayout**   
2. **RadDropDownMenuElement**  
	2\.1\. **RadDropDownMenuLayout**   
		&nbsp;&nbsp;&nbsp;2\.1\.1\. **RadMenuItem**



# See Also

* [RadControlSpy]({%slug winforms/tools/controlspy%})
* [Getting Started]({%slug winforms/menus/menu/getting-started%})	

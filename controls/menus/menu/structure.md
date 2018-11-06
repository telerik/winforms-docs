---
title: Structure
page_title: Structure | RadMenu
description: RadMenu enables you to integrate attractive and flexible menus on Forms within your Windows applications.
slug: winforms/menus/menu/structure
tags: menu
published: True
position: 1 
---

# Structure

This article describes the inner structure and organization of the elements which build the **RadMenu** control.

>caption Figure 1: RadMenu's elements hierarchy

![menus-menu-structure 001](images/menus-menu-structure001.png)

![menus-menu-structure 003](images/menus-menu-structure003.png)
        
>caption Figure 2: RadMenu visual structure

![menus-menu-structure 002](images/menus-menu-structure002.png)

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

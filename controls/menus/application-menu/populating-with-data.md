---
title: Populating with Data
page_title: Populating with Data - RadApplicationMenu
description: RadApplicationMenu is the Telerik counterpart of the application menu that displays controls used to perform actions on entire documents and forms, such as Save and Print. 
slug: winforms/menus/applicationmenu/populating-with-data
tags: applicationmenu
published: True
position: 4
---

# Populating with Data

This article demonstrates how to populate **RadApplicationMenu** with data either at design time or at run time. 

## Adding Items at Design Time

You can add items at design time by using the *RadItem Collection Editor*.

>caption Figure 1: RadApplicationMenu's  RadItem Collection Editor

![WinForms RadApplicationMenu RadItem Collection Editor](images/menus-application-menu-populating-with-data-design-time001.png)

You can access it through the *Smart tag >> Edit Items* option:

>caption Figure 2: Smart tag options

![WinForms RadApplicationMenu Smart Tag Options](images/menus-application-menu-populating-with-data-design-time002.png)

By using the *Edit RightColumnItems* and *Edit ButtonItems* options you can add items to the menu's right column and bottom buttons container respectively.

Another possibility to open the editor is via the __Items__ collection in the *Properties* Visual Studio section:

>caption Figure 3:  Visual Studio Properties window

![WinForms RadApplicationMenu Visual Studio Properties window](images/menus-application-menu-populating-with-data-design-time003.png)print


## Adding Items Programmatically

**RadApplicationMenu** supports adding items at run time, which means that you can manually populate it with items. The following example demonstrates how to add items to the left and right drop down menu's columns and to the bottom buttons container.

#### Add items programmatically 

<snippet id='menus-applicationmenu-additems-cs' />
<snippet id='menus-applicationmenu-additems-vb' />



>caption Figure 4:  Add Items Programmatically 

![WinForms RadApplicationMenu Add Items Programmatically](images/menus-application-menu-populating-with-data-design-time004.png)

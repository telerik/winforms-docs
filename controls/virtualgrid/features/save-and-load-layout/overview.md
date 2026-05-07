---
title: Overview
page_title: Save and Load Layout - RadVirtualGrid
description: Save/Load layout functionality gives your applications the opportunity to preserve user grid settings such as column order and restore them later. 
slug: winforms/virtualgrid/save-and-load-layout/overview
tags: save-and-load-layout
published: True
position: 0
---

# WinForms VirtualGrid Overview

Save/Load layout functionality gives your applications the opportunity to preserve user grid settings such as column order and restore them later. Those layout settings are written in a XML file.

Here is a sample demonstrating how you can implement a *Save Layout* button event handler:

#### Save layout

<snippet id='virtualgrid-virtualgridsaveloadlayout-savelayout-cs' />
<snippet id='virtualgrid-virtualgridsaveloadlayout-savelayout-vb' />



The code snippets below demonstrates how you can implement a *Load Layout* button event handler: 

#### Load layout

<snippet id='virtualgrid-virtualgridsaveloadlayout-loadlayout-cs' />
<snippet id='virtualgrid-virtualgridsaveloadlayout-loadlayout-vb' />



>note Once the layout is being loaded the __LayoutLoaded__ event is being thrown in order to notify that the load process is being finished.
>






# See Also
* [Advanced]({%slug winforms/virtualgrid/save-and-load-layout/advanced%})


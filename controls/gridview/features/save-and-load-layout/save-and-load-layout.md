---
title: Overview
page_title: Save and Load Layout - WinForms GridView Control
description: WinForms GridView support Save/Load layout functionality which gives your applications the opportunity to preserve user grid settings such as column order and restore them later.
slug: winforms/gridview/save-and-load-layout/overview
tags: save-and-load-layout
published: True
position: 0
previous_url: gridview-save-and-load-layout-overview
---

# Save and Load Layout Overview

Save/Load layout functionality gives your applications the opportunity to preserve user grid settings such as column order and restore them later. Those layout settings are written in a XML file.

Here is a sample demonstrating how you can implement a *Save Layout* button event handler:

#### Save layout

<snippet id='gridview-saveloadlayoutoverview-savelayout-cs' />
<snippet id='gridview-saveloadlayoutoverview-savelayout-vb' />

The code snippets below demonstrates how you can implement a *Load Layout* button event handler: 

#### Load layout

<snippet id='gridview-saveloadlayoutoverview-loadlayout-cs' />
<snippet id='gridview-saveloadlayoutoverview-loadlayout-vb' />

>note Once the layout is being loaded the __LayoutLoaded__ event is being thrown in order to notify that the load process is being finished.
>





# See Also
* [Advanced]({%slug winforms/gridview/save-and-load-layout/advanced%})

* [Save/Load layout buttons in the Property Grid]({%slug winforms/gridview/save-and-load-layout/load-layout-buttons-in-the-property-grid%})

* [How to Save/Load Layout with Custom Columns in RadGridView]({%slug gridview-save-layout-with-custom-columns%})


---
title: Loading And Saving Layouts
page_title: Loading And Saving Layouts - WinForms Dock Control
description: WinForms RadDock provides methods to save and load layouts. 
slug: winforms/dock/loading-and-saving-layouts/loading-and-saving-layouts
tags: loading,and,saving,layouts
published: True
position: 0
previous_url: dock-loading-and-saving-layouts
---

# Loading And Saving Layouts
 
__RadDock__ provides methods to save and load layouts. A layout records the size and arrangement of all __DockWindows__ within __RadDock__. This saves all managed windows (__ToolWindow__ and __DocumentWindow__) regardless of state (i.e. a window may be hidden or floating and still be saved). 
       
## To Save a Layout

To save a layout, call the __RadDock.SaveToXML__ method:

#### SaveToXml 

<snippet id='dock-loading-and-saving-layouts-savelayout-cs' />
<snippet id='dock-loading-and-saving-layouts-savelayout-vb' />

 
 
You can use the __DockWindowSerializing__ event to exclude windows from the saved layout: 

<snippet id='dock-loading-and-saving-layouts-serializing-cs' />
<snippet id='dock-loading-and-saving-layouts-serializing-vb' />

 
 

## To Load a Layout

To load a layout, call the __RadDock.LoadFromXML__ method:

#### LoadFromXml 

<snippet id='dock-loading-and-saving-layouts-loadlayout-cs' />
<snippet id='dock-loading-and-saving-layouts-loadlayout-vb' />

 

>note With the introduction of the __R3 2023 SP1__ version of our controls, the __LoadFromXml()__ expose second (optional) parameter. This parameter provides the option to specify whether to remove all existing dock windows or not. By default, the second parameter is set to __false__.

| RELATED VIDEOS |  |
| ------ | ------ |
|[Saving and Loading RadDock for WinForms Layouts](http://www.telerik.com/videos/winforms/saving-and-loading-raddock-for-winforms-layouts) In this video, you will learn how to use the simple XML serialization features of RadDock for WinForms to easily save and load RadDock layouts. (Runtime: 07:03)|![WinForms RadDock Save Load Tutorial](images/dock-loading-and-saving-layouts001.png)|

# See Also

* [Tutorial Saving and Loading Layout and Content]({%slug winforms/dock/loading-and-saving-layouts/tutorial:-saving-and-loading-layout-and-content%})  

* [How to Improve Performance when Loading XML Layout in RadDock]({%slug improve-dock-performance-when-loading-layout%})   
 

---
title: Flash
page_title: Flash - Taskbar Button
description: The blinking effect grab attention on the program's taskbar button.  
slug: taskbar-button-features-flash
tags: taskbar, flash
published: True
position: 1  
---

#  Flash

The taskbar button supports flashing functionality which is suitable for demanding immediate attention of the user.

![WinForms RadTaskbarButton Flash](images/winforms-radtaskbarbutton-flash.gif)

RadTaskbarButtons offers public methods for controlling the flashing:

|Method|Description|
|----|----|
|**Flash(int count = int.MaxValue, int timeout = 0)**|Flashes the form. It does not change the active state of the window.|
|**FlashUntilActive(int count = int.MaxValue, int timeout = 0)**|Flashes the specified window until it is activated. Note that if the window is currently active the flash will not begin.|
|**StopFlash()**|Stops the flashing of the form.|
 

## See Also

* [Structure]({%slug taskbar-button-structure%}) 
* [Getting Started]({%slug taskbar-button-getting-started%})
* [Design Time]({%slug taskbar-button-design-time%}) 
 
        

---
title: Overlay Icon
page_title: Overlay Icon - Taskbar Button
description: Overlay icons show change of status on the program's taskbar button icon.  
slug: taskbar-button-features-overlay-icon
tags: taskbar, overlay, icon
published: True
position: 0  
---

#  Overlay Icon 

The overlay icon represents a small badge over the application icon which is suitable for indicating any status changes. It can be specified by setting the **OverlayIcon** property. 

>caption Overlay Icon over the Application Icon (Progress logo)

![WinForms RadTaskbarButton Overlay Icon](images/winforms-radtaskbarbutton-overlay-icon.png)
 
>note To ensure that the overlay icon will be always clearly visible, it is recommended to use images with a solid background and may be a border.

During the application's execution, the status may change so different Bitmap can be assigned to the **OverlayIcon** property. Setting the property to *null* will clear the Overlay Icon.


## See Also

* [Structure]({%slug taskbar-button-structure%}) 
* [Getting Started]({%slug taskbar-button-getting-started%})
* [Design Time]({%slug taskbar-button-design-time%}) 
 
        

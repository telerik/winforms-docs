---
title: Overview
page_title: Overview - Taskbar Button
description: With the WinForms Taskbar Button users can give commands, access resources, and view program status directly from the taskbar.  
slug: taskbar-button-overview
tags: taskbar, manager
published: True
position: 0 
CTAControlName: TaskbarButton
---

# WinForms TaskbarButton Overview

[Windows Taskbar](https://learn.microsoft.com/en-us/windows/win32/uxguide/winenv-taskbar) is the access point for programs displayed on the desktop. With the taskbar features, users can give commands, access resources, and view program status directly from the taskbar. 

The **RadTaskbarButton** component from the UI for WinForms suite allows you to interact with the Windows Taskbar and gives the developers the appropriate API to define the style for their application's taskbar button.

![WinForms Taskbar Manager Overview](images/taskbar-button-overview001.png) 

## Key Features

RadTaskbarButton offers the following parts for customizing:

* [Jump lists]({%slug taskbar-button-features-jumplist%}) - A jump list is a system-provided menu that appears when the user right-clicks a program in the taskbar. It is used to provide quick access to *recently* or *frequently* used documents and offers direct links to app functionality.

* [Loading/Progress indication]({%slug taskbar-button-features-progress%}) - Four different styles that indicate the progress on the taskbar button.  
The colors and styles of the progress indication come from the system and cannot be customized by the developer: 

	* **Indeterminate** – Indeterminate progress indication with infinite loop. 

	* **Normal** – Progress indicated in Green 
 
	* **Error** - Progress indicated in Red 
 
	* **Paused** - Progress indicated in Yellow 
 
* [Overlay (badge) Icon]({%slug taskbar-button-features-overlay-icon%}) - Applies an overlay icon to a taskbar button to indicate application status or a notification to the user. 

* [Thumbnail buttons]({%slug taskbar-button-features-thumbnail-buttons%}) – Displayed in the application preview window, below the snapshot image of the application. They allow quick interaction with the app.  

* **Thumbnail clip rectangle** – The rectangle of the displayed form, which will be used in the preview pop-up. By default there is a snapshot of the whole application window.  

# See Also

* [Structure]({%slug taskbar-button-structure%}) 
* [Getting Started]({%slug taskbar-button-getting-started%})
* [Design Time]({%slug taskbar-button-design-time%}) 
 
        

---
title: Get a HostWindow by its Content
page_title: Get a HostWindow by its Content - RadDock
description: Get a HostWindow by using the form/control inside it.
slug: winforms/dock/docking-usercontrols-and-forms/get-a-hostwindow-by-its-content
tags: get,a,hostwindow,by,its,content
published: True
position: 2
previous_url: dock-docking-usercontrols-and-forms-get-a-hostwindow-by-its-content
---

# Get a HostWindow by its Content

In certain cases, you may need to perform specific operations depending on the currently activated **HostWindow** in regards to the form/user control that it contains. 

In order to do this, you should first subscribe to the **ActiveWindowChanged** event and then execute the following code snippet in the **ActiveWindowChanged** event handler: 

<snippet id='dock-get-a-hostwindow-by-its-content-handlingactivewindowchanged-cs' />
<snippet id='dock-get-a-hostwindow-by-its-content-handlingactivewindowchanged-vb' />

  

## Getting a HostWindow by its content

In order to get a **HostWindow** that hosts a particular form/user control instance, you should call the __GetHostWindows__ method passing the contained control as a parameter. Supposing that `vegetablesForm` is an instance of type **VegetablesForm**, we can use the following code snippet: 

<snippet id='dock-get-a-hostwindow-by-its-content-gettingwindow-cs' />
<snippet id='dock-get-a-hostwindow-by-its-content-gettingwindow-vb' />

 

# See Also

* [Docking a UserControl with custom event]({%slug winforms/dock/docking-usercontrols-and-forms/docking-a-usercontrol-with-custom-event%})     
* [Docking Singleton Forms]({%slug winforms/dock/docking-usercontrols-and-forms/docking-singleton-forms%})
* [Getting Started]({%slug winforms/dock/docking-usercontrols-and-forms/getting-started%})




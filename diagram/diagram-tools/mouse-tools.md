---
title: Mouse Tools
page_title: Mouse Tools | UI for WinForms Documentation
description: Mouse Tools
slug: winforms/diagram-(beta)/diagram-tools/mouse-tools
tags: mouse,tools
published: True
position: 0
---

# Mouse Tools



__RadDiagram__ provides 3 Mouse Tools that determine the actions you can perform with your mouse -
        Pointer Tool, Connector Tool and Pan Tool.

## 

Below you can find sample descriptions of the three Mouse Tools:

* __Pointer Tool__: this is the default(active) tool. Allows you to drag, select, resize items and etc.
            

* __Connector Tool__: it is partially active. Allows you to create connections. 
              In order to create floating connections, you have to set the RadDiagram.__ActiveTool__ to *ConnectorTool*.
            

* __Pan Tool__: it is not active. Allows you to perform panning. You can activate it by pressing the Ctrl Key. 
              When active, the Pointer Tool and Connector tool are disabled.
            You can also activate the Pan MouseTool to start a pan operation simply by dragging the current viewport with the mouse.

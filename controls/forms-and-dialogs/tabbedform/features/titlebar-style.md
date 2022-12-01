---
title: Title Bar Style
page_title: Title Bar Style - RadTabbedForm
description:  RadTabbedForm allows to display tab items directly in the title bar  
slug: radtabbedform-titlebar-styles
tags: radtabbedform
published: True
position: 0
---

# Title Bar Style

The Tabbed Form supports the standard Windows title bar style. This setting is controlled by the __AllowAero__ property.

{{source=..\SamplesCS\Forms and Dialogs\TabbedFormCode.cs region=Aero}} 
{{source=..\SamplesVB\Forms and Dialogs\TabbedFormCode.vb region=Aero}}
````C#
this.AllowAero = false;

````
````VB.NET
Me.AllowAero = False

```` 

{{endregion}} 


>caption Figure 1: AllowAero = false on Windows 10

![WinForms RadTabbedForm AllowAero = false on Windows 0](images/radtabbedform-standard-styles001.png)

>caption Figure 2: AllowAero = true on Windows 10

![WinForms RadTabbedForm AllowAero = true on Windows 0](images/radtabbedform-standard-styles002.png)

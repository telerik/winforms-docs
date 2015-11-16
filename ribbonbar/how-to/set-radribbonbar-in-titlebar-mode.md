---
title: Set RadRibbonBar in titlebar mode
page_title: Set RadRibbonBar in titlebar mode | UI for WinForms Documentation
description: Set RadRibbonBar in titlebar mode
slug: winforms/ribbonbar/how-to/set-radribbonbar-in-titlebar-mode
tags: set,radribbonbar,in,titlebar,mode
published: True
position: 0
---

# Set RadRibbonBar in titlebar mode

In order to remove the tabstrip part of RadRibbonBar and leave only the titlebar part visible (together with the Start button, and QuickAccess menu), you need to set the following properties:

#### Set the RibbonBar in TitleBar mode

{{source=..\SamplesCS\RibbonBar\HowTo\SetRadRibbonBarInTitleBarMode.cs region=setRadRibbonBarInTitleBarMode}} 
{{source=..\SamplesVB\RibbonBar\HowTo\SetRadRibbonBarInTitleBarMode.vb region=setRadRibbonBarInTitleBarMode}} 

````C#
            this.radRibbonBar1.RibbonBarElement.TabStripElement.Visibility = Telerik.WinControls.ElementVisibility.Collapsed;
            this.radRibbonBar1.StartButtonImage = new Bitmap(this.radRibbonBar1.StartButtonImage, new Size(15, 15));
````
````VB.NET
        Me.RadRibbonBar1.RibbonBarElement.TabStripElement.Visibility = Telerik.WinControls.ElementVisibility.Collapsed
        Me.RadRibbonBar1.StartButtonImage = New Bitmap(Me.RadRibbonBar1.StartButtonImage, New Size(15, 15))
        '
````

{{endregion}}

The result is shown on the screenshot below:<br>![ribbonbar-how-to-set-radribbonbar-in-titlebar-mode 001](images/ribbonbar-how-to-set-radribbonbar-in-titlebar-mode001.png)

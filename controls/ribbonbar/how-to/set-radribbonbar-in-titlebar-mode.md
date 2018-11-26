---
title: Set RadRibbonBar in Titlebar Mode
page_title: Set RadRibbonBar in Titlebar Mode | RadRibbonBar
description: RadRibbonBar can also be ser in title bar mode.
slug: winforms/ribbonbar/how-to/set-radribbonbar-in-titlebar-mode
tags: set,radribbonbar,in,titlebar,mode
published: True
position: 0
previous_url: ribbonbar-how-to-set-radribbonbar-in-titlebar-mode
---

# Set RadRibbonBar in Titlebar Mode

In order to remove the tabstrip part of RadRibbonBar and leave only the titlebar part visible (together with the Start button, and QuickAccess menu), you need to set the following properties:

#### TitleBar Mode

{{source=..\SamplesCS\RibbonBar\HowTo\SetRadRibbonBarInTitleBarMode.cs region=setRadRibbonBarInTitleBarMode}} 
{{source=..\SamplesVB\RibbonBar\HowTo\SetRadRibbonBarInTitleBarMode.vb region=setRadRibbonBarInTitleBarMode}} 

````C#
this.radRibbonBar1.RibbonBarElement.TabStripElement.Visibility = Telerik.WinControls.ElementVisibility.Collapsed;
this.radRibbonBar1.StartButtonImage = new Bitmap(this.radRibbonBar1.StartButtonImage, new Size(15, 15));

````
````VB.NET
Me.RadRibbonBar1.RibbonBarElement.TabStripElement.Visibility = Telerik.WinControls.ElementVisibility.Collapsed
Me.RadRibbonBar1.StartButtonImage = New Bitmap(Me.RadRibbonBar1.StartButtonImage, New Size(15, 15))

````

{{endregion}}

The result is shown on the screenshot below:

>caption Figure 1: Titlebar Mode

![ribbonbar-how-to-set-radribbonbar-in-titlebar-mode 001](images/ribbonbar-how-to-set-radribbonbar-in-titlebar-mode001.png)

## See Also

* [Structure]({%slug winforms/ribbonbar/structure%})
* [Getting Started]({%slug winforms/ribbonbar/getting-started%})

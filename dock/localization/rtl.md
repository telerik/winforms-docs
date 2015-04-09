---
title: Right-to-left support
page_title: Right-to-left support
description: Right-to-left support
slug: dock-localization-rtl
tags: right-to-left,support
published: True
position: 1
---

# Right-to-left support



## 

You can present the content of your dock instance in a right-to-left direction by setting the __RightToLeft__ property to *Yes*:
            

#### __[C#]__

{{source=..\SamplesCS\Dock\CustomDockProvider.cs region=rtl}}
	            radDock1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Dock\CustomDockProvider.vb region=rtl}}
	        Me.radDock1.RightToLeft = System.Windows.Forms.RightToLeft.Yes
	{{endregion}}

![dock-localization-rtl 001](images/dock-localization-rtl001.png)

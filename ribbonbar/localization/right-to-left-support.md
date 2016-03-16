---
title: Right-to-left support
page_title: Right-to-left support | UI for WinForms Documentation
description: Right-to-left support
slug: winforms/ribbonbar/localization/right-to-left-support
tags: right-to-left,support
published: True
position: 1
previous_url: ribbonbar-localization-rtl
---

# Right-to-left support

You can present the content of your ribbonbar instance in a right-to-left direction by setting the __RightToLeft__ property to *Yes*:       

{{source=..\SamplesCS\RibbonBar\GettingStarted\AddingScreenTips.cs region=rtl}} 
{{source=..\SamplesVB\RibbonBar\GettingStarted\AddingScreenTips.vb region=rtl}} 

````C#
this.radRibbonBar1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;

````
````VB.NET
Me.RadRibbonBar1.RightToLeft = System.Windows.Forms.RightToLeft.Yes

````

{{endregion}} 

![ribbonbar-localization-rtl 001](images/ribbonbar-localization-rtl001.png)
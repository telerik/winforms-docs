---
title: Right-to-left support
page_title: Right-to-left support | UI for WinForms Documentation
description: Right-to-left support
slug: winforms/commandbar/localization/right-to-left-support
tags: right-to-left,support
published: True
position: 1
---

# Right-to-left support



## 

You can present the content of your commandbar instance in a right-to-left direction by setting the __RightToLeft__ property to *Yes*: 

{{source=..\SamplesCS\CommandBar\FloatingStrips.cs region=rtl}} 
{{source=..\SamplesVB\CommandBar\FloatingStrips.vb region=rtl}} 

````C#
this.radCommandBar1.RightToLeft = RightToLeft.Yes;

````
````VB.NET
Me.RadCommandBar1.RightToLeft = Windows.Forms.RightToLeft.Yes

````

{{endregion}} 


![commandbar-localization-right-to-left-support 001](images/commandbar-localization-right-to-left-support001.png)

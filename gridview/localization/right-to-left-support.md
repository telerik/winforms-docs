---
title: Right-to-left support
page_title: Right-to-left support | UI for WinForms Documentation
description: Right-to-left support
slug: winforms/gridview/localization/right-to-left-support
tags: right-to-left,support
published: True
position: 1
---

# Right-to-left support



## 

You can present the content of your grid instance in a right-to-left direction by setting the __RightToLeft__ property to *Yes*:

{{source=..\SamplesCS\GridView\Localization\Localization1.cs region=rtl}} 
{{source=..\SamplesVB\GridView\Localization\Localization1.vb region=rtl}} 

````C#
this.radGridView1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;

````
````VB.NET
Me.RadGridView1.RightToLeft = System.Windows.Forms.RightToLeft.Yes

````

{{endregion}} 

![gridview-localization-rtl 001](images/gridview-localization-rtl001.png)

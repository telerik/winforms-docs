---
title: Right-to-left support
page_title: Right-to-left support - WinForms GridView Control
description: Learn how to show the content of your WinForms GridView instance in a right-to-left direction.
slug: winforms/gridview/localization/right-to-left-support
tags: right-to-left,support
published: True
position: 1
previous_url: gridview-localization-rtl
---

# Right-to-left support

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

![WinForms RadGridView Right-To-Left Support](images/gridview-localization-rtl001.png)
# See Also
* [Localization]({%slug winforms/gridview/localization/localization%})


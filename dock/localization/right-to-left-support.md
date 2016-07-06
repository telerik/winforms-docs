---
title: Right-to-left support
page_title: Right-to-left support | UI for WinForms Documentation
description: Shows how you can enable the RightToLeft layout.
slug: winforms/dock/localization/right-to-left-support
tags: right-to-left,support
published: True
position: 1
previous_url: dock-localization-rtl
---

# Right-to-left support
 
You can present the content of your dock instance in a right-to-left direction by setting the __RightToLeft__ property to *Yes*: 

{{source=..\SamplesCS\Dock\CustomDockProvider.cs region=rtl}} 
{{source=..\SamplesVB\Dock\CustomDockProvider.vb region=rtl}} 

````C#
radDock1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;

````
````VB.NET
Me.radDock1.RightToLeft = System.Windows.Forms.RightToLeft.Yes

````

{{endregion}} 


![dock-localization-rtl 001](images/dock-localization-rtl001.png)

# See Also

* [winforms/dock/localization/localization]({%slug winforms/dock/localization/localization%})
---
title: Right-to-Left support
page_title: Right-to-Left support | UI for WinForms Documentation
description: Right-to-Left support
slug: winforms/scheduler/localization/right-to-left-support
tags: right-to-left,support
published: True
position: 3
---

# Right-to-Left support

## 

Enabling the RightToLeft mode of RadScheduler is achieved by setting the __RightToLeft__ property to *Yes*:

{{source=..\SamplesCS\Scheduler\Localization\SchedulerRightToLeft.cs region=RTL}} 
{{source=..\SamplesVB\Scheduler\Localization\SchedulerRightToLeft.vb region=RTL}} 

````C#
radScheduler1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;

````
````VB.NET
RadScheduler1.RightToLeft = System.Windows.Forms.RightToLeft.Yes

````

{{endregion}} 

Here is how your scheduler will look like in this mode:

![scheduler-localization-right-to-left](images/scheduler-localization-right-to-left.png)

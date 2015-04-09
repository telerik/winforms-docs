---
title: Right-to-Left support
page_title: Right-to-Left support
description: Right-to-Left support
slug: scheduler-localization-right-to-left
tags: right-to-left,support
published: True
position: 3
---

# Right-to-Left support



## 

Enabling the RightToLeft mode of RadScheduler is achieved by setting the __RightToLeft__ property to *Yes*

#### __[C#] Setting RadScheduler in RighToLeft__

{{source=..\SamplesCS\Scheduler\Localization\SchedulerRightToLeft.cs region=RTL}}
	            radScheduler1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
	{{endregion}}



#### __[VB.NET] Setting RadScheduler in RighToLeft__

{{source=..\SamplesVB\Scheduler\Localization\SchedulerRightToLeft.vb region=RTL}}
	        RadScheduler1.RightToLeft = System.Windows.Forms.RightToLeft.Yes
	{{endregion}}



Here is how your scheduler will look like in this mode![scheduler-localization-right-to-left](images/scheduler-localization-right-to-left.png)

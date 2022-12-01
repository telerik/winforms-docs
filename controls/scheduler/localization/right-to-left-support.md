---
title: Right-to-Left support
page_title: Right-to-Left support - WinForms Scheduler Control
description: WinForms Scheduler supports Right-to-Left layout and it can be enabled by setting the RightToLeft property to Yes.
slug: winforms/scheduler/localization/right-to-left-support
tags: right-to-left,support
published: True
position: 3
previous_url: scheduler-localization-right-to-left
---

# Right-to-Left support

Enabling the RightToLeft mode of RadScheduler is achieved by setting the __RightToLeft__ property to *Yes*:

#### Right-to-Left Layout

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

>caption Figure 1: Right-to-Left Layout
![WinForms RadScheduler Right-to-Left Layout](images/scheduler-localization-right-to-left.png)

# See Also

* [Localizing RadScheduler]({%slug winforms/scheduler/localization/translating-strings%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Themes and Appearance]({%slug winforms/scheduler/appearance/themes-and-appearance%})

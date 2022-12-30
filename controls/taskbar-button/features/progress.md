---
title: Progress
page_title: Progress - Taskbar Button
description: This article shows how you can set progress state on taskbar.  
slug: taskbar-button-features-progress
tags: taskbar, manager
published: True
position: 0 
CTAControlName: TaskbarButton
---

# Progress 
OR
 Progress Indication

The RadTaskbarButton component provides you with the possibility to display the progress of a task in the taskbar. To set the progress you need to use the __ProgressPercentage__ property. Its value should be between 0 and 100.
When you set this property to 50 you can observe the progress indication in the taskbar item.

{{source=..\SamplesCS\RadTaskbarButton\RadTaskbarButton.cs region=Progress}} 
{{source=..\SamplesVB\RadTaskbarButton\RadTaskbarButton.vb region=Progress}}

````C#

this.radTaskbarButton1.ProgressPercentage = 50;

````
````VB.NET



````

{{endregion}}

// Image

### ProgressState

The ProgressState property is enumeration and it expose the following values.

#### NoProgress
// Image

#### Error // Image
#### Indeterminate // Image
#### Normal // Image
#### Paused // Image

## See Also

* [Structure]({%slug taskbar-button-structure%}) 
* [Getting Started]({%slug taskbar-button-getting-started%})
* [Design Time]({%slug taskbar-button-design-time%}) 
 
        

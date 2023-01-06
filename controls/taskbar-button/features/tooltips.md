---
title: ToolTips
page_title: ToolTips - Taskbar Button
description: This article shows how you can assign tooltips on taskbar.  
slug: taskbar-button-features-tooltips
tags: taskbarbutton,button, tooltips
published: True
position: 0 
CTAControlName: TaskbarButton
---

# ToolTips

RadTaskbarButton exposes Microsoft API to set tooltip text on its thumbnail preview container or its thumbnail buttons.

To set a ToolTip on the thumbnail preview part of the control, you can use the __ThumbnailTooltip__ property of __RadTaskbarButton__.

{{source=..\SamplesCS\TaskbarButton\TaskbarButtonGettingStarted.cs region=ThumbnailTooltip}} 
{{source=..\SamplesVB\TaskbarButton\TaskbarButtonGettingStarted.vb region=ThumbnailTooltip}}

````C#

this.radTaskbarButton1.ThumbnailTooltip = "My RadTaskbar Button ToolTip";

````
````VB.NET

Me.RadTaskbarButton1.ThumbnailTooltip = "My RadTaskbar Button ToolTip"

````

{{endregion}}
 
>caption Figure 1: ThumbnailTooltip

![WinForms RadTaskbarButton Thumbnail Tooltip](images/winforms-radtaskbarbutton-thumbnailtooltip.png)
 
To set ToolTip to the thumbnail buttons, you can dirrectly use their ToolTip property.

{{source=..\SamplesCS\TaskbarButton\TaskbarButtonGettingStarted.cs region=ThumbnailButtonTooltip}} 
{{source=..\SamplesVB\TaskbarButton\TaskbarButtonGettingStarted.vb region=ThumbnailButtonTooltip}}

````C#

this.radTaskbarButton1.ThumbnailButtons[1].ToolTip = "Telerik WinForms";

````
````VB.NET

Me.RadTaskbarButton1.ThumbnailButtons[1].ToolTip = "Telerik WinForms"

````

{{endregion}}
 
>caption Figure 2: Thumbnail Buttons Tooltip

![WinForms RadTaskbarButton Thumbnail Buttons Tooltip](images/winforms-radtaskbarbutton-thumbnail-buttons-tooltip.png)
 
## See Also

* [Getting Started]({%slug taskbar-button-getting-started%})
* [Design Time]({%slug taskbar-button-design-time%}) 
 
        

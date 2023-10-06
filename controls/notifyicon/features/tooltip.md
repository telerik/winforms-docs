---
title: Tooltip
page_title: Tooltip
description: This article allows demonstrates how to display a tooltip when the user's mouse is over the RadNotifyIcon.
slug: radnotifyicon-features-tooltip
tags: tooltip, notifyicon
position: 3
---

# Tooltip

You can configure the tooltip that is displayed when the user hovers over the icon with the **TooltipText** property. The string set to this property will be shown as a content of the tooltip.

{{source=..\SamplesCS\NotifyIcon\Features.cs region=ToolTip}} 
{{source=..\SamplesVB\NotifyIcon\Features.vb region=ToolTip}}
````C#

void ShowNotifyIcon()
{
    RadNotifyIcon radNotifyIcon = new RadNotifyIcon();
    radNotifyIcon.TrayIcon = new System.Drawing.Icon("../../WinForms128x28.ico");
    radNotifyIcon.TooltipText = "Telerik UI for WinForms";
    radNotifyIcon.ShowTrayIcon = true;
}


````
````VB.NET

Private Sub ShowNotifyIcon()
    Dim radNotifyIcon As RadNotifyIcon = New RadNotifyIcon()
    radNotifyIcon.TrayIcon = New System.Drawing.Icon("../../WinForms128x28.ico")
    radNotifyIcon.TooltipText = "Telerik UI for WinForms"
    radNotifyIcon.ShowTrayIcon = True
End Sub


```` 

{{endregion}}

#### __Figure 1: RadNotifyIcon with Tooltip__

![RadNotifyIcon with tooltip](images/radnotifyicon-features-tooltip_001.png)




---
title: ToolTip & ScreenTip
page_title: ToolTip & ScreenTip - WinForms HeatMap Control
description: Check our &quot;ToolTip & ScreenTip&quot; documentation article for the RadHeatMap WinForms control.
slug: heatmap-tooltip-screentip
tags: heatmap, tooltip,screentip
published: True
position: 8
---

# ToolTip & ScreenTip

When interacting with a cell in the RadHeatMap control, you have the option to display either a [RadToolTip]({%slug winforms/telerik-presentation-framework/radtooltip%}) or a [ScreenTip]({%slug winforms/telerik-presentation-framework/screen-tips%}) when the mouse is positioned over the cell or a group. This behavior can be configured using the __ToolTipDisplayMode__ property. By default, the __ToolTipDisplayMode__ is set to __ScreenTip__. This property is enumeration and expose the following values.

* __None__: Does not display tool or screen tips.
* __ScreenTip__: When set to ScreenTip, a screen tip is displayed when the mouse is over a cell. The screen tip typically provides more detailed information about the cell's content or purpose.
* __ToolTip__: When set to ToolTip, a RadToolTip is displayed when the mouse is over a cell or a group. 

The choice between using RadToolTip or ScreenTip depends on your specific requirements and the functionality you need to achieve. If you need a simple tooltip with basic text content for a specific control, RadToolTip would be sufficient. On the other hand, if you require a more feature-rich tooltip with additional elements, such as images or complex content, ScreenTip would be a better choice.

![WinForms RadHeatMap ScreenTip](images/heatmap-tooltip-screentip01.png)

## Customization

Customization of the ToolTip or ScreenTip is possible through two events:

* __ScreenTipShowing__: Occurs when the screen tip is about to be shown. Cancellable.
* __ToolTipShowing__: Occurs when the tool tip is about to be shown. Cancellable.

In this example, we will customize the ScreenTip visual appereance. For this purpose we will subscribe to the __ScreenTipShowing__ event. In the event handler, we have access to the ScreenTip object, its properties and the currently hovered cell index. Using the __Index__ property from the event arguments, we can get the data object underneath.

#### __Example 1: ScreenTipShowing Event__

<snippet id='heatmap-heatmapdatabinding-screentipshowing-cs' />
<snippet id='heatmap-heatmapdatabinding-screentipshowing-vb' />



![WinForms RadHeatMap ScreenTip ScreenTipShowing](images/heatmap-tooltip-screentip02.png)

## See Also

* [Structure]({%slug heatmap-structure%}) 


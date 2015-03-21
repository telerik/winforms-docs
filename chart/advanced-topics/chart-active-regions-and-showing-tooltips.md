---
title: ActiveRegions and Showing ToolTips
page_title: ActiveRegions and Showing ToolTips
description: ActiveRegions and Showing ToolTips
slug: chart-advanced-topics-active-regions-and-showing-tooltips
tags: activeregions,and,showing,tooltips
published: True
position: 0
---

# ActiveRegions and Showing ToolTips



The __ActiveRegion__property corresponds to the bounds of a RadChart's item. It is useful to show tooltips and it also contains an additional string property named __Url__.  __ActiveRegion__ appears for many of the UI elements in the chart including __labels__, __chart series__, __chart series items__, __chart title__, __legend__, __axis items__ and the __empty series message__. 

The __ActiveRegion__ property has two significant for WinForms properties: 

* __ToolTip__: A text description of an item's area that is displayed when the mouse hovers over it. 


* __Url__: A string property which can be used for an additional information or in a scenario where you would want to open an external website



## Set ToolTips

To set a ToolTip, select an item that you are interested in.  Then navigate to its __ActiveRegion__ property. In the __ToolTip__ enter descriptive text.

Below is the __ActiveRegion__ for a [chart series item]({%slug chart-undestanding-radchart-elements-series-items%}). If the mouse hovers over that area in the chart the tool tip "Sales - January" will display.

![chart-advanced-topics-active-regions-and-showing-tooltips 001](images/chart-advanced-topics-active-regions-and-showing-tooltips001.png)

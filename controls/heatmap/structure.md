---
title: Structure
page_title: Structure - WinForms HeatMap Control
description: Check our &quot;Structure&quot; documentation article for the RadHeatMap WinForms control.
slug: heatmap-structure
tags: heatmap, structure
published: True
position: 1
---

# Structure

This article describes the inner structure and organization of the elements which build **RadHeatMap**. 

**RadHeatMapElement** is the main element that contains one StackLayoutElement that holds the **HeatMapTitleElement** and another **StackLayoutElement** that holds the **HeatMapLegendElement**. 

The **HeatMapLegendElement** consists of a **LegendTitleElement**, and a **WrapLayoutPanel**.

RadHeatMap doesn't use visual elements but renders its cells directly according to the calculated rectangles. Every colored cell is represented by a **HeatMapItem** with a value. According to the applied colorizer, the cell rectangle is filled with the appropriate color. 

![heatmap-structure001](images/heatmap-structure001.png)
 
## Elements Hierarchy

![heatmap-structure002](images/heatmap-structure002.png)

## See Also

* [Structure]({%slug heatmap-structure%}) 


---
title: Scale Breaks
page_title: Scale Breaks - ChartView
description: The ScaleBreaks feature allows you to break off large chunks of the axis so that graphs with large amplitude are easier to read. ScaleBreaks are available for both axes of the plot area.
slug: winforms/chartview-/axes/scale-breaks
tags: scale,breaks
published: True
position: 10
previous_url: chartview-features-scale-breaks
---

# Scale Breaks

The ScaleBreaks feature allows you to "break off" large chunks of the axis so that graphs with large amplitude are easier to read. ScaleBreaks are available for both axes of the plot area.

>important This feature assumes the __CombinedMode__ property of the series to be *ChartSeriesCombineMode.Cluster*, which is also its default setting. 
>

To add a scale break you show use the __ScaleBreaks__ collection of the axis. First, you need to create an __AxisScaleBreak__ item and set its __From__  and __To__ properties (you can set the __Name__ property as well):

#### ScaleBreak Initial Setup

<snippet id='chartview-scale-breaks-break1-cs'/>
<snippet id='chartview-scale-breaks-break1-vb'/>



>caption Figure 1: ScaleBreak
![WinForms RadChartView ScaleBreak](images/chartview-axes-scale-breaks001.png)

## Scale Breaks Settings

The following properties allows you to customize the scale breaks:

* __Style:__ Allows you to change the style of the scale breaks. Three different styles are available:

  * *Straight*
  
  * *Waved*
  
  * *Ragged*

* __BackColor:__ Allows you to change the background of the scale break.

* __BorderColor:__ Controls the color of the scale break lines.

* __Size:__ Controls the distance between the scale break lines.

The following example shows how you can set the scale breaks settings: 

#### ScaleBreaks Settings

<snippet id='chartview-scale-breaks-settings-cs'/>
<snippet id='chartview-scale-breaks-settings-vb'/>



>caption Figure 2: ScaleBreaks Settings
![WinForms RadChartView ScaleBreaks Settings](images/chartview-axes-scale-breaks002.png)

# See Also

* [Axes]({%slug winforms/chartview-/axes%})
* [Series Types]({%slug winforms/chartview-/series-types%})
* [Populating with Data]({%slug winforms/chartview-/populating-with-data%})

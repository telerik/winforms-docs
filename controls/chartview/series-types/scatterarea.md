---
title: ScatterArea
page_title: ScatterArea - ChartView
description: ScatterAreaSeries plot their data using two numerical values. Once positioned on a plane the points are connected to form a line
slug: winforms/chartview-/series-types/scatterarea
tags: scatterarea
published: True
position: 6
previous_url: chartview-series-types-scatter-area
---

# ScatterArea

__ScatterAreaSeries__ plot their data using two numerical values. Once positioned on a plane the points are connected to form a line. Further, the area enclosed by this line and the categorical axis is filled. Below is a sample snippet that demonstrates how to set up two ScaterArea series: 

#### Initial Setup

<snippet id='chartview-scatterarea-area-cs'/>
<snippet id='chartview-scatterarea-area-vb'/>



>caption Figure 1: Initial Setup
![WinForms RadChartView ScatterArea Initial Setup](images/chartview-series-scatterarea001.png)

## Properties

The following list shows the most important properties of the __ScaterAreaSeries__.

* __XValueMember:__ If a DataSource is set, the property determines the name of the field that holds the XValue.

* __YValueMember:__ If a DataSource is set, the property determines the name of the field that holds the YValue.

* __Spline:__ Boolean property, which indicates whether the series will draw straight lines of smooth curves.

* __SplineTension:__ The property sets the tension of the spline. The property will have effect only if the Spline property is set to true.

* __StrokeMode:__ This property controls what part of the area border should be marked with line.

#### Set StrokeMode

<snippet id='chartview-scatterarea-stroke-cs'/>
<snippet id='chartview-scatterarea-stroke-vb'/>



>caption Figure 2: Stroke Mode
![WinForms RadChartView ScatterArea Stroke Mode](images/chartview-series-scatterarea002.png) 

# See Also

* [Series Types]({%slug winforms/chartview-/series-types%})
* [Populating with Data]({%slug winforms/chartview-/populating-with-data%})


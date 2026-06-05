---
title: Area
page_title: Area - ChartView
description: As a derivative of Categorical series, AreaSeries plot their data points using category-value couples
slug: winforms/chartview-/series-types/area
tags: area
published: True
position: 1
previous_url: chartview-series-types-area
---

# Area

As a derivative of __Categorical__ series, __AreaSeries__ plot their data points using category-value couples. Once positioned on a plane the points are connected to form a line. Further, the area enclosed by this line and the categorical axis is filled. Below is a sample snippet that demonstrates how to set up two __AreaSeries__:

#### Initial Setup

<snippet id='chartview-area-area-cs'/>
<snippet id='chartview-area-area-vb'/>



>caption Figure 1: Initial Setup
![WinForms RadChartView Area Initial Setup](images/chartview-series-types-area001.png)

The essential properties of AreaSeries coincide with these of LineSeries:

* __BorderWidth__: The property determines the thickness of the lines;

* __PointSize__: The property denotes the size of the points;

* __Spline__: Boolean property, which indicates whether the series will draw straight lines or smooth curves;

* __SplineTension__: The property sets the tension of the spline. The property will have effect only if the __Spline__ is set to *true*;

* __CombineMode__: A common property for all categorical series, which introduces a mechanism for combining data points that reside in different series, but have the same category. The combine mode can be *None*, *Cluster*,  *Stack* and *Stack100*. In the case of *AreaSeries*, *None* and *Cluster* mean that the series will be plotted independently of each other, so that they are overlapping. *Stack* plots the points on top of each other and *Stack100* presents the values of one series as a percentage of the other series. The combine mode is best described by a picture: 

>caption Figure 2: Combine Mode
![WinForms RadChartView Area Combine Mode](images/chartview-series-types-area002.png)

# See Also

* [Series Types]({%slug winforms/chartview-/series-types%})
* [Populating with Data]({%slug winforms/chartview-/populating-with-data%})

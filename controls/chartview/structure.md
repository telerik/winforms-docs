---
title: Structure
page_title: Structure - ChartView
description: RadChartView uses the Telerik Presentation Framework which enables rich experiences like advanced styling.
slug: winforms/chartview/structure
tags: radchartview, structure
published: True
position: 2
---

# Structure

This article describes the inner structure and organization of the elements which build the __RadChartView__ control.

* [Cartesian Area](#cartesian-area)

* [Polar Area](#polar-area)

* [Pie Area](#pie-area)

>note The element hierarchy and structure will vary depending on the area and series types displayed in __RadChartView__.
>

## Cartesian Area

The featured example illustrates the hierarchy defined by two [BarSeries](%slug winforms/chartview-/series-types/bar%}) added to __RadChartView__.

>caption Figure 1: RadChartView`s Element Hierarchy
![WinForms RadChartView Element Hierarchy Cartesian Area](images/radchartview-structure001.png)

>caption Figure 2: RadChartViews`s Structure
![WinForms RadChartView Structure](images/radchartview-structure002.png)

* __RadChartElement:__ Represents the main element of __RadChartView__.
* __BreadcrumbDrilButtonsContainer:__ Container element of the buttons needed by the __DrillDownController__.
* __ChartLegendElement:__ Element defining the legend of the chart.
* __BarSeries:__ Each of the series displayed in __RadChartView__.
* __BarPointElement:__ A single visual element representing a logical data point.  
* __BarLabelElement:__ A point label.
* __CategoricalAxes:__ The horizontal axis of the chart.
* __LinearAxis:__ The vertical axis of the chart.

## Polar Area

The featured example illustrates the hierarchy defined by one [RadarSeries](%slug winforms/chartview-/series-types/radar%}) added to __RadChartView__.

>caption Figure 3: RadChartView`s Element Hierarchy
![WinForms RadChartView Element Hierarchy Polar Area](images/radchartview-structure003.png)

>caption Figure 4: RadChartViews`s Structure
![WinForms RadChartView Polar Area Structure](images/radchartview-structure004.png)

* __RadChartElement:__ Represents the main element of __RadChartView__.
* __RadarLineSeries:__ Each of the series displayed in __RadChartView__.
* __RadarLinePointElement:__ A single visual element representing a logical data point.  
* __CategoricalRadialAxis:__ Categorical axis of the series.
* __PolarAxis:__ Polar axis of the series.
* __AxisLabelElement:__ Axis label.

## Pie Area

The featured example illustrates the hierarchy defined by three [PieSeries](%slug winforms/chartview-/series-types/pie%}) added to __RadChartView__.

>caption Figure 5: RadChartView`s Element Hierarchy
![WinForms RadChartView Pie Area Element Hierarchy](images/radchartview-structure005.png)

>caption Figure 6: RadChartViews`s Structure
![WinForms RadChartView Pie Area Structure](images/radchartview-structure006.png)

* __RadChartElement:__ Represents the main element of __RadChartView__.
* __BreadcrumbDrilButtonsContainer:__ Container element of the buttons needed by the __DrillDownController__.
* __ChartLegendElement:__ Element defining the legend of the chart.
* __PieSeries:__ Each of the series displayed in __RadChartView__.
* __PiePointElement:__ A single visual element representing a logical data point.  
* __PieLabelElement:__ A point label.

## See Also

* [Design Time]({%slug winforms/chartview/design-time/smart-tag%})
* [Property Builder]({%slug winforms/chartview/design-time/property-builder%})
* [Getting Started]({%slug winforms/chartview/getting-started%})
* [Series Types]({%slug winforms/chartview-/series-types%})

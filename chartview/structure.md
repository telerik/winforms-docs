---
title: Structure
page_title: Structure | UI for WinForms Documentation
description: RadChartView uses the Telerik Presentation Framework which enables rich experiences like advanced styling.
slug: winforms/chartview/structure
tags: cardview, structure
published: True
position: 2
---

# Structure

This article describes the inner structure and organization of the elements which build the __RadChartView__ control.

>caption Figure 1: RadChartView`s Element Hierarchy
![radchartview-structure 001](images/radchartview-structure001.png)

The element hierarchy and structure will vary depending on the types of the series displayed in __RadChartView__. The featured example illustrates the hierarchy defined by two [BarSeries](%slug winforms/chartview-/series-types/bar%}) added to __RadChartView__.

>caption Figure 2: RadChartViews`s Structure
![radchartview-structure 002](images/radchartview-structure002.png)

* __RadChartElement__: Represents the main element of __RadChartView__.
* __BreadcrumbDrilButtonsContainer__: Container element of the buttons needed by the __DrillDownController__.
* __ChartLegendElement__: Element defining the legend of the chart.
* __BarSeries__: Each of the series displayed in __RadChartView__.
* __BarPointElement__: A single visual element representing a logical data point.  
* __BarLabelElement__: A point label.
* __CategoricalAxes__: The horizontal axis of the chart.
* __LinearAxis__: The vertical axis of the chart.

## See Also

* [Design Time]({%slug winforms/chartview-/design-time%})
* [Property Builder]({%slug winforms/chartview-/property-builder%})
* [Getting Started]({%slug winforms/chartview/getting-started%})
* [Series Types]({%slug winforms/chartview-/property-builder%})
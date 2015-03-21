---
title: Series Overview
page_title: Series Overview
description: Series Overview
slug: chart-undestanding-radchart-elements-series-overview
tags: series,overview
published: True
position: 8
---

# Series Overview



## 

Series refers to a series of data points displayed in the chart. The RadChart Series object is a collection of [ChartSeriesItem]({%slug chart-undestanding-radchart-elements-series-items%}) objects.  The number of series used depends on the type of chart.  A Pie chart type only uses a single series. "Stacked" charts like the Stacked Area chart use several series.

Each ChartSeries object contains a collection of __ChartSeriesItem__ objects that contain the actual data points displayed on the chart. You can [add data to a series programmatically]({%slug chart-building-radcharts-creating-radchart-programmatically%}) at run time, at [design time in the Properties Window of Visual Studio]({%slug chart-building-radcharts-populate-radchart-at-design-time%}), [declaratively in the ASP.NET HTML markup](30AD2813-E341-45AA-8E72-1070A6EA895B), or [by binding to a data source]({%slug chart-building-radcharts-data-binding-radchart-to-a-database-object%}). 

Some key properties for the __ChartSeries__ are: 

* __Appearance__: This property contains the common appearance related properties such as __Border__, __Corners__, __FillStyle__ and __TextAppearance__.  In addition there are [series specific properties]({%slug chart-undestanding-radchart-elements-series-specific-properties%}) including __LabelAppearance__, __LineSeriesAppearance__, __LegendDisplayMode__, __BubbleSize__ and __PointMark__.   


* [DefaultLabelValue]({%slug chart-undestanding-radchart-elements-default-label-value%}): Specifies a format for label values.  This allows you to display data points as numeric amounts, percentages, totals or any format described in this MSDN article [Standard Numeric Format Strings](http://msdn2.microsoft.com/en-us/library/dwhawy9k.aspx)

* [Items]({%slug chart-undestanding-radchart-elements-series-items%}): The collection of ChartSeriesItem objects that contain data points. 

        

* __Name__: By default this name is displayed in the legend for the series. 


* [Types]({%slug chart-undestanding-radchart-types-radchart-types-overview%}): Use this property to select the chart type.  Valid values are [Bar]({%slug chart-undestanding-radchart-types-bar-charts%}), [StackedBar]({%slug chart-undestanding-radchart-types-stacked-bar-charts%}), [StackedBar100]({%slug chart-undestanding-radchart-types-stacked-bar-100-charts%}), [Line]({%slug chart-undestanding-radchart-types-line-charts%}), [Area]({%slug chart-undestanding-radchart-types-area-charts%}), [StackedArea]({%slug chart-undestanding-radchart-types-stacked-spline-area-charts%}), [StackedArea100]({%slug chart-undestanding-radchart-types-stacked-spline-area-100-charts%}), [Pie]({%slug chart-undestanding-radchart-types-pie-charts%}), [Gantt]({%slug chart-undestanding-radchart-types-gantt-charts%}), [Bezier]({%slug chart-undestanding-radchart-types-bezier.charts%}), [Spline]({%slug chart-undestanding-radchart-types-spline-charts%}), [Bubble]({%slug chart-undestanding-radchart-types-bubble-charts%}), [Point]({%slug chart-undestanding-radchart-types-point-charts%}), [SplineArea]({%slug chart-undestanding-radchart-types-spline-area-charts%}), [StackedSplineArea]({%slug chart-undestanding-radchart-types-stacked-spline-area-charts%}) and [StackedSplineArea100]({%slug chart-undestanding-radchart-types-stacked-spline-area-100-charts%}). 


* __Visible__: Turn this property off to hide the series.

![chart-undestanding-radchart-elements-series-overview 001](images/chart-undestanding-radchart-elements-series-overview001.png)DataRelatedPropertiesSeries

---
title: Series Overview
page_title: Series Overview - UI for WinForms Documentation
description: Series Overview
slug: winforms/chart/understanding-radchart-elements/series-overview
tags: series,overview
published: True
position: 8
previous_url: chart-undestanding-radchart-elements-series-overview
---

# Series Overview



## 

Series refers to a series of data points displayed in the chart. The RadChart Series object is a collection of [ChartSeriesItem]({%slug winforms/chart/understanding-radchart-elements/series-items%}) objects.  The number of series used depends on the type of chart.  A Pie chart type only uses a single series. "Stacked" charts like the Stacked Area chart use several series.

Each ChartSeries object contains a collection of __ChartSeriesItem__ objects that contain the actual data points displayed on the chart. You can [add data to a series programmatically]({%slug winforms/chart/building-radcharts/creating-radchart-programmatically%}) at run time, at [design time in the Properties Window of Visual Studio]({%slug winforms/chart/building-radcharts/populate-radchart-at-design-time%}), declaratively in the ASP.NET HTML markup, or [by binding to a data source]({%slug winforms/chart/building-radcharts/data-binding-radchart-to-a-database-object%}). 

Some key properties for the __ChartSeries__ are: 

* __Appearance__: This property contains the common appearance related properties such as __Border__, __Corners__, __FillStyle__ and __TextAppearance__.  In addition there are [series specific properties]({%slug winforms/chart/understanding-radchart-elements/series-specific-properties%}) including __LabelAppearance__, __LineSeriesAppearance__, __LegendDisplayMode__, __BubbleSize__ and __PointMark__.   


* [DefaultLabelValue]({%slug winforms/chart/understanding-radchart-elements/defaultlabelvalue%}): Specifies a format for label values.  This allows you to display data points as numeric amounts, percentages, totals or any format described in this MSDN article [Standard Numeric Format Strings](http://msdn2.microsoft.com/en-us/library/dwhawy9k.aspx)

* [Items]({%slug winforms/chart/understanding-radchart-elements/series-items%}): The collection of ChartSeriesItem objects that contain data points. 

        

* __Name__: By default this name is displayed in the legend for the series. 


* [Types]({%slug winforms/chart/understanding-radchart-types/radchart-types-overview%}): Use this property to select the chart type.  Valid values are [Bar]({%slug winforms/chart/understanding-radchart-types/bar-charts%}), [StackedBar]({%slug winforms/chart/understanding-radchart-types/stacked-bar-charts%}), [StackedBar100]({%slug winforms/chart/understanding-radchart-types/stacked-bar-100%-charts%}), [Line]({%slug winforms/chart/understanding-radchart-types/line-charts%}), [Area]({%slug winforms/chart/understanding-radchart-types/area-charts%}), [StackedArea]({%slug winforms/chart/understanding-radchart-types/stacked-spline-area-charts%}), [StackedArea100]({%slug winforms/chart/understanding-radchart-types/stacked-spline-area-100%-charts%}), [Pie]({%slug winforms/chart/understanding-radchart-types/pie-charts%}), [Gantt]({%slug winforms/chart/understanding-radchart-types/gantt-charts%}), [Bezier]({%slug winforms/chart/understanding-radchart-types/bezier-charts%}), [Spline]({%slug winforms/chart/understanding-radchart-types/spline-charts%}), [Bubble]({%slug winforms/chart/understanding-radchart-types/bubble-charts%}), [Point]({%slug winforms/chart/understanding-radchart-types/point-charts%}), [SplineArea]({%slug winforms/chart/understanding-radchart-types/spline-area-charts%}), [StackedSplineArea]({%slug winforms/chart/understanding-radchart-types/stacked-spline-area-charts%}) and [StackedSplineArea100]({%slug winforms/chart/understanding-radchart-types/stacked-spline-area-100%-charts%}). 


* __Visible__: Turn this property off to hide the series.
>caption 

![WinForms RadChart ](images/chart-undestanding-radchart-elements-series-overview001.png)

DataRelatedPropertiesSeries

---
title: Tips and Tricks to Optimize RadChartView's Performance    
description: Learn how to optimize performance in WinForms ChartView. 
type: how-to
page_title: Tips and Tricks to Optimize RadChartView's Performance 
slug: tips-and-tricks-to-optimize-performance-in-chartview
position: 0
tags: chartview, optimize, performance
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2021.1.122|RadChartView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 
## Description

A common requirement is to provide as good performance in [RadChartView]({%slug winforms/chartview/overview%}) as possible. This article demonstrates tips and tricks that will bring positive effect on the chart's performance.

## Solution 

General tips for improving the performance are listed below:

* **Data Aggregation**: The performance in RadChartView depends on the number of data points that are added to it. To improve the performance you can perform some SQL grouping operation in your data before adding it to RadChartView. Another solution is to aggregate the data - that is, reduce it to a smaller number of points by 'combining' values by taking their averages. For example you can have 50,000 points. If you average every 10 values, the number of points is reduced to 5000. That is still too many, so you could average, say, in blocks of 100 or even 250. Alternatively, aggregate a previous aggregate - with, say, 10 values in each takes you down from 50,000 to 5000 to 500.

* **FastLineSeries**: Use the [FastLineSeries]({%slug winforms/chartview-/series-types/fastline-%}) which can be used for system performance monitoring or with a chart that needs to display thousands of data points. The cost of the improved performance is that you cannot display labels or plot points. 

* **Disable Smart Labels**: [Smart labels]({%slug winforms/chartview-/features/smart-labels%}) will perform additional calculations for optimizing the labels positions. That is why the greater number of data points are added to the chart view, the more calculations for positioning the labels will be performed. In this case it is recommended to set it to false in order to improve the rendering time. 

* **Disable Axis Labels' Caching**: The [EnableElementCache]({%slug winforms/chartview-/axes%}) property of the axis determines whether the axis labels will be cached or not. By default, it is set to true. In scenarios requiring frequent updates in the chart`s data points it is recommended to set the property to **false**.

* **Increase the MajorTickInterval**: When using [CategoricalAxis]({%slug winforms/chartview-/axes/categorical%}), reduce the number of labels displayed on the axis. This can be achieved by applying a bigger value to the MajorTickInterval property.

# See Also

* [FastLineSeries]({%slug winforms/chartview-/series-types/fastline-%})
* [Smart labels]({%slug winforms/chartview-/features/smart-labels%}) 


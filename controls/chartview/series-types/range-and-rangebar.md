---
title: Range and RangeBar
page_title: Range and RangeBar | ChartView
description: The Range series allows you to define range with each data point. RangeBarSeries is visualized on the screen as separate rectangles representing each of the DataPoints.
slug: winforms/chartview-/series-types/range-and-rangebar
tags: range,and,rangebar
published: True
position: 16
previous_url: chartview-series-types-range
---

# Range and RangeBar



## RangeSeries

The __Range__ series allows you to define range with each data point. 

You can use the following code to display a simple __RangeSeries__

#### Initial Setup RangeSeries

{{source=..\SamplesCS\ChartView\Series\RangeAndRangeBarSeries.cs region=Range}} 
{{source=..\SamplesVB\ChartView\Series\RangeAndRangeBarSeries.vb region=Range}} 

````C#
RangeSeries rangeSeries = new RangeSeries();
rangeSeries.DataPoints.Add(new RangeDataPoint(9, 5, "January"));
rangeSeries.DataPoints.Add(new RangeDataPoint(7, 2, "February"));
rangeSeries.DataPoints.Add(new RangeDataPoint(6, 4, "March"));
rangeSeries.DataPoints.Add(new RangeDataPoint(8, 5, "April"));
rangeSeries.DataPoints.Add(new RangeDataPoint(4, 3, "May"));
rangeSeries.DataPoints.Add(new RangeDataPoint(9, 7, "June"));
rangeSeries.DataPoints.Add(new RangeDataPoint(3, 1, "July"));
radChartView1.Series.Add(rangeSeries);

````
````VB.NET
Dim rangeSeries As New RangeSeries()
rangeSeries.DataPoints.Add(New RangeDataPoint(5, 9, "January"))
rangeSeries.DataPoints.Add(New RangeDataPoint(7, 2, "February"))
rangeSeries.DataPoints.Add(New RangeDataPoint(6, 4, "March"))
rangeSeries.DataPoints.Add(New RangeDataPoint(8, 5, "April"))
rangeSeries.DataPoints.Add(New RangeDataPoint(4, 3, "May"))
rangeSeries.DataPoints.Add(New RangeDataPoint(9, 7, "June"))
rangeSeries.DataPoints.Add(New RangeDataPoint(3, 1, "July"))
radChartView1.Series.Add(rangeSeries)

````

{{endregion}}

>caption Figure 1: Initial Setup RangeSeries
![chartview-series-types-range 001](images/chartview-series-types-range001.png)

## RangeBarSeries

This series is visualized on the screen as separate rectangles representing each of the DataPoints.

You can use the following code to display a simple RangeBarSeries 

#### Initial Setup RangeBarSeries
 
{{source=..\SamplesCS\ChartView\Series\RangeAndRangeBarSeries.cs region=Bar}} 
{{source=..\SamplesVB\ChartView\Series\RangeAndRangeBarSeries.vb region=Bar}} 

````C#
RangeBarSeries rangeBarSeries = new RangeBarSeries();
rangeBarSeries.DataPoints.Add(new RangeDataPoint(7, 5, "January"));
rangeBarSeries.DataPoints.Add(new RangeDataPoint(4, 2, "February"));
rangeBarSeries.DataPoints.Add(new RangeDataPoint(8, 4, "March"));
rangeBarSeries.DataPoints.Add(new RangeDataPoint(8, 3, "April"));
rangeBarSeries.DataPoints.Add(new RangeDataPoint(6, 3, "May"));
rangeBarSeries.DataPoints.Add(new RangeDataPoint(6, 2, "June"));
rangeBarSeries.DataPoints.Add(new RangeDataPoint(3, 1, "July"));
radChartView1.Series.Add(rangeBarSeries);

````
````VB.NET
Dim rangeBarSeries As New RangeBarSeries()
rangeBarSeries.DataPoints.Add(New RangeDataPoint(7, 5, "January"))
rangeBarSeries.DataPoints.Add(New RangeDataPoint(4, 2, "February"))
rangeBarSeries.DataPoints.Add(New RangeDataPoint(8, 4, "March"))
rangeBarSeries.DataPoints.Add(New RangeDataPoint(8, 3, "April"))
rangeBarSeries.DataPoints.Add(New RangeDataPoint(6, 3, "May"))
rangeBarSeries.DataPoints.Add(New RangeDataPoint(6, 2, "June"))
rangeBarSeries.DataPoints.Add(New RangeDataPoint(3, 1, "July"))
radChartView1.Series.Add(rangeBarSeries)

````

{{endregion}}

>caption Figure 2: Initial Setup RangeBarSeries
![chartview-series-types-range 002](images/chartview-series-types-range002.png)

# See Also

* [Series Types]({%slug winforms/chartview-/series-types%})
* [Populating with Data]({%slug winforms/chartview-/populating-with-data%})

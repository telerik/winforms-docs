---
title: Null Values Support 
page_title: Null values support  - ChartView
description: RadChartView supports empty values in the series. In general empty values means missing Y value for a particular X value.
slug: winforms/chartview-/null-values-support-
tags: null,values,support,
published: True
position: 14
previous_url: chartview-null-values-support
---

# Null Values Support

__RadChartView__ supports empty values in the series. In general empty values means missing Y value for a particular X value.

#### Data Containing Null

{{source=..\SamplesCS\ChartView\Features\NullValues.cs region=NULLVALUES}} 
{{source=..\SamplesVB\ChartView\Features\NullValues.vb region=NULLVALUES}} 

````C#
            
barSeries.ShowLabels = true;
barSeries.PointSize = new SizeF(15, 15);
barSeries.DataPoints.Add(new CategoricalDataPoint(10));
barSeries.DataPoints.Add(new CategoricalDataPoint(5));
barSeries.DataPoints.Add(new CategoricalDataPoint(40));
barSeries.DataPoints.Add(new CategoricalDataPoint(null));
barSeries.DataPoints.Add(new CategoricalDataPoint(11));
barSeries.DataPoints.Add(new CategoricalDataPoint(20));
radChartView1.Series.Add(barSeries);

````
````VB.NET
barSeries.ShowLabels = True
barSeries.PointSize = New SizeF(15, 15)
barSeries.DataPoints.Add(New CategoricalDataPoint(10))
barSeries.DataPoints.Add(New CategoricalDataPoint(5))
barSeries.DataPoints.Add(New CategoricalDataPoint(40))
barSeries.DataPoints.Add(New CategoricalDataPoint(New Nullable(Of Double)()))
barSeries.DataPoints.Add(New CategoricalDataPoint(11))
barSeries.DataPoints.Add(New CategoricalDataPoint(20))
radChartView1.Series.Add(barSeries)

````

{{endregion}}

>caption Figure 1: BarSeries With Null DataPoint
![WinForms RadChartView BarSeries With Null DataPoint](images/chartview-null-values-support001.png)

The empty X value is skipped from drawing. NullValues is supported only for Cartesian series like Bar, Line, Spline, Area and SplineArea.

>caution Empty values for financial series is unsupported scenario. OHLC and Candlestick series always know their Open, Close, High and Low values, so  there is no valid scenario with empty values for this type of visualization.
>Empty values for pie chart are unsupported as well. Pie slices should always make up to 360 degrees when combined.
>

>caution In VB.NET one should be careful when using the *nullable* value types. Unless the object is not explicitly set as *nullable* its value will be implicitly cast to the default value for the data type. 
>

# See Also

* [Series Types]({%slug winforms/chartview-/series-types%})
* [Axes]({%slug winforms/chartview-/axes%})

---
title: Null values support 
page_title: Null values support  | UI for WinForms Documentation
description: Null values support 
slug: winforms/chartview-/null-values-support-
tags: null,values,support,
published: True
position: 11
---

# Null values support 



## 

RadChartView support empty values in the series. In general empty values means missing Y value for a particular X value.        
        

Missing item in a column 4. 


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
barSeries.DataPoints.Add(New CategoricalDataPoint(Nothing))
barSeries.DataPoints.Add(New CategoricalDataPoint(11))
barSeries.DataPoints.Add(New CategoricalDataPoint(20))
radChartView1.Series.Add(barSeries)

````

{{endregion}} 


![chartview-null-values-support 001](images/chartview-null-values-support001.png)

The empty Y value is skipped from drawing. NullValues is supported only for Cartesian series like Bar, Line, Spline, Area and SplineArea.
        

>caution Empty values for financial series is unsupported scenario. OHLC and Candlestick series always know their Open, Close, High and Low values, so  there is no valid scenario with empty values for this type of visualization.
>Empty values for pie chart are unsupported as well. Pie slices should always make up to 360 degrees when combined.
>


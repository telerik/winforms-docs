---
title: Unbound Mode
page_title: RadSparkline Unbound Mode
description: The Sparkline control is an information graphic, which is characterized by small size, excellent performance
slug: radsparkline-unbound-mode
tags: sparkline
published: True
position: 1
---

# Unbound Mode

When using the unbound mode you need to create the series and manually add data points. Then you need to set the __Series__ property of the RadSparkline. This is demonstrated in the following example. 

#### Create Series Manually

{{source=..\SamplesCS\Sparkline\SparklineCode.cs region=Unbound}} 
{{source=..\SamplesVB\Sparkline\SparklineCode.vb region=Unbound}}
````C#
var barSeries = new SparkBarSeries();
barSeries.DataPoints.Add(new CategoricalSparkDataPoint(13));
barSeries.DataPoints.Add(new CategoricalSparkDataPoint(20));
barSeries.DataPoints.Add(new CategoricalSparkDataPoint(15));
barSeries.DataPoints.Add(new CategoricalSparkDataPoint(-5));
barSeries.DataPoints.Add(new CategoricalSparkDataPoint(29));
barSeries.DataPoints.Add(new CategoricalSparkDataPoint(8));
barSeries.DataPoints.Add(new CategoricalSparkDataPoint(-22));
barSeries.DataPoints.Add(new CategoricalSparkDataPoint(22));
barSeries.DataPoints.Add(new CategoricalSparkDataPoint(12));
barSeries.ShowHighPointIndicator = true;
barSeries.ShowLowPointIndicator = true;
barSeries.ShowFirstPointIndicator = true;
barSeries.ShowLastPointIndicator = true;
barSeries.ShowNegativePointIndicators = true;
 
this.radSparkline1.ShowAxis = true;
this.radSparkline1.AxisDrawMode = AxisDrawMode.AboveSeries;
this.radSparkline1.Series = barSeries;

````
````VB.NET
Dim barSeries = New SparkBarSeries()
barSeries.DataPoints.Add(New CategoricalSparkDataPoint(13))
barSeries.DataPoints.Add(New CategoricalSparkDataPoint(20))
barSeries.DataPoints.Add(New CategoricalSparkDataPoint(15))
barSeries.DataPoints.Add(New CategoricalSparkDataPoint(-5))
barSeries.DataPoints.Add(New CategoricalSparkDataPoint(29))
barSeries.DataPoints.Add(New CategoricalSparkDataPoint(8))
barSeries.DataPoints.Add(New CategoricalSparkDataPoint(-22))
barSeries.DataPoints.Add(New CategoricalSparkDataPoint(22))
barSeries.DataPoints.Add(New CategoricalSparkDataPoint(12))
barSeries.ShowHighPointIndicator = True
barSeries.ShowLowPointIndicator = True
barSeries.ShowFirstPointIndicator = True
barSeries.ShowLastPointIndicator = True
barSeries.ShowNegativePointIndicators = True
Me.radSparkline1.ShowAxis = True
Me.radSparkline1.AxisDrawMode = AxisDrawMode.AboveSeries
Me.radSparkline1.Series = barSeries

````
 

{{endregion}}

You can see the result in the following image.

 ![WinForms RadSparkline Unbound Mode](images/sparkline-unbound-mode001.png)


 

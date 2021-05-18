---
title: SparkLineSeries
page_title: SparkLineSeries - WinForms Sparkline Control
description: SparkLineSeries plot their CategoricalSparkDataPoint on Cartesian Area. Learn how you can create the line series.
slug: radsparkline-sparklineseries
tags: sparkline
published: True
position: 1
---

# SparkLineSeries

__SparkLineSeries__ plot their CategoricalSparkDataPoint on Cartesian Area. The following example shows how you can create the line series.

#### Create SparkLineSeries

{{source=..\SamplesCS\Sparkline\SparklineCode.cs region=LineSeries}} 
{{source=..\SamplesVB\Sparkline\SparklineCode.vb region=LineSeries}}
````C#
public void CreateLineSeries()
{
    var lineSeries = new SparkLineSeries();
    lineSeries.DataPoints.Add(new CategoricalSparkDataPoint(13));
    lineSeries.DataPoints.Add(new CategoricalSparkDataPoint(20));
    lineSeries.DataPoints.Add(new CategoricalSparkDataPoint(15));
    lineSeries.DataPoints.Add(new CategoricalSparkDataPoint(5));
    lineSeries.DataPoints.Add(new CategoricalSparkDataPoint(29));
    lineSeries.DataPoints.Add(new CategoricalSparkDataPoint(8));
    lineSeries.DataPoints.Add(new CategoricalSparkDataPoint(22));
    lineSeries.ShowHighPointIndicator = true;
    lineSeries.ShowLowPointIndicator = true;
    lineSeries.HighPointShape = new StarShape(5, 3);
    this.radSparkline1.Series = lineSeries;
}

````
````VB.NET
Public Sub CreateLineSeries()
    Dim lineSeries = New SparkLineSeries()
    lineSeries.DataPoints.Add(New CategoricalSparkDataPoint(13))
    lineSeries.DataPoints.Add(New CategoricalSparkDataPoint(20))
    lineSeries.DataPoints.Add(New CategoricalSparkDataPoint(15))
    lineSeries.DataPoints.Add(New CategoricalSparkDataPoint(5))
    lineSeries.DataPoints.Add(New CategoricalSparkDataPoint(29))
    lineSeries.DataPoints.Add(New CategoricalSparkDataPoint(8))
    lineSeries.DataPoints.Add(New CategoricalSparkDataPoint(22))
    lineSeries.ShowHighPointIndicator = True
    lineSeries.ShowLowPointIndicator = True
    lineSeries.HighPointShape = New StarShape(5, 3)
    Me.radSparkline1.Series = lineSeries
End Sub

````
 

{{endregion}} 

>caption Figure 1: SparkLineSeries

![](images/sparklineseries001.png)

### The essential properties of SparkPointSeries are:

|__Property__|__Description__|
|---|---|
|__MarkerSize__|Gets or sets the size of the points of the series.|
|__MarkerShape__| Gets or sets the shape of the points of the series.|
|__HighPointSize__|Gets or sets the size of the high point of the series.|
|__HighPointShape__|Gets or sets the shape of the low point of the series.|
|__LowPointSize__|Gets or sets the size of the low point of the series.|
|__LowPointShape__|Gets or sets the shape of the low point of the series.|
|__FirstPointSize__|Gets or sets the size of the first point of the series.|
|__FirstPointShape__|Gets or sets the shape of the first point of the series.|
|__LastPointSize__|Gets or sets the size of the last of the series.|
|__LastPointShape__|Gets or sets the shape of the last point of the series.|
|__NegativePointSize__|Gets or sets the size of the negative points of the series.|
|__NegativePointShape__|Gets or sets the shape of the negative points of the series.|


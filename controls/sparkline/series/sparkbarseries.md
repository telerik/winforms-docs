---
title: SparkBarSeries
page_title: RadSparkline SparkBarSeries
description: The Sparkline control is an information graphic, which is characterized by small size, excellent performance
slug: radsparkline-sparkbarseries
tags: sparkline
published: True
position: 1
---

# SparkBarSeries

__SparkBarSeries__ are used to visualize data points as bar blocks where the height of each bar denotes the magnitude of its value. The following snippet demonstrates how to manually add SparkBarSeries.

#### Create SparkBarSeries

{{source=..\SamplesCS\Sparkline\SparklineCode.cs region=BarSeries}} 
{{source=..\SamplesVB\Sparkline\SparklineCode.vb region=BarSeries}}
````C#
public void CreateBarSeries()
{
    var barSeries = new SparkBarSeries();
    barSeries.DataPoints.Add(new CategoricalSparkDataPoint(13));
    barSeries.DataPoints.Add(new CategoricalSparkDataPoint(20));
    barSeries.DataPoints.Add(new CategoricalSparkDataPoint(15));
    barSeries.DataPoints.Add(new CategoricalSparkDataPoint(5));
    barSeries.DataPoints.Add(new CategoricalSparkDataPoint(29));
    barSeries.DataPoints.Add(new CategoricalSparkDataPoint(8));
    barSeries.DataPoints.Add(new CategoricalSparkDataPoint(22));
    barSeries.ShowHighPointIndicator = true;
    barSeries.ShowLowPointIndicator = true;
    this.radSparkline1.Series = barSeries;
}

````
````VB.NET
Public Sub CreateBarSeries()
    Dim barSeries = New SparkBarSeries()
    barSeries.DataPoints.Add(New CategoricalSparkDataPoint(13))
    barSeries.DataPoints.Add(New CategoricalSparkDataPoint(20))
    barSeries.DataPoints.Add(New CategoricalSparkDataPoint(15))
    barSeries.DataPoints.Add(New CategoricalSparkDataPoint(5))
    barSeries.DataPoints.Add(New CategoricalSparkDataPoint(29))
    barSeries.DataPoints.Add(New CategoricalSparkDataPoint(8))
    barSeries.DataPoints.Add(New CategoricalSparkDataPoint(22))
    barSeries.ShowHighPointIndicator = True
    barSeries.ShowLowPointIndicator = True
    Me.radSparkline1.Series = barSeries
End Sub

````
 

{{endregion}} 

>caption Figure 1: SparkBarSeries

![](images/sparkbarseries001.png)

### The essential properties of SparkBarSeries are:

|__Property__|__Description__|
|---|---|
|__BaselineValue__|Gets or sets the value of the base line splitting the area into Win and Loss halves.|
|__HighValue__|Gets the high value data point.|
|__LowValue__|Gets the low value data point.|

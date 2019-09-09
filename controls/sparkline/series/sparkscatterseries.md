---
title: SparkScatterSeries
page_title: RadSparkline SparkScatterSeries
description: The Sparkline control is an information graphic, which is characterized by small size, excellent performance
slug: radsparkline-sparkscatterseries
tags: sparkline
published: True
position: 1
---

# SparkScatterSeries

Unlike Categorical series, ScatterSeries plots its data upon two numerical axes. Scatter series identify the position of each __ScatterDataPoint__ using two numerical values - __XValue__ and __YValue__ for the horizontal and vertical axes respectively, just like in the typical Cartesian coordinate system. Here is how to create two __SparkScatterSeries__ and populate them manually:

#### Create SparkScatterSeries

{{source=..\SamplesCS\Sparkline\SparklineCode.cs region=ScatterSeries}} 
{{source=..\SamplesVB\Sparkline\SparklineCode.vb region=ScatterSeries}}
````C#
public void CreateScatterSeries()
{
    var scatterSeries = new SparkScatterSeries();
    scatterSeries.DataPoints.Add(new ScatterSparkDataPoint(13,1));
    scatterSeries.DataPoints.Add(new ScatterSparkDataPoint(20,2));
    scatterSeries.DataPoints.Add(new ScatterSparkDataPoint(15,3));
    scatterSeries.DataPoints.Add(new ScatterSparkDataPoint(5,4));
    scatterSeries.DataPoints.Add(new ScatterSparkDataPoint(29,5));
    scatterSeries.DataPoints.Add(new ScatterSparkDataPoint(8,6));
    scatterSeries.DataPoints.Add(new ScatterSparkDataPoint(22,71));
    scatterSeries.ShowHighPointIndicator = true;
    scatterSeries.ShowLowPointIndicator = true;
    this.radSparkline1.Series = scatterSeries;
}

````
````VB.NET
Public Sub CreateScatterSeries()
    Dim scatterSeries = New SparkScatterSeries()
    scatterSeries.DataPoints.Add(New ScatterSparkDataPoint(13, 1))
    scatterSeries.DataPoints.Add(New ScatterSparkDataPoint(20, 2))
    scatterSeries.DataPoints.Add(New ScatterSparkDataPoint(15, 3))
    scatterSeries.DataPoints.Add(New ScatterSparkDataPoint(5, 4))
    scatterSeries.DataPoints.Add(New ScatterSparkDataPoint(29, 5))
    scatterSeries.DataPoints.Add(New ScatterSparkDataPoint(8, 6))
    scatterSeries.DataPoints.Add(New ScatterSparkDataPoint(22, 71))
    scatterSeries.ShowHighPointIndicator = True
    scatterSeries.ShowLowPointIndicator = True
    Me.radSparkline1.Series = scatterSeries
End Sub

````
 

{{endregion}} 

>caption Figure 1: SparkScatterSeries

![](images/sparkscatterseries001.png)

### The essential properties of SparkScatterSeries are:

|__Property__|__Description__|
|---|---|
|__HighValue__|Gets the high value data point.|
|__LowValue__|Gets the low value data point.|



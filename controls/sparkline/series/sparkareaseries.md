---
title: SparkAreaSeries
page_title: RadSparkline SparkAreaSeries
description: The Sparkline control is an information graphic, which is characterized by small size, excellent performance
slug: radsparkline-sparkareaseries
tags: sparkline
published: True
position: 1
---

# SparkAreaSeries

As a derivative of Categorical series, SparkAreaSeries plot their data points using __CategoricalSparkDataPoints__. Once positioned on a plane the points are connected to form a line. Further, the area enclosed by this line and the categorical axis is filled. Below is a sample snippet that demonstrates how to set up __SparkAreaSeries__:

#### Create SparkAreaSeries

{{source=..\SamplesCS\Sparkline\SparklineCode.cs region=AreaSeries}} 
{{source=..\SamplesVB\Sparkline\SparklineCode.vb region=AreaSeries}}
````C#
public void CreateAreaSeries()
{
    var areaSeries = new SparkAreaSeries();
    areaSeries.DataPoints.Add(new CategoricalSparkDataPoint(13));
    areaSeries.DataPoints.Add(new CategoricalSparkDataPoint(20));
    areaSeries.DataPoints.Add(new CategoricalSparkDataPoint(15));
    areaSeries.DataPoints.Add(new CategoricalSparkDataPoint(5));
    areaSeries.DataPoints.Add(new CategoricalSparkDataPoint(29));
    areaSeries.DataPoints.Add(new CategoricalSparkDataPoint(8));
    areaSeries.DataPoints.Add(new CategoricalSparkDataPoint(22));
    areaSeries.ShowHighPointIndicator = true;
    areaSeries.ShowLowPointIndicator = true;
    areaSeries.HighPointShape = new StarShape(5, 3);
    this.radSparkline1.Series = areaSeries;
}

````
````VB.NET
Public Sub CreateAreaSeries()
    Dim areaSeries = New SparkAreaSeries()
    areaSeries.DataPoints.Add(New CategoricalSparkDataPoint(13))
    areaSeries.DataPoints.Add(New CategoricalSparkDataPoint(20))
    areaSeries.DataPoints.Add(New CategoricalSparkDataPoint(15))
    areaSeries.DataPoints.Add(New CategoricalSparkDataPoint(5))
    areaSeries.DataPoints.Add(New CategoricalSparkDataPoint(29))
    areaSeries.DataPoints.Add(New CategoricalSparkDataPoint(8))
    areaSeries.DataPoints.Add(New CategoricalSparkDataPoint(22))
    areaSeries.ShowHighPointIndicator = True
    areaSeries.ShowLowPointIndicator = True
    areaSeries.HighPointShape = New StarShape(5, 3)
    Me.radSparkline1.Series = areaSeries
End Sub

````
 

{{endregion}} 

>caption Figure 1: SparkAreaSeries

![](images/sparkareaseries001.png)

 The essential properties of SparkAreaSeries coincide with these of SparkLineSeries:

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
|__BaselineValue__|Gets or sets the value of the base line splitting the area into top and bottom half.|


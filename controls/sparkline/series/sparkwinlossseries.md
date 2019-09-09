---
title: SparkWinLossSeries
page_title: RadSparkline SparkWinLossSeries
description: The Sparkline control is an information graphic, which is characterized by small size, excellent performance
slug: radsparkline-sparkwinlossseries
tags: sparkline
published: True
position: 1
---

# SparkWinLossSeries

Win Loss Chart provides a quick way of seeing overall situation of a series of data at glance. It shows positive and negative values in a distinctive way. 

#### Create SparkBarSeries

{{source=..\SamplesCS\Sparkline\SparklineCode.cs region=WinLossSeries}} 
{{source=..\SamplesVB\Sparkline\SparklineCode.vb region=WinLossSeries}}
````C#
public void CreateWinLossSeries()
{
    var winLossSeries = new SparkWinLossSeries();
    winLossSeries.DataPoints.Add(new CategoricalSparkDataPoint(13));
    winLossSeries.DataPoints.Add(new CategoricalSparkDataPoint(-20));
    winLossSeries.DataPoints.Add(new CategoricalSparkDataPoint(15));
    winLossSeries.DataPoints.Add(new CategoricalSparkDataPoint(5));
    winLossSeries.DataPoints.Add(new CategoricalSparkDataPoint(29));
    winLossSeries.DataPoints.Add(new CategoricalSparkDataPoint(-8));
    winLossSeries.DataPoints.Add(new CategoricalSparkDataPoint(-22));
    winLossSeries.ShowHighPointIndicator = true;
    winLossSeries.ShowLowPointIndicator = true;
    this.radSparkline1.Series = winLossSeries;
}

````
````VB.NET
Public Sub CreateWinLossSeries()
    Dim winLossSeries = New SparkWinLossSeries()
    winLossSeries.DataPoints.Add(New CategoricalSparkDataPoint(13))
    winLossSeries.DataPoints.Add(New CategoricalSparkDataPoint(-20))
    winLossSeries.DataPoints.Add(New CategoricalSparkDataPoint(15))
    winLossSeries.DataPoints.Add(New CategoricalSparkDataPoint(5))
    winLossSeries.DataPoints.Add(New CategoricalSparkDataPoint(29))
    winLossSeries.DataPoints.Add(New CategoricalSparkDataPoint(-8))
    winLossSeries.DataPoints.Add(New CategoricalSparkDataPoint(-22))
    winLossSeries.ShowHighPointIndicator = True
    winLossSeries.ShowLowPointIndicator = True
    Me.radSparkline1.Series = winLossSeries
End Sub

````
 

{{endregion}} 

>caption Figure 1: SparkBarSeries

![](images/sparkwinlossseries001.png)



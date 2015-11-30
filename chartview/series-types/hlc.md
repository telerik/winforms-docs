---
title: Hlc
page_title: Hlc | UI for WinForms Documentation
description: Hlc
slug: winforms/chartview-/series-types/hlc
tags: hlc
published: True
position: 15
---

# Hlc



## 

The __Hlc series__ is a simple variant of the [Ohlc series]({%slug winforms/chartview-/series-types/ohlc-and-candlestick%}) which was discussed in the previous topic. Its data points contain information about the following parameters: * high, low* and *close*.
      

Here is how to read the values of an __Hlc__ point:
        


|  __Ohlc__  |
| ------ |
|![chartview-series-types-hlc 001](images/chartview-series-types-hlc001.png)|

Here is how to setup the __Hlc__ series: 

{{source=..\SamplesCS\ChartView\Series\HlcSeriesForm.cs region=hlc}} 
{{source=..\SamplesVB\ChartView\Series\HlcSeriesForm.vb region=hlc}} 

````C#
 HlcSeries hlcSeries = new HlcSeries();
 hlcSeries.DataPoints.Add(new HlcDataPoint(11, 7, 8, DateTime.Now));
 hlcSeries.DataPoints.Add(new HlcDataPoint(9, 5, 9, DateTime.Now.AddDays(1)));
 hlcSeries.DataPoints.Add(new HlcDataPoint(12, 9, 10, DateTime.Now.AddDays(2)));
 hlcSeries.DataPoints.Add(new HlcDataPoint(10, 6, 9, DateTime.Now.AddDays(3)));
 this.radChartView1.Series.Add(hlcSeries);

````
````VB.NET
Dim hlcSeries As New HlcSeries()
hlcSeries.DataPoints.Add(New HlcDataPoint(11, 7, 8, DateTime.Now))
hlcSeries.DataPoints.Add(New HlcDataPoint(9, 5, 9, DateTime.Now.AddDays(1)))
hlcSeries.DataPoints.Add(New HlcDataPoint(12, 9, 10, DateTime.Now.AddDays(2)))
hlcSeries.DataPoints.Add(New HlcDataPoint(10, 6, 9, DateTime.Now.AddDays(3)))
Me.RadChartView1.Series.Add(hlcSeries)

````

{{endregion}} 


![chartview-series-types-hlc 002](images/chartview-series-types-hlc002.png)

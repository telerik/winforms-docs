---
title: Hlc
page_title: Hlc
description: Hlc
slug: chartview-series-types-hlc
tags: hlc
published: True
position: 14
---

# Hlc



## 

The __Hlc__ series is a simple variant of the __Ohlc__ which was discussed in the previous topic. Its data points
          contain information about the following parameters: * high, low* and *close*.
      

Here is how to read the values of an __Hlc__ point:
        
<table><th><tr><td>

<b>Ohlc</b></td></tr></th><tr><td>![chartview-series-types-hlc 001](images/chartview-series-types-hlc001.png)</td></tr></table>

Here is how to setup the __Hlc__ series:
    

#### __[C#] __

{{source=..\SamplesCS\ChartView\Series\HlcSeriesForm.cs region=hlc}}
	             HlcSeries hlcSeries = new HlcSeries();
	             hlcSeries.DataPoints.Add(new HlcDataPoint(11, 7, 8, DateTime.Now));
	             hlcSeries.DataPoints.Add(new HlcDataPoint(9, 5, 9, DateTime.Now.AddDays(1)));
	             hlcSeries.DataPoints.Add(new HlcDataPoint(12, 9, 10, DateTime.Now.AddDays(2)));
	             hlcSeries.DataPoints.Add(new HlcDataPoint(10, 6, 9, DateTime.Now.AddDays(3)));
	             this.radChartView1.Series.Add(hlcSeries);
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\ChartView\Series\HlcSeriesForm.vb region=hlc}}
	        Dim hlcSeries As New HlcSeries()
	        hlcSeries.DataPoints.Add(New HlcDataPoint(11, 7, 8, DateTime.Now))
	        hlcSeries.DataPoints.Add(New HlcDataPoint(9, 5, 9, DateTime.Now.AddDays(1)))
	        hlcSeries.DataPoints.Add(New HlcDataPoint(12, 9, 10, DateTime.Now.AddDays(2)))
	        hlcSeries.DataPoints.Add(New HlcDataPoint(10, 6, 9, DateTime.Now.AddDays(3)))
	        Me.RadChartView1.Series.Add(hlcSeries)
	{{endregion}}

![chartview-series-types-hlc 002](images/chartview-series-types-hlc002.png)

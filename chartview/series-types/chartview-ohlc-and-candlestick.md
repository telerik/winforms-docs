---
title: Ohlc and Candlestick
page_title: Ohlc and Candlestick
description: Ohlc and Candlestick
slug: chartview-series-types-ohlc-and-candlestick
tags: ohlc,and,candlestick
published: True
position: 13
---

# Ohlc and Candlestick



## 

RadChartView introduces support for stock series – both __Ohlc (Open-High-Low-Close)__ and
          __Candlestick__. These series operate with special data points which hold information about
          each the following parameters: *open, high, low, close*. As members of the
          __Categorical__ series, stock series plot their data upon a categorical (or __DateTimeCategorical__) axis.
        

__Ohlc__ and __Candlestick__ series are indeed two alternative ways to visualize
          the same data. Here is how to read the values of an __Ohlc__ and __Candlestick__ point:
        
<table><th><tr><td>

<b>Ohlc</b></td><td>

<b>Candlestick</b></td></tr></th><tr><td>![chartview-series-types-ohlc-and-candlestick 001](images/chartview-series-types-ohlc-and-candlestick001.png)</td><td>![chartview-series-types-ohlc-and-candlestick 002](images/chartview-series-types-ohlc-and-candlestick002.png)</td></tr></table>

Here is how to setup Ohlc series:

#### __[C#] __

{{source=..\SamplesCS\ChartView\Series\OhlcAndCandlestick\OhlcSeriesForm.cs region=ohlc}}
	            OhlcSeries ohlcSeries = new OhlcSeries();
	            ohlcSeries.DataPoints.Add(new OhlcDataPoint(10, 11, 7, 8, DateTime.Now));
	            ohlcSeries.DataPoints.Add(new OhlcDataPoint(8, 9, 5, 9, DateTime.Now.AddDays(1)));
	            ohlcSeries.DataPoints.Add(new OhlcDataPoint(12, 12, 9, 10, DateTime.Now.AddDays(2)));
	            ohlcSeries.DataPoints.Add(new OhlcDataPoint(7, 10, 6, 9, DateTime.Now.AddDays(3)));
	            this.radChartView1.Series.Add(ohlcSeries);
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\ChartView\Series\OhlcAndCandlestick\OhlcSeriesForm.vb region=ohlc}}
	        Dim ohlcSeries As New OhlcSeries()
	        ohlcSeries.DataPoints.Add(New OhlcDataPoint(10, 11, 7, 8, DateTime.Now))
	        ohlcSeries.DataPoints.Add(New OhlcDataPoint(8, 9, 5, 9, DateTime.Now.AddDays(1)))
	        ohlcSeries.DataPoints.Add(New OhlcDataPoint(12, 12, 9, 10, DateTime.Now.AddDays(2)))
	        ohlcSeries.DataPoints.Add(New OhlcDataPoint(7, 10, 6, 9, DateTime.Now.AddDays(3)))
	        Me.RadChartView1.Series.Add(ohlcSeries)
	{{endregion}}

![chartview-series-types-ohlc-and-candlestick 003](images/chartview-series-types-ohlc-and-candlestick003.png)

Here is how to setup Candlestick series:

#### __[C#] __

{{source=..\SamplesCS\ChartView\Series\OhlcAndCandlestick\OhlcSeriesForm.cs region=candlestick}}
	            CandlestickSeries candlestickSeries = new CandlestickSeries();
	            candlestickSeries.DataPoints.Add(new OhlcDataPoint(10, 11, 7, 8, DateTime.Now));
	            candlestickSeries.DataPoints.Add(new OhlcDataPoint(8, 9, 5, 9, DateTime.Now.AddDays(1)));
	            candlestickSeries.DataPoints.Add(new OhlcDataPoint(12, 12, 9, 10, DateTime.Now.AddDays(2)));
	            candlestickSeries.DataPoints.Add(new OhlcDataPoint(7, 10, 6, 9, DateTime.Now.AddDays(3)));
	            this.radChartView1.Series.Add(candlestickSeries);
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\ChartView\Series\OhlcAndCandlestick\OhlcSeriesForm.vb region=candlestick}}
	        Dim candlestickSeries As New CandlestickSeries()
	        candlestickSeries.DataPoints.Add(New OhlcDataPoint(10, 11, 7, 8, DateTime.Now))
	        candlestickSeries.DataPoints.Add(New OhlcDataPoint(8, 9, 5, 9, DateTime.Now.AddDays(1)))
	        candlestickSeries.DataPoints.Add(New OhlcDataPoint(12, 12, 9, 10, DateTime.Now.AddDays(2)))
	        candlestickSeries.DataPoints.Add(New OhlcDataPoint(7, 10, 6, 9, DateTime.Now.AddDays(3)))
	        Me.RadChartView1.Series.Add(candlestickSeries)
	{{endregion}}

![chartview-series-types-ohlc-and-candlestick 004](images/chartview-series-types-ohlc-and-candlestick004.png)

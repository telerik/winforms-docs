---
title: Ohlc and Candlestick
page_title: Ohlc and Candlestick - ChartView
description: RadChartView introduces support for stock series – both Ohlc (Open-High-Low-Close) and Candlestick
slug: winforms/chartview-/series-types/ohlc-and-candlestick
tags: ohlc,and,candlestick
published: True
position: 14
previous_url: chartview-series-types-ohlc-and-candlestick
---

# Ohlc and Candlestick

__RadChartView__ introduces support for stock series – both __Ohlc (Open-High-Low-Close)__ and __Candlestick__. These series operate with special data points which hold information about each the following parameters: *open, high, low, close*. As members of the __Categorical__ series, stock series plot their data upon a categorical (or __DateTimeCategorical__) axis.

__Ohlc__ and __Candlestick__ series are indeed two alternative ways to visualize the same data. Here is how to read the values of an __Ohlc__ and __Candlestick__ point:
 

|  __Ohlc__  |  __Candlestick__  |
| ------ | ------ |
|![WinForms RadChartView Ohlc Sample](images/chartview-series-types-ohlc-and-candlestick001.png)|![WinForms RadChartView Candlestick Sample](images/chartview-series-types-ohlc-and-candlestick002.png)|

Here is how to setup Ohlc series: 

#### Initial Setup OhlcSeries

<snippet id='chartview-ohlc-and-candlestick-ohlc-cs'/>
<snippet id='chartview-ohlc-and-candlestick-ohlc-vb'/>



>caption Figure 1: Initial Setup OhlcSeries
![WinForms RadChartView Initial Setup OhlcSeries](images/chartview-series-types-ohlc-and-candlestick003.png)

Here is how to setup Candlestick series:

#### Initial Setup CandlestickSeries

<snippet id='chartview-ohlc-and-candlestick-candlestick-cs'/>
<snippet id='chartview-ohlc-and-candlestick-candlestick-vb'/>



>caption Figure 2: Initial Setup CandlestickSeries
![WinForms RadChartView Initial Setup CandlestickSeries](images/chartview-series-types-ohlc-and-candlestick004.png)

# See Also

* [Series Types]({%slug winforms/chartview-/series-types%})
* [Populating with Data]({%slug winforms/chartview-/populating-with-data%})

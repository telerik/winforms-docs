---
title: CandleStick Charts
page_title: CandleStick Charts
description: CandleStick Charts
slug: chart-undestanding-radchart-types-candlestick-charts
tags: candlestick,charts
published: True
position: 17
---

# CandleStick Charts



## 

The __CandleStick__ chart combines bar and line chart styles to show a range of value movement over time. A filled bar indicates the opening value was greater than the closing value.  An empty bar indicates that the closing value was greater than the opening value. The line through the center (the "wick") shows the extreme high and low values. The meaning of the Y values in a CandleStick chart are:  

* YValue = Open

* YValue2 = Close

* YValue 3 = Max

* YValue 4 = Min

The "bar" portion of each chart item is formed between the __YValue__ and __YValue2__ properties.  The "wick" portion of the chart is defined with the YValue3 and YValue4 chart item properties.

To create a Vertical CandleStick Chart set the __SeriesOrientation__property to __Vertical__. Set the RadChart __DefaultType__ property or __ChartSeries.Type__ to __CandleStick__.

![chart-undestanding-radchart-types-candlestick-charts 001](images/chart-undestanding-radchart-types-candlestick-charts001.png)

To create a Vertical CandleStick Chart set the __SeriesOrientation__property to __Horizontal__. Set the RadChart __DefaultType__ property or __ChartSeries.Type__ to __CandleStick__.

![chart-undestanding-radchart-types-candlestick-charts 002](images/chart-undestanding-radchart-types-candlestick-charts002.png)

The screenshots above use the following data points:
<table><tr><td>

<b>YValue</b></td><td>

<b>YValue2</b></td><td>

<b>YValue3</b></td><td>

<b>YValue4</b></td></tr><tr><td>

6</td><td>

7.1</td><td>

4.5</td><td>

8</td></tr><tr><td>

5.5</td><td>

7.7</td><td>

3</td><td>

6</td></tr><tr><td>

21</td><td>

9</td><td>

8</td><td>

23</td></tr><tr><td>

5.5</td><td>

6.5</td><td>

4</td><td>

6.5</td></tr><tr><td>

6</td><td>

4.5</td><td>

3</td><td>

7</td></tr><tr><td></td><td></td><td></td><td></td></tr></table>

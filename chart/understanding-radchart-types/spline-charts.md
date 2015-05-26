---
title: Spline Charts
page_title: Spline Charts | UI for WinForms Documentation
description: Spline Charts
slug: winforms/chart-(obsolete)/understanding-radchart-types/spline-charts
tags: spline,charts
published: True
position: 7
---

# Spline Charts



## 

Spline charts allow you to take a limited set of known data points and approximate intervening values.  In practice you define a series of chart items with X/Y values and RadChart does the rest. 

To create a simple vertical Spline Chart set the __SeriesOrientation__ property to __Vertical__. Set the RadChart __DefaultType__ property or __ChartSeries.Type__ to __Spline__. Create a series and add chart items with Y or X and Y values.
>caption 

![chart-undestanding-radchart-types-spline-charts 001](images/chart-undestanding-radchart-types-spline-charts001.png)

To create a simple horizontal Spline Chart set the __SeriesOrientation__ property to __Horizontal__. Set the RadChart __DefaultType__ property or __ChartSeries.Type__ to __Spline__. Create a series and add 3 or more chart items with X and Y values. 



| __YValue__ | __XValue__ |
|20|50|
|50|-10|
|70|100|
|80|50|
>caption 

![chart-undestanding-radchart-types-spline-charts 002](images/chart-undestanding-radchart-types-spline-charts002.png)

Another example showing the same Y data points as above, but with no X values defined displays an automatic even progression over the X axis.



| __YValue__ |
|20|
|50|
|70|
|80|
>caption 

![chart-undestanding-radchart-types-spline-charts 003](images/chart-undestanding-radchart-types-spline-charts003.png)

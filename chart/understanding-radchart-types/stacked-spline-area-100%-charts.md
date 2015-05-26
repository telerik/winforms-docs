---
title: Stacked Spline Area 100% Charts
page_title: Stacked Spline Area 100% Charts | UI for WinForms Documentation
description: Stacked Spline Area 100% Charts
slug: winforms/chart-(obsolete)/understanding-radchart-types/stacked-spline-area-100%-charts
tags: stacked,spline,area,100%,charts
published: True
position: 12
---

# Stacked Spline Area 100% Charts



## 

The Stacked Spline Area 100% chart is a variation of the Spline Area chart. The areas are stacked so that each series adjoins but does not overlap the preceding series. This chart displays contributions for each data point to the category as a percentage.

To create a vertical Stacked Spline Area Chart 100% chart, set the __SeriesOrientation__ property to __Vertical__. Set the RadChart __DefaultType__ property or __ChartSeries.Type__ to __StackedSplineArea100__.

To create a horizontal Stacked Spline Area Chart 100% chart, set the __SeriesOrientation__ property to __Horizontal__. Set the RadChart __DefaultType__ property or __ChartSeries.Type__ to __StackedSplineArea100__.
>caption 

![chart-undestanding-radchart-types-stacked-spline-area-100-charts 001](images/chart-undestanding-radchart-types-stacked-spline-area-100-charts001.png)

To display the label values as percentages, change the __DefaultLabelValue__ for each chart series from "#Y" (the numeric value for each data point) to "#%" (the percentage of each data point to the category).
        

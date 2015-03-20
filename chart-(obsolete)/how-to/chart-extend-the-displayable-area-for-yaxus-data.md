---
title: How Do I extend the Displayable Area for YAxis Data?
page_title: How Do I extend the Displayable Area for YAxis Data?
description: How Do I extend the Displayable Area for YAxis Data?
slug: chart-how-to-extend-the-displayable-area-for-yaxus-data
tags: how,do,i,extend,the,displayable,area,for,yaxis,data?
published: True
position: 0
---

# How Do I extend the Displayable Area for YAxis Data?



## 

"My data touches the upper boundary of the plot area but that makes the data harder to see. How do I extend the viewable area along the YAxis?"

Assign the YAxis __AxisMode__ property.  By default the __ChartYAxisMode__ property value is Normal and the YAxis data fills the available space.

myChart.PlotArea.YAxis.AxisMode = ChartYAxisMode.Normal;CS



![chart-how-to-extend-the-displayable-area-for-yaxus-data 001](images/chart-how-to-extend-the-displayable-area-for-yaxus-data001.png)



If you set the __ChartYAxisMode__ to __Extended,__ additional area is placed above the highest data point to make the chart easier to read.

myChart.PlotArea.YAxis.AxisMode = ChartYAxisMode.Extended;CS

![chart-how-to-extend-the-displayable-area-for-yaxus-data 002](images/chart-how-to-extend-the-displayable-area-for-yaxus-data002.png)

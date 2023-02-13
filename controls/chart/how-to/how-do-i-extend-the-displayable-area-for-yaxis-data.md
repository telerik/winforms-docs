---
title: How Do I extend the Displayable Area for YAxis Data?
page_title: How Do I extend the Displayable Area for YAxis Data? - UI for WinForms Documentation
description: How Do I extend the Displayable Area for YAxis Data?
slug: winforms/chart/how-to/how-do-i-extend-the-displayable-area-for-yaxis-data?
tags: how,do,i,extend,the,displayable,area,for,yaxis,data?
published: True
position: 0
previous_url: chart-how-to-extend-the-displayable-area-for-yaxus-data
---

# How Do I extend the Displayable Area for YAxis Data?



## 

"My data touches the upper boundary of the plot area but that makes the data harder to see. How do I extend the viewable area along the YAxis?"

Assign the YAxis __AxisMode__ property.  By default the __ChartYAxisMode__ property value is Normal and the YAxis data fills the available space.

myChart.PlotArea.YAxis.AxisMode = ChartYAxisMode.Normal;

CS


>caption 

![WinForms RadChart Displayable AxisMode Normal](images/chart-how-to-extend-the-displayable-area-for-yaxus-data001.png)



If you set the __ChartYAxisMode__ to __Extended,__ additional area is placed above the highest data point to make the chart easier to read.

myChart.PlotArea.YAxis.AxisMode = ChartYAxisMode.Extended;

CS
>caption 

![WinForms RadChart Displayable AxisMode Extended](images/chart-how-to-extend-the-displayable-area-for-yaxus-data002.png)

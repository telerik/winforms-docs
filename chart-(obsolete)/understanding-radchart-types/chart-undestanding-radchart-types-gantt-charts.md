---
title: Gantt Charts
page_title: Gantt Charts
description: Gantt Charts
slug: chart-undestanding-radchart-types-gantt-charts
tags: gantt,charts
published: True
position: 5
---

# Gantt Charts



## 

Gantt charts help visualize time based information. Gantt charts, also known as Time charts, display separate events, with a beginning and an end. These charts are often used for project/time planning, where data can be plotted using a date-time scale or a numerical scale.

To create a vertical Gantt Chart set the __SeriesOrientation__property to __Vertical__. Set the RadChart __DefaultType__ property or __ChartSeries.Type__ to __Gantt__.

![chart-undestanding-radchart-types-gantt-charts 001](images/chart-undestanding-radchart-types-gantt-charts001.png)

To create a horizontal Gantt Chart set the __SeriesOrientation__property to __Horizontal__. Set the __RadChart DefaultType__ property or __ChartSeries__.__Type__ to __Gantt__.

![chart-undestanding-radchart-types-gantt-charts 002](images/chart-undestanding-radchart-types-gantt-charts002.png)

Other Gantt chart issues:

* To add dates to an axis or chart item, values must be converted to OleAutomation types.  Use the [DateTime](http://msdn2.microsoft.com/en-us/library/system.datetime.aspx)[ToOADate()](http://msdn2.microsoft.com/en-us/library/system.datetime.tooadate.aspx) function for this purpose.

* When setting a range for an axis that involves dates, set the axis __IsZeroBased__ property to zero.  This avoids having the range calculated from the minimum date value forward, instead of a range you define.

* Use the __ValueFormat__ property to display values as dates.  

#### __[C#] Setting the value format__

{{region valueFormat}}
	            radChart1.PlotArea.YAxis.Appearance.ValueFormat = Telerik.Charting.Styles.ChartValueFormat.ShortDate;
	{{endregion}}



#### __[VB.NET] Setting the value format__

{{region valueFormat}}
	        RadChart1.PlotArea.YAxis.Appearance.ValueFormat = Telerik.Charting.Styles.ChartValueFormat.ShortDate
	{{endregion}}



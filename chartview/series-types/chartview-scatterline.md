---
title: ScatterLine
page_title: ScatterLine
description: ScatterLine
slug: chartview-series-types-scatterline
tags: scatterline
published: True
position: 5
---

# ScatterLine



## 

__ScatterLineSeries__ allow data represented as a line to be plotted against two linear axes. Each point from the line in the 
          chart is defined by two numeric values – __XValue__ and __YValue__ for the horizontal and for the vertical 
          axis respectively. This chart type is the closest resemblance of the mathematical Cartesian coordinate system. Next we create a simple chart with two lines:
        

#### __[C#]__

{{region scatterLineSetup}}
	            ScatterLineSeries scatterSeries = new ScatterLineSeries();
	            scatterSeries.DataPoints.Add(new ScatterDataPoint(15, 19));
	            scatterSeries.DataPoints.Add(new ScatterDataPoint(18, 10));
	            scatterSeries.DataPoints.Add(new ScatterDataPoint(13, 15));
	            scatterSeries.DataPoints.Add(new ScatterDataPoint(10, 8));
	            scatterSeries.DataPoints.Add(new ScatterDataPoint(5, 2));
	            scatterSeries.PointSize = new SizeF(8, 8);
	            this.radChartView1.Series.Add(scatterSeries);
	
	            ScatterLineSeries scatterSeries2 = new ScatterLineSeries();
	            scatterSeries2.DataPoints.Add(new ScatterDataPoint(2, 24));
	            scatterSeries2.DataPoints.Add(new ScatterDataPoint(7, 12));
	            scatterSeries2.DataPoints.Add(new ScatterDataPoint(15, 10));
	            scatterSeries2.DataPoints.Add(new ScatterDataPoint(18, 22));
	            scatterSeries2.DataPoints.Add(new ScatterDataPoint(20, 20));
	            scatterSeries2.Shape = new RoundRectShape(1);
	            scatterSeries2.PointSize = new SizeF(8, 8);
	            this.radChartView1.Series.Add(scatterSeries2);
	{{endregion}}



#### __[VB.NET]__

{{region scatterLineSetup}}
	        Dim scatterSeries As New ScatterLineSeries()
	        scatterSeries.DataPoints.Add(New ScatterDataPoint(15, 19))
	        scatterSeries.DataPoints.Add(New ScatterDataPoint(18, 10))
	        scatterSeries.DataPoints.Add(New ScatterDataPoint(13, 15))
	        scatterSeries.DataPoints.Add(New ScatterDataPoint(10, 8))
	        scatterSeries.DataPoints.Add(New ScatterDataPoint(5, 2))
	        scatterSeries.PointSize = New SizeF(8, 8)
	        Me.radChartView1.Series.Add(scatterSeries)
	
	        Dim scatterSeries2 As New ScatterLineSeries()
	        scatterSeries2.DataPoints.Add(New ScatterDataPoint(2, 24))
	        scatterSeries2.DataPoints.Add(New ScatterDataPoint(7, 12))
	        scatterSeries2.DataPoints.Add(New ScatterDataPoint(15, 10))
	        scatterSeries2.DataPoints.Add(New ScatterDataPoint(18, 22))
	        scatterSeries2.DataPoints.Add(New ScatterDataPoint(20, 20))
	        scatterSeries2.Shape = New RoundRectShape(1)
	        scatterSeries2.PointSize = New SizeF(8, 8)
	        Me.radChartView1.Series.Add(scatterSeries2)
	{{endregion}}

![chartview-series-scatterline 001](images/chartview-series-scatterline001.png)

__ScatterLineSeries__ inherit from __ScatterSeries__ thus all important properties are
          inherited as well. Two important properties are added for the scatter line:
        

* __Spline__ - Boolean property, which indicates whether the series will draw straight lines of smooth curves
            

* __SplineTension__ – the property sets the tension of the spline. The property will have effect only if the __Spline__ property is set to __true__

#### __[C#]__

{{region scatterLineSpline}}
	            scatterSeries.Spline = true;
	            scatterSeries.SplineTension = 0.8f;
	{{endregion}}



#### __[VB.NET]__

{{region scatterLineSpline}}
	        scatterLine.Spline = True
	        scatterLine.SplineTension = 0.8F
	{{endregion}}

![chartview-series-scatterline 002](images/chartview-series-scatterline002.png)

---
title: Radial
page_title: Radial | ChartView
description: Radial
slug: winforms/chartview-/axes/radial
tags: radial
published: True
position: 5
previous_url: chartview-axes-radial
---

# Radial

__RadChartView__ supports two Radial axes out of the box – __CategoricalRadialAxis__ and __NumericRadialAxis__. The former is used to plot categorical data and the latter to render numerical data.

[CategoricalRadialAxis](#categoricalradialaxis)
[NumericRadialAxis](#numericradialaxis)

## CategoricalRadialAxis

__CategoricalRadialAxis__ introduces the following property:

* __MajorTickInterval__ – defines the step at which ticks are positioned. The value indicates that the first of n axis ticks is visible, where n is the value of the property.

Additionally, __CategoricalRadialAxis__ inherits all properties of the [Axis class.]({%slug winforms/chartview-/axes%})

CategoricalRadial axis is added automatically when you add RadarPoint, RadarLine or RadarArea series to RadChartView. The following example illustrates that once you add a Radar series, you are able to get the CategoricalRadial axis using the RadialAxis property of the RadarSeries instance: 

#### CategoricalRadialAxis Setup

{{source=..\SamplesCS\ChartView\Axes\RadialAxisForm.cs region=radialCategoricalAxis}} 
{{source=..\SamplesVB\ChartView\Axes\RadialAxisForm.vb region=radialCategoricalAxis}} 

````C#
RadarAreaSeries areaSeries = new RadarAreaSeries();
areaSeries.DataPoints.Add(new CategoricalDataPoint(4, "Bread"));
areaSeries.DataPoints.Add(new CategoricalDataPoint(7, "Fruit"));
areaSeries.DataPoints.Add(new CategoricalDataPoint(7, "Meat"));
radChartView1.AreaType = ChartAreaType.Polar;
radChartView1.Series.Add(areaSeries);
CategoricalRadialAxis categoricalAxis = areaSeries.RadialAxis as CategoricalRadialAxis;
if (categoricalAxis != null)
{
    categoricalAxis.BorderColor = Color.DarkGray;
}

````
````VB.NET
Dim areaSeries As New RadarAreaSeries()
areaSeries.DataPoints.Add(New CategoricalDataPoint(4, "Bread"))
areaSeries.DataPoints.Add(New CategoricalDataPoint(7, "Fruit"))
areaSeries.DataPoints.Add(New CategoricalDataPoint(7, "Meat"))
RadChartView1.AreaType = ChartAreaType.Polar
RadChartView1.Series.Add(areaSeries)
Dim categoricalAxis As CategoricalRadialAxis = TryCast(areaSeries.RadialAxis, CategoricalRadialAxis)
If categoricalAxis IsNot Nothing Then
    categoricalAxis.BorderColor = Color.DarkGray
End If

````

{{endregion}}

>caption Figure 1: CategoricalRadialAxis Setup
![chartview-axes-radial 001](images/chartview-axes-radial001.png)

## NumericRadialAxis

NumericRadialAxis contains the following important properties:

* __MajorStep:__ Defines the step between two adjacent ticks on the axis. Specify TimeSpan.Zero to clear the value. If not specified, the step is automatically determined, depending on the smallest difference between any two dates.

* __DesiredTickCount:__ Gets or sets the user-defined number of ticks on the axis.

* __RangeExtendDirection:__ Gets or sets a value that specifies how the auto-range of this axis is extended so that each data point is visualized in the best way. Possible values are None, Positive, Negative, Both. None sets the range minimum to the minimum data point value and the range maximum to the maximum data point value. Positive extends the range maximum with one major step if necessary. Negative extends the range minimum with one major step if necessary. Both extend the range in both negative and positive direction.

Additionally, NumericRadialAxis inherits all properties of the [Axis class.]({%slug winforms/chartview-/axes%})

NumericRadial axis is added automatically when you add __PolarPoint__, __PolarLine__ or __PolarArea__ series to __RadChartView__. The following example illustrates that once you add a Polar series, you are able to get the NumericRadial axis using the __RadialAxis__ property of the __PolarSeries__ instance: 

#### NumericRadialAxis Setup

{{source=..\SamplesCS\ChartView\Axes\RadialAxisForm.cs region=radialNumericalAxis}} 
{{source=..\SamplesVB\ChartView\Axes\RadialAxisForm.vb region=radialNumericalAxis}} 

````C#
PolarAreaSeries series = new PolarAreaSeries();
PolarDataPoint pt = new PolarDataPoint();
pt.Angle = 30;
pt.Value = 4;
series.DataPoints.Add(pt);
            
pt = new PolarDataPoint();
pt.Angle = 135;
pt.Value = 7;
series.DataPoints.Add(pt);
pt = new PolarDataPoint();
pt.Angle = 270;
pt.Value = 9;
series.DataPoints.Add(pt);
radChartView1.AreaType = ChartAreaType.Polar;
radChartView1.Series.Add(series);
NumericRadialAxis numericalAxis = series.RadialAxis as NumericRadialAxis;
if (numericalAxis != null)
{
    numericalAxis.BorderColor = Color.DarkGray;
    numericalAxis.MajorStep = 45;
}

````
````VB.NET
Dim series As New PolarAreaSeries()
Dim pt As New PolarDataPoint()
pt.Angle = 30
pt.Value = 4
series.DataPoints.Add(pt)
pt = New PolarDataPoint()
pt.Angle = 135
pt.Value = 7
series.DataPoints.Add(pt)
pt = New PolarDataPoint()
pt.Angle = 270
pt.Value = 9
series.DataPoints.Add(pt)
RadChartView1.AreaType = ChartAreaType.Polar
RadChartView1.Series.Add(series)
Dim numericalAxis As NumericRadialAxis = TryCast(series.RadialAxis, NumericRadialAxis)
If numericalAxis IsNot Nothing Then
    numericalAxis.BorderColor = Color.DarkGray
    numericalAxis.MajorStep = 45
End If

````

{{endregion}} 

>caption Figure 1: NumericRadialAxis Setup
![chartview-axes-radial 002](images/chartview-axes-radial002.png)

# See Also

* [Axes]({%slug winforms/chartview-/axes%})
* [Series Types]({%slug winforms/chartview-/series-types%})
* [Populating with Data]({%slug winforms/chartview-/populating-with-data%})
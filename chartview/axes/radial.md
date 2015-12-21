---
title: Radial
page_title: Radial | UI for WinForms Documentation
description: Radial
slug: winforms/chartview-/axes/radial
tags: radial
published: True
position: 5
---

# Radial



RadChartView supports two Radial axes out of the box – CategoricalRadialAxis and NumericRadialAxis. The former is used to plot categorical data and the latter to render numerical data.
      

## CategoricalRadialAxis

CategoricalRadialAxis introduces the following property:
        

* __MajorTickInterval__ – defines the step at which ticks are positioned. The value indicates that the first of n axis ticks is visible, where n is the value of the property.
            

Additionally, CategoricalRadialAxis inherits all properties of the [Axis class.]({%slug winforms/chartview-/axes%})

CategoricalRadial axis is added automatically when you add RadarPoint, RadarLine or RadarArea series to RadChartView. The following example illustrates that once you add a Radar series, you are able to get the CategoricalRadial axis using the RadialAxis property of the RadarSeries instance: 

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


![chartview-axes-radial 001](images/chartview-axes-radial001.png)

## NumericRadialAxis

NumericRadialAxis contains the following important properties:
        

* __MajorStep__  – defines the step between two adjacent ticks on the axis. Specify TimeSpan.Zero to clear the value. If not specified, the step is automatically determined, depending on the smallest difference between any two dates.
            

* __DesiredTickCount__  – gets or sets the user-defined number of ticks on the axis.
            

* __RangeExtendDirection__  – gets or sets a value that specifies how the auto-range of this axis is extended so that each data point is visualized in the best way. Possible values are None, Positive, Negative, Both. None sets the range minimum to the minimum data point value and the range maximum to the maximum data point value. Positive extends the range maximum with one major step if necessary. Negative extends the range minimum with one major step if necessary. Both extend the range in both negative and positive direction.
            

Additionally, NumericRadialAxis inherits all properties of the [Axis class.]({%slug winforms/chartview-/axes%})

NumericRadial axis is added automatically when you add PolarPoint, PolarLine or PolarArea series to RadChartView. The following example illustrates that once you add a Polar series, you are able to get the NumericRadial axis using the RadialAxis property of the PolarSeries instance: 

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


![chartview-axes-radial 002](images/chartview-axes-radial002.png)

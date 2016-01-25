---
title: Logarithmic
page_title: Logarithmic | UI for WinForms Documentation
description: Logarithmic
slug: winforms/chartview-/axes/logarithmic
tags: logarithmic
published: True
position: 3
previous_url: chartview-axes-logarithmic
---

# Logarithmic



## 

Valid only in the context of Cartesian Area, Logarithmic axis can be used to plot any data that contains numerical values. The value of each of its ticks is growing exponentially, as opposed to linear axis, where tick values are growing linearly. Logarithmic axis is the typically used when the data values fall in a large range. The LogarithmBase property determines the base of the logarithm function and the ExponentStep property controls exponent step between each axis tick. By default the axis itself will calculate the exponent step, based on the incoming data. Here is a list of all LogarithmicAxis properties:
        

* __ActualRange__ – the property provides the actual range (the minimum and maximum) used by the axis to plot data points.
            

* __DesiredTickCount__ – gets or sets the user-defined number of ticks on the axis.
            

* __Minimum__ – gets or sets the user-defined minimum of the axis. By default the axis calculates the minimum, depending on the minimum of the plotted data points. You can reset this property by setting it to Double.NegativeInfinity to restore the default behavior.
            

* __Maximum__ – gets or sets the user-defined maximum of the axis. By default the axis calculates the maximum, depending on the maximum of the plotted data points. You can reset this property by setting it to Double.PositiveInfinity to restore the default behavior.
            

* __LogarithmBase__ – the property determines the base of the logarithm used for normalizing data points' values.
            

* __ExponentStep__ – indicates the exponent step between each axis tick. By default the axis calculates the exponent step, depending on the plotted data points. You can reset this property by setting it to 0 to restore the default behavior.
            

* __RangeExtendDirection__ – gets or sets a value that specifies how the auto-range of this axis is extended so that each data point is visualized in the best way. Possible values are None, Positive, Negative, Both. None sets the range minimum to the minimum data point value and the range maximum to the maximum data point value. Positive extends the range maximum with one major step if necessary. Negative extends the range minimum with one major step if necessary. Both extend the range in both negative and positive direction.
            

* __HorizontalLocation__ – the property determines the horizontal location of the axis in relation to the plot area. Possible values are Top and Bottom, where Top displays the axis above the area and Bottom displays the axis below the area. The default value is Bottom.
            

* __VerticalLocation__ – the property determines the vertical location of the axis in relation to the plot area. Possible values are Left and Right, where Left displays the axis on the left of the area and Right displays the axis on the right of the area. The default value is Left.
            

* __ClipLabels__ – this property controls whether labels will be clipped to the size of the axes (width/height).
            

Additionally, LinearAxis inherits all properties of the Axis class.

Logarithmic axis is not added by default to Cartesian series. For this reason you will need to create an instance of the LogarithmicAxis class and assign it to the VerticalAxis property of the series, before it is added to the chart. Here is a sample snippet: 

{{source=..\SamplesCS\ChartView\Axes\LogarithmicAxisForm.cs region=axis}} 
{{source=..\SamplesVB\ChartView\Axes\LogarithmicAxisForm.vb region=axis}} 

````C#
BarSeries series = new BarSeries();
series.DataPoints.Add(new CategoricalDataPoint(10000, "Category 1"));
series.DataPoints.Add(new CategoricalDataPoint(100, "Category 2"));
series.DataPoints.Add(new CategoricalDataPoint(1000, "Category 3"));
series.DataPoints.Add(new CategoricalDataPoint(10, "Category 4"));
LogarithmicAxis verticalAxis = new LogarithmicAxis();
verticalAxis.AxisType = AxisType.Second;
verticalAxis.LogarithmBase = 10;
            
//First assign the axis to the VerticalAxis property and then add the series to the chart
series.VerticalAxis = verticalAxis;
radChartView1.Series.Add(series);

````
````VB.NET
   Dim series As New BarSeries()
    series.DataPoints.Add(New CategoricalDataPoint(10000, "Category 1"))
    series.DataPoints.Add(New CategoricalDataPoint(100, "Category 2"))
    series.DataPoints.Add(New CategoricalDataPoint(1000, "Category 3"))
    series.DataPoints.Add(New CategoricalDataPoint(10, "Category 4"))
    Dim verticalAxis As New LogarithmicAxis()
    verticalAxis.AxisType = AxisType.Second
    verticalAxis.LogarithmBase = 10
    'First assign the axis to the VerticalAxis property and then add the series to the chart
    series.VerticalAxis = verticalAxis
    RadChartView1.Series.Add(series)

````

{{endregion}} 


![chartview-axes-logarithmic 001](images/chartview-axes-logarithmic001.png)

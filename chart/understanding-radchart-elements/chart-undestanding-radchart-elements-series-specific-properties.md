---
title: Series-Specific Properties
page_title: Series-Specific Properties
description: Series-Specific Properties
slug: chart-undestanding-radchart-elements-series-specific-properties
tags: series-specific,properties
published: True
position: 10
---

# Series-Specific Properties



The following are properties specific to the __series appearance__ of specific [chart types]({%slug chart-undestanding-radchart-types-radchart-types-overview%}).

## Bubble

The __BubbleSize__ property is specific to the [Bubble]({%slug chart-undestanding-radchart-types-bubble-charts%}) chart type and allows you to increase or decrease bubble size without distorting the shape.

## Lines and Splines

The __LineSeriesAppearance______property is specific to the [Line]({%slug chart-undestanding-radchart-types-line-charts%}) and [Spline]({%slug chart-undestanding-radchart-types-spline-charts%}) chart types.  __LineSeriesAppearance__ has a __Cap__ property that governs the appearance of a line terminating shape that occurs where at each data point (except the first).  Valid __Cap__ values are __Flat__, __Square__, __Round__, __Triangle__, __NoAnchor__, __SquareAnchor__, __RoundAnchor__, __DiamondAnchor__, __ArrowAnchor__, __AnchorMask__and __Custom__. __LineSeriesAppearance__ also has sub properties for __Color__, __PenStyle__, __Visible__ and __Width__.

The __PointMark______is a shape that occurs at every data point, including the first.  PointMarks are off by default but can be enabled using the Pointmark.Visible property. Use the Pointmark.Figure property to choose one of the predefined shapes. Other __PointMark__ properties include __Border__, __Corners__, __Dimensions__, __FillStyle__, __RotationAngle__ and __Shadow__.![chart-undestanding-radchart-elements-series-specific-properties 001](images/chart-undestanding-radchart-elements-series-specific-properties001.png)

The example above shows Series 1 in red where __LineSeriesAppearance__ properties are:

* __Cap__ = ArrowAnchor 

* __Color__ = Red 

* __PenStyle__ = Dash 

* __Width__ = 5

Series 2 show in blue has __PointMark__ properties set as:

* Border.Color = 50, 0, 245, 100 

* Border.Width = 1 

* Figure= Star5 

* Visible = True 

* Dimensions.Height = 25px 

* Dimensions.Width = 25px 

* FillStyle.FillType = Solid 

* FillStyle.MainColor = 90, 100, 254, 100 

* Shadow.Blur = 1 

* Shadow.Color = DimGray 

* Shadow.Distance = 2

## Pie

The __StartAngle__ property specifies degrees for the rotation of a pie. The default value and the starting position is 0°. Positive values of the __StartAngle__ property will rotate the pie clockwise and negative - counterclockwise.![chart-undestanding-radchart-elements-series-specific-properties 002](images/chart-undestanding-radchart-elements-series-specific-properties002.png)



The __DiameterScale__ property controls the ratio between the size of the plot area and the diameter of the chart. It effectively sets the size of the pie. In the example below, __DiameterScale__ is set to 1, .75 (the default) and .5.![chart-undestanding-radchart-elements-series-specific-properties 003](images/chart-undestanding-radchart-elements-series-specific-properties003.png)

When true, the __ShowLabelConnectors__ property visually ties the label with the corresponding pie slice.![chart-undestanding-radchart-elements-series-specific-properties 004](images/chart-undestanding-radchart-elements-series-specific-properties004.png)



The __ExplodePercent__ property defines the percentage of explosion of pie pieces. By default this is 20 percent.  In the example below it is set to 50 percent: ![chart-undestanding-radchart-elements-series-specific-properties 005](images/chart-undestanding-radchart-elements-series-specific-properties005.png)

The __CenterXOffset______and __CenterYOffset______properties specify the distance from the center of the plot area to the center of the pie in pixels. Use these two properties to position pie charts within the plot area.



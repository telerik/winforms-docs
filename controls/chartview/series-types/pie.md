---
title: Pie
page_title: Pie - ChartView
description: PieSeries visualize each data point as a pie slices with arc size directly proportional to the magnitude of the raw data point’s value
slug: winforms/chartview-/series-types/pie
tags: pie
published: True
position: 10
previous_url: chartview-series-types-pie
---

# Pie

Unlike all other series, __PieSeries__ do not require axes. They visualize each data point as a pie slices with arc size directly proportional to the magnitude of the raw data point’s value. It is important to note that the pie series are valid only in the context of Pie AreaType. Pie slices represent data in one dimension contrasting with the other series which represent data in two dimensions. Here is an example of how to create a pie chart with pie series populated with data:

#### Initial Setup

<snippet id='chartview-pie-pie-cs'/>
<snippet id='chartview-pie-pie-vb'/>



>caption Figure 1: Initial Setup
![WinForms RadChartView Pie Initial Setup](images/chartview-series-types-pie001.png)

__PieSeries__ can be customized using the following properties:        

* __Range:__ The property consists of two parameters StartAngle and SweepAngle. StartAngle sets the angle in degrees from which the drawing of the pie segments will begin. Note that pie slices are always rendered in clockwise direction. SweepAngle determines if the chart will appear as a full circle or a partial circle.The snippet below illustrates PieSeries how to set the Range property: 

<snippet id='chartview-pie-anglerange-cs'/>
<snippet id='chartview-pie-anglerange-vb'/>



>caption Figure 2: Angle Range
![WinForms RadChartView Pie Angle Range](images/chartview-series-types-pie002.png)

* __ShowLabels:__ The property determines whether the labels above each point will be visible.

* __LabelMode__: Gets or sets the label mode of the __PieSeries__. The user can choose one of the following options: 
    - *Horizontal* - Each label is renderred horizontally. Its position from the center of its corresponding pie segment is determined by X property.
    - *Radial* - Each label is renderred radial to its corresponding Pie segment. Its position from the center of the chart is determined by X property.

* __RadiusFactor:__ The property can increase and decrease the diameter of the series. Setting the __RadiusFactor__ to *0.9* will decrease the radius of the series by *10 percent*. Similarly, the value *1.1* will increase it. Leaving the property with value *1* will make the donut fill the available space.            

Additionally, PieSeries allows offsetting a pie segment from the rest of the slices. This is achieved through the __OffsetFromCenter__ property of the individual PieDataPoint. The following snippet demonstrates how to shift the first pie piece: 

#### Offset Segment

<snippet id='chartview-pie-offset-cs'/>
<snippet id='chartview-pie-offset-vb'/>



>caption Figure 3: Offset Segment
![WinForms RadChartView Pie Offset Segment](images/chartview-series-types-pie003.png)

# See Also

* [Series Types]({%slug winforms/chartview-/series-types%})
* [Populating with Data]({%slug winforms/chartview-/populating-with-data%})

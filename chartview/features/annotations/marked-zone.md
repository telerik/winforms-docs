---
title: Marked Zone
page_title: Marked zone | UI for WinForms Documentation
description: The CartesianMarkedzoneAnnotation is a rectangle defined by the HorizontalFrom/To and VerticalFrom/To properties.
slug: winforms/chartview-/features/annotations/marked-zone
tags: marked,zone
published: True
position: 2
previous_url: chartview-features-annotations-markedzone-annotations
---

# Marked zone

The __CartesianMarkedzoneAnnotation__ is a rectangle defined by the __HorizontalFrom/To__ and __VerticalFrom/To__ properties.

>caption Figure 1: Marked Annotation
![chartview-annotations-markedzone-annotations 001](images/chartview-annotations-markedzone-annotations001.png)

## Properties

Besides the __HorizontalFrom/To__ and __VerticalFrom/To__ properties that are used for defining the rectangle, the __CartesianMarkedzoneAnnotation__ exposes the following properties:      

* __HorizontalAxis__ and __VerticalAxis:__ Used for associating the annotation with the chart axes.          

* __BackColorL:__  Defines the back color of the marked zone.
          
* __BorderColorL__ Specifies the border color of the marked zone.
          
* __BorderWidth:__ Sets the border width of the marked zone.
          
## Examples

In the following example additional styling is applied to the default look of the annotation.

>caption Figure 2: Annotation With All Bounds Set
![chartview-annotations-markedzone-annotations 002](images/chartview-annotations-markedzone-annotations002.png)

#### Define Annotation

{{source=..\SamplesCS\ChartView\Annotations\MarkedZones.cs region=CartesianMarkedZone}} 
{{source=..\SamplesVB\ChartView\Annotations\MarkedZones.vb region=CartesianMarkedZone}} 

````C#
CartesianMarkedZoneAnnotation annotation = new CartesianMarkedZoneAnnotation();
annotation.HorizontalFrom = 4;
annotation.HorizontalTo = 9;
annotation.VerticalFrom = 10;
annotation.VerticalTo = 35;
annotation.BackColor = Color.FromArgb(50, 37, 160, 219);
annotation.BorderDashStyle = DashStyle.Custom;
annotation.BorderDashPattern = new float[] { 9, 3, 2, 4 };
annotation.BorderColor = Color.Orange;
annotation.BorderWidth = 3;
this.radChartView1.Annotations.Add(annotation);

````
````VB.NET
Dim annotation As New CartesianMarkedZoneAnnotation()
annotation.HorizontalFrom = 4
annotation.HorizontalTo = 9
annotation.VerticalFrom = 10
annotation.VerticalTo = 35
annotation.BackColor = Color.FromArgb(50, 37, 160, 219)
annotation.BorderDashStyle = DashStyle.[Custom]
annotation.BorderDashPattern = New Single() {9, 3, 2, 4}
annotation.BorderColor = Color.Orange
annotation.BorderWidth = 3
Me.radChartView1.Annotations.Add(annotation)

````

{{endregion}}

The flexible design of the marked zone annotation allows the user to omit one (or more) of the four __HorizontalFrom/To__ and __VerticalFrom/To__ properties. The following table details the relationship between the specified properties and the occupied interval on the axis:

|  __Specified Properties__  |  __Occupied interval__  |
| ------ | ------ |
| __Both From and To__ |[Min(From,To), Max(From,To)]|
| __Only From__ |[From,+∞]|
| __Only To__ |[-∞, To]|

Here is the previous example with some of the settings commented

#### Horizontally Defined Marked Zone

{{source=..\SamplesCS\ChartView\Annotations\MarkedZones.cs region=CartesianMarkedZone2}} 
{{source=..\SamplesVB\ChartView\Annotations\MarkedZones.vb region=CartesianMarkedZone2}} 

````C#
CartesianMarkedZoneAnnotation annotation = new CartesianMarkedZoneAnnotation();
annotation.HorizontalFrom = 4;
annotation.HorizontalTo = 9;
//annotation.VerticalFrom = 10;
//annotation.VerticalTo = 35;
annotation.BackColor = Color.FromArgb(50, 37, 160, 219);
//annotation.BorderDashStyle = DashStyle.Custom;
//annotation.BorderDashPattern = new float[] { 9, 3, 2, 4 };
annotation.BorderColor = Color.Orange;
annotation.BorderWidth = 1;
this.radChartView1.Annotations.Add(annotation);

````
````VB.NET
Dim annotation As New CartesianMarkedZoneAnnotation()
annotation.HorizontalFrom = 4
annotation.HorizontalTo = 9
'annotation.VerticalFrom = 10;
'annotation.VerticalTo = 35;
annotation.BackColor = Color.FromArgb(50, 37, 160, 219)
'annotation.BorderDashStyle = DashStyle.Custom;
'annotation.BorderDashPattern = new float[] { 9, 3, 2, 4 };
annotation.BorderColor = Color.Orange
annotation.BorderWidth = 1
Me.radChartView1.Annotations.Add(annotation)

````

{{endregion}} 

>caption Figure 3: Horizontally Defined Marked Zone
![chartview-annotations-markedzone-annotations 003](images/chartview-annotations-markedzone-annotations003.png)

# See Also

* [Annotations]({%slug winforms/chartview-/features/annotations%})
* [Axes]({%slug winforms/chartview-/axes%})
* [Series Types]({%slug winforms/chartview-/series-types%})
* [Populating with Data]({%slug winforms/chartview-/populating-with-data%})
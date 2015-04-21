---
title: Marked zone
page_title: Marked zone
description: Marked zone
slug: chartview-features-annotations-markedzone-annotations
tags: marked,zone
published: True
position: 2
---

# Marked zone



The __CartesianMarkedzoneAnnotation__ is a rectangle defined by the __HorizontalFrom/To__ and __VerticalFrom/To__ properties.
      ![chartview-annotations-markedzone-annotations 001](images/chartview-annotations-markedzone-annotations001.png)

## Properties

Besides the __HorizontalFrom/To__ and __VerticalFrom/To__ properties that are used for defining the rectangle, the __CartesianMarkedzoneAnnotation__ exposes the following properties:
      

* __HorizontalAxis__ and __VerticalAxis__ - used for associating the annotation with the chart axes.
          

* __BackColor__ - defines the back color of the marked zone.
          

* __BorderColor__ - specifies the border color of the marked zone.
          

* __BorderWidth__ - sets the border width of the marked zone.
          

## Examples

In the following example additional styling is applied to the default look of the annotation.
      ![chartview-annotations-markedzone-annotations 002](images/chartview-annotations-markedzone-annotations002.png)

#### __[C#] __

{{source=..\SamplesCS\ChartView\Annotations\MarkedZones.cs region=CartesianMarkedZone}}
	
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
	{{endregion}}



#### __[VB] __

{{source=..\SamplesVB\ChartView\Annotations\MarkedZones.vb region=CartesianMarkedZone}}
	
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
	{{endregion}}



The flexible design of the marked zone annotation allows the user to omit one (or more) of the four __HorizontalFrom/To__ and __VerticalFrom/To__ properties. 
        The following table details the relationship between the specified properties and the occupied interval on the axis:
      
<table><th><tr><td>

<b>
                Specified Properties
              </b></td><td>

<b>
                Occupied interval
              </b></td></tr></th><tr><td>

<b>Both From and To</b></td><td>

[Min(From,To), Max(From,To)]
            </td></tr><tr><td>

<b>Only From</b></td><td>

[From,+∞]
            </td></tr><tr><td>

<b>Only To</b></td><td>

[-∞, To]
            </td></tr></table>

Here is the previous example with some of the settings commented
      

#### __[C#] __

{{source=..\SamplesCS\ChartView\Annotations\MarkedZones.cs region=CartesianMarkedZone2}}
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
	{{endregion}}



#### __[VB] __

{{source=..\SamplesVB\ChartView\Annotations\MarkedZones.vb region=CartesianMarkedZone2}}
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
	{{endregion}}

![chartview-annotations-markedzone-annotations 003](images/chartview-annotations-markedzone-annotations003.png)

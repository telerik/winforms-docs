---
title: Plot Band
page_title: Plot band | UI for WinForms Documentation
description: Plot band annotation is a stripe, crossing its corresponding axis, specified by the From and To  properties.
slug: winforms/chartview-/features/annotations/plot-band
tags: plot,band
published: True
position: 1
previous_url: chartview-features-annotations-plotband
---

# Plot Band

Plot band annotation is a stripe, crossing its corresponding axis, specified by the __From__ and __To__ properties.

Common properties to the three types of annotations include:

* __BackColor:__ Sets the back color of the annotation.

* __BorderDashStyle:__ Defines the dash style of the border of the annotation.

* __BorderColor:__ Sets the color of the border of the annotation.

* __BorderWidth:__ Specifies the width of the border of the annotation.

## Cartesian Plot Band Annotation

Cartesian plot band annotation is either a horizontal or a vertical stripe that crosses from start to end the vertical or the horizontal axis respectively.

Here is what __CartesianPlotBandAnnotation__ looks like:

>caption Figure 1: CartesianPlotBandAnnotation
![chartview-annotations-plotband-annotations 001](images/chartview-annotations-plotband-annotations001.png)

#### Plot Band Annotation Setup

{{source=..\SamplesCS\ChartView\Annotations\PlotBand.cs region=CartesianPlotBand}} 
{{source=..\SamplesVB\ChartView\Annotations\PlotBand.vb region=CartesianPlotBand}} 

````C#
CartesianPlotBandAnnotation annotation1 = new CartesianPlotBandAnnotation();
annotation1.Axis = this.radChartView1.Axes[0] as CartesianAxis;
annotation1.From = 0.5;
annotation1.To = 1.5;
annotation1.BackColor = Color.FromArgb(100, Color.LightBlue);
annotation1.BorderColor = Color.Black;
annotation1.BorderWidth = 1;
this.radChartView1.Annotations.Add(annotation1);
CartesianPlotBandAnnotation annotation2 = new CartesianPlotBandAnnotation();
annotation2.Axis = this.radChartView1.Axes[1] as CartesianAxis;
annotation2.From = 4.5;
annotation2.To = 5.5;
annotation2.BackColor = Color.FromArgb(100, Color.LightBlue);
annotation2.BorderColor = Color.Black;
annotation2.BorderWidth = 1;
this.radChartView1.Annotations.Add(annotation2);

````
````VB.NET
Dim annotation1 As New CartesianPlotBandAnnotation()
annotation1.Axis = TryCast(Me.radChartView1.Axes(0), CartesianAxis)
annotation1.From = 0.5
annotation1.[To] = 1.5
annotation1.BackColor = Color.FromArgb(100, Color.LightBlue)
annotation1.BorderColor = Color.Black
annotation1.BorderWidth = 1
Me.radChartView1.Annotations.Add(annotation1)
Dim annotation2 As New CartesianPlotBandAnnotation()
annotation2.Axis = TryCast(Me.radChartView1.Axes(1), CartesianAxis)
annotation2.From = 4.5
annotation2.[To] = 5.5
annotation2.BackColor = Color.FromArgb(100, Color.LightBlue)
annotation2.BorderColor = Color.Black
annotation2.BorderWidth = 1
Me.radChartView1.Annotations.Add(annotation2)

````

{{endregion}}

Properties:

* __Axis:__ The Cartesian plotBand annotation needs to be associated with horizontal or vertical axis explicitly.

* __From__ (of type object): The starting point for the plot band. When the associated axis is numerical (Linear or Logarithmic) a numeric value is expected and when it is a  __CategoricalAxis__ - a category.

* __To__ (of type object): The ending point for the plot band. When the associated axis is numerical (Linear or Logarithmic) a numeric value is expected and when it is a __CategoricalAxis__ - a category.

* __Label:__ This property allows you to display text near the annotation and indicate what it is for.

## Polar Axis Plot Band Annotation

The Polar axis plot band annotation resembles a donut.

Here is what __PolarAxisPlotBandAnnotation__ looks like:

>caption Figure 2: PolarAxisPlotBandAnnotation
![chartview-annotations-plotband-annotations 002](images/chartview-annotations-plotband-annotations002.png)

#### Polar Axis Annotation

{{source=..\SamplesCS\ChartView\Annotations\PlotBand.cs region=PolarPlotBand}} 
{{source=..\SamplesVB\ChartView\Annotations\PlotBand.vb region=PolarPlotBand}} 

````C#
PolarAxisPlotBandAnnotation annotation1 = new PolarAxisPlotBandAnnotation();
annotation1.From = 6;
annotation1.To = 8;
annotation1.BackColor = Color.FromArgb(100, Color.LightBlue);
annotation1.BorderColor = Color.Black;
annotation1.BorderWidth = 1;
annotation1.BorderDashStyle = DashStyle.Solid;
this.radChartView1.Annotations.Add(annotation1);

````
````VB.NET
Dim annotation1 As New PolarAxisPlotBandAnnotation()
annotation1.From = 6
annotation1.[To] = 8
annotation1.BackColor = Color.FromArgb(100, Color.LightBlue)
annotation1.BorderColor = Color.Black
annotation1.BorderWidth = 1
annotation1.BorderDashStyle = DashStyle.Solid
Me.radChartView1.Annotations.Add(annotation1)

````

{{endregion}}

Properties:

* __From__ (of type double): The starting point for the plot band.

* __To__ (of type double): The ending point for the plot band.

## Radial Axis Plot Band Annotation

Radial axis plot band annotations represent visually a sector of the circle (pie slice).

A plot band starting from *180* degrees and ending in *270* degrees will look like this:

>caption Figure 3: RadialAxisPlotBandAnnotation
![chartview-annotations-plotband-annotations 003](images/chartview-annotations-plotband-annotations003.png)

#### Radial Axis Annotations

{{source=..\SamplesCS\ChartView\Annotations\PlotBand.cs region=RadialPlotBand1}} 
{{source=..\SamplesVB\ChartView\Annotations\PlotBand.vb region=RadialPlotBand1}} 

````C#
RadialAxisPlotBandAnnotation annotation1 = new RadialAxisPlotBandAnnotation();
annotation1.From = 180;
annotation1.To = 270;
this.radChartView1.Annotations.Add(annotation1);

````
````VB.NET
Dim annotation1 As New RadialAxisPlotBandAnnotation()
annotation1.From = 180
annotation1.[To] = 270
Me.radChartView1.Annotations.Add(annotation1)

````

{{endregion}}

If you wonder how to annotate the bigger segment from the image above, then you should use the __From__ and __To__ values.

>caption Figure 3: Annotated Bigger Segment
![chartview-annotations-plotband-annotations 004](images/chartview-annotations-plotband-annotations004.png)

#### Define Bigger Segment

{{source=..\SamplesCS\ChartView\Annotations\PlotBand.cs region=RadialPlotBand2}} 
{{source=..\SamplesVB\ChartView\Annotations\PlotBand.vb region=RadialPlotBand2}} 

````C#
RadialAxisPlotBandAnnotation annotation1 = new RadialAxisPlotBandAnnotation();
annotation1.From = 270;
annotation1.To = 180;
this.radChartView1.Annotations.Add(annotation1);

````
````VB.NET
Dim annotation1 As New RadialAxisPlotBandAnnotation()
annotation1.From = 270
annotation1.[To] = 180
Me.radChartView1.Annotations.Add(annotation1)

````

{{endregion}} 

Properties:

* __From__ (of type object): The starting point for the plot band. When the Radial axis is __NumericRadialAxis__ a numeric value is expected and when it is a __CategoricalRadialAxis__ - a category.

* __To__ (of type object): Tthe ending point for the plot band. When the Radial axis is __NumericRadialAxis__ a numeric value is expected and when it is a __CategoricalRadialAxis__ - a category.

# See Also

* [Annotations]({%slug winforms/chartview-/features/annotations%})
* [Axes]({%slug winforms/chartview-/axes%})
* [Series Types]({%slug winforms/chartview-/series-types%})
* [Populating with Data]({%slug winforms/chartview-/populating-with-data%})
---
title: Free Figure Annotation
page_title: Free Figure Annotation - UI for WinForms Documentation
description: The CartesianFreeFigureAnnotation is an annotation defined by a set of data points to form a free figure.
slug: free-figure-annotation
tags: free, figure, annotation
published: True
position: 4 
---

# CartesianFreeFigureAnnotation

**CartesianFreeFigureAnnotation** allows you to add an annotation in **RadChartView** that is formed by a set of **FreeFigurePoints**. This allows you to create a free figure plotted on the view-port. Each **FreeFigurePoint** is defined by **X** and **Y** values. 

>caption Figure 1: CartesianFreeFigureAnnotation

![WinForms RadChartView Cartesian Free Annotation](images/free-figure-annotation001.png)

#### Define Annotation

<snippet id='chartview-free-figure-annotation-customannotation-cs'/>
<snippet id='chartview-free-figure-annotation-customannotation-vb'/>



## Properties

|Property|Description|
|----|----|
|**Label**|Gets or sets the label.|
|**PointSize**|Gets or sets the point size.|
|**PointShape**|Gets or sets the point shape.|
|**Points**|Gets the collection of data points.|
|**CloseFigure**|Determines whether the figure will be closed by connecting a line from the endpoint to the starting point.|
|**Spline**|Gets or sets a value indicating whether the annotation will be drawn as a spline.|
|**SplineTension**|Gets or sets a value indicating the tension of the spline. Spline property must be set to true for this property to have effect.|
|**PositonOffset**|Allows you to specify the offset for the label.|


# See Also

* [Annotations]({%slug winforms/chartview-/features/annotations%})
* [Axes]({%slug winforms/chartview-/axes%})
* [Series Types]({%slug winforms/chartview-/series-types%})
* [Populating with Data]({%slug winforms/chartview-/populating-with-data%})

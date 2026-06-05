---
title: Lasso Selection
page_title: Lasso Selection - ChartView
description: RadChartView provides lasso zoom (zoom to selection) functionality by selecting a rectangle on the surface of the control and then zoom in automatically based on the selected Cartesian area
slug: winforms/chartview/features/lasso-selection
tags: lasso,selection
published: True
position: 2
---

# Lasso Selection

**RadChartView** provides lasso selection functionality allowing data points to be selected upon creating a lasso rectangle with the mouse. The functionality is defined in the **LassoSelectionController** class and it is only supported in the *Cartesian Area*.

>caption Figure 1: Selecting Data Points
![WinForms RadChartView Selecting Data Points](images/chartview-features-lasso-selection003.gif)

#### Add Sample Data and a Controller

<snippet id='chartview-lasso-selection-setuplassoselection-cs'/>
<snippet id='chartview-lasso-selection-setuplassoselection-vb'/>



The **LassoSelectionController** exposes a **LassoSelectedPointsChanged** event providing access to the data points within the bounds of the selection rectangle. In a scenario with multiple series, each of the series can be extracted from the **Presenter** property of the data point object   

#### The LassoSelectedPointsChanged Event

<snippet id='chartview-lasso-selection-lassoselectedpointschangedevent-cs'/>
<snippet id='chartview-lasso-selection-lassoselectedpointschangedevent-vb'/>



>note The controllers added in **RadChartView** are invoked in the order at which they have been added. In case a **LassoZoomController** is to be used together with a **LassoSelectionController**, the selection controller needs to be added first. 

>caption Figure 2: Lasso and Zoom
![WinForms RadChartView Lasso and Zoom](images/chartview-features-lasso-selection004.gif)

#### Lasso and Zoom Selection Controllers

<snippet id='chartview-lasso-selection-setuplassozoomcontrollers-cs'/>
<snippet id='chartview-lasso-selection-setuplassozoomcontrollers-vb'/>



Using this approach you can zoom any area in the chart using the 0-100 percentage scale.

# See Also

* [Axes]({%slug winforms/chartview-/axes%})
* [Series Types]({%slug winforms/chartview-/series-types%})
* [Populating with Data]({%slug winforms/chartview-/populating-with-data%})
* [Customization]({%slug winforms/chartview-/customization/custom-rendering%})
* [Printing]({%slug winforms/chartview-/printing-support/printing%})
* [Integrating PanZoom, TrackBall and LassoZoom Controllers in RadChartView](http://www.telerik.com/support/kb/winforms/details/integrating-panzoom-trackball-and-lassozoom-controllers-in-radchartview)

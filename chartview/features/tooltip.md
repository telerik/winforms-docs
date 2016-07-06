---
title: Tooltip
page_title: Tooltip | UI for WinForms Documentation
description: RadChartView provides a tooltip interactivity  with the ChartTooltipController class and can be used to visualize arbitrary information related to a data point.
slug: winforms/chartview-/features/tooltip
tags: tooltip
published: True
position: 3
previous_url: chartview-features-tooltip
---

# Tooltip

__RadChartView__ provides a tooltip interactivity  with the __ChartTooltipController__ class and can be used to visualize arbitrary information related to a data point. If the user hovers directly over a data point, the tooltip will display information for this particular data point, otherwise it will display information for the closest data point to the hold location.In order to utilize this behavior users simply have to add it to the chart's __Controllers__ collection. For example: 

#### Add Controller

{{source=..\SamplesCS\ChartView\Features\ChartTooltip.cs region=controller}} 
{{source=..\SamplesVB\ChartView\Features\ChartTooltip.vb region=controller}} 

````C#
radChartView1.Controllers.Add(new ChartTooltipController());

````
````VB.NET
radChartView1.Controllers.Add(New ChartTooltipController())

````

{{endregion}}

The __ChartTooltipController__ will be added automatically if the __ShowToolTip__ property of __RadChartView__ control is set to *true*: 

#### Set Property

{{source=..\SamplesCS\ChartView\Features\ChartTooltip.cs region=showToolTip}} 
{{source=..\SamplesVB\ChartView\Features\ChartTooltip.vb region=showToolTip}} 

````C#
radChartView1.ShowToolTip = true;

````
````VB.NET
radChartView1.ShowToolTip = True

````

{{endregion}}

A sample is shown below: 

#### Sample Setup

{{source=..\SamplesCS\ChartView\Features\ChartTooltip.cs region=example}} 
{{source=..\SamplesVB\ChartView\Features\ChartTooltip.vb region=example}} 

````C#
radChartView1.AreaType = ChartAreaType.Cartesian;
BarSeries barSeries1 = new BarSeries();
barSeries1.DataPoints.Add(new CategoricalDataPoint(10, "1"));
barSeries1.DataPoints.Add(new CategoricalDataPoint(4, "2"));
barSeries1.DataPoints.Add(new CategoricalDataPoint(23, "3"));
barSeries1.DataPoints.Add(new CategoricalDataPoint(11, "4"));
barSeries1.DataPoints.Add(new CategoricalDataPoint(15, "5"));
barSeries1.DataPoints.Add(new CategoricalDataPoint(10, "6"));
barSeries1.DataPoints.Add(new CategoricalDataPoint(4, "7"));
barSeries1.DataPoints.Add(new CategoricalDataPoint(7, "8"));
barSeries1.DataPoints.Add(new CategoricalDataPoint(11, "9"));
barSeries1.DataPoints.Add(new CategoricalDataPoint(15, "10"));
radChartView1.Series.Add(barSeries1);
BarSeries barSeries2 = new BarSeries();
barSeries2.DataPoints.Add(new CategoricalDataPoint(6, "1"));
barSeries2.DataPoints.Add(new CategoricalDataPoint(20, "2"));
barSeries2.DataPoints.Add(new CategoricalDataPoint(7, "3"));
barSeries2.DataPoints.Add(new CategoricalDataPoint(8, "4"));
barSeries2.DataPoints.Add(new CategoricalDataPoint(4, "5"));
barSeries2.DataPoints.Add(new CategoricalDataPoint(10, "6"));
barSeries2.DataPoints.Add(new CategoricalDataPoint(24, "7"));
barSeries2.DataPoints.Add(new CategoricalDataPoint(17, "8"));
barSeries2.DataPoints.Add(new CategoricalDataPoint(18, "9"));
barSeries2.DataPoints.Add(new CategoricalDataPoint(43, "10"));
radChartView1.Series.Add(barSeries2);
radChartView1.ShowToolTip = true;

````
````VB.NET
radChartView1.AreaType = ChartAreaType.Cartesian
Dim barSeries1 As New BarSeries
barSeries1.DataPoints.Add(New CategoricalDataPoint(10, "1"))
barSeries1.DataPoints.Add(New CategoricalDataPoint(4, "2"))
barSeries1.DataPoints.Add(New CategoricalDataPoint(23, "3"))
barSeries1.DataPoints.Add(New CategoricalDataPoint(11, "4"))
barSeries1.DataPoints.Add(New CategoricalDataPoint(15, "5"))
barSeries1.DataPoints.Add(New CategoricalDataPoint(10, "6"))
barSeries1.DataPoints.Add(New CategoricalDataPoint(4, "7"))
barSeries1.DataPoints.Add(New CategoricalDataPoint(7, "8"))
barSeries1.DataPoints.Add(New CategoricalDataPoint(11, "9"))
barSeries1.DataPoints.Add(New CategoricalDataPoint(15, "10"))
radChartView1.Series.Add(barSeries1)
Dim barSeries2 As New BarSeries()
barSeries2.DataPoints.Add(New CategoricalDataPoint(6, "1"))
barSeries2.DataPoints.Add(New CategoricalDataPoint(20, "2"))
barSeries2.DataPoints.Add(New CategoricalDataPoint(7, "3"))
barSeries2.DataPoints.Add(New CategoricalDataPoint(8, "4"))
barSeries2.DataPoints.Add(New CategoricalDataPoint(4, "5"))
barSeries2.DataPoints.Add(New CategoricalDataPoint(10, "6"))
barSeries2.DataPoints.Add(New CategoricalDataPoint(24, "7"))
barSeries2.DataPoints.Add(New CategoricalDataPoint(17, "8"))
barSeries2.DataPoints.Add(New CategoricalDataPoint(18, "9"))
barSeries2.DataPoints.Add(New CategoricalDataPoint(43, "10"))
radChartView1.Series.Add(barSeries2)
radChartView1.ShowToolTip = True

````

{{endregion}} 

>caption Figure 1: ToolTip
![chartview-features-tooltips 001](images/chartview-features-tooltips001.png)

The __ChartTooltipController__ also exposes a tooltip event. The event handler is a suitable place for changing the precalculated text.

#### Subscribe to Event

{{source=..\SamplesCS\ChartView\Features\ChartTooltip.cs region=DataPointTooltipTextNeeded}} 
{{source=..\SamplesVB\ChartView\Features\ChartTooltip.vb region=DataPointTooltipTextNeeded}}
````C#
ChartTooltipController tooltipController = new ChartTooltipController();
tooltipController.DataPointTooltipTextNeeded += tooltipController_DataPointTooltipTextNeeded;
this.radChartView1.Controllers.Add(tooltipController);

````
````VB.NET
Dim tooltipController As New ChartTooltipController()
AddHandler tooltipController.DataPointTooltipTextNeeded, AddressOf tooltipController_DataPointTooltipTextNeeded
Me.RadChartView1.Controllers.Add(tooltipController)

```` 



{{endregion}}

#### Change ToolTip`s Text

{{source=..\SamplesCS\ChartView\Features\ChartTooltip.cs region=ChangeText}} 
{{source=..\SamplesVB\ChartView\Features\ChartTooltip.vb region=ChangeText}}
````C#
private void tooltipController_DataPointTooltipTextNeeded(object sender, DataPointTooltipTextNeededEventArgs e)
{
    e.Text = "My special tooltip!";
}

````
````VB.NET
Private Sub TooltipController_DataPointTooltipTextNeeded(sender As Object, e As DataPointTooltipTextNeededEventArgs)
    e.Text = "My special tooltip!"
End Sub

```` 



{{endregion}}

>caption Figure 2: Modified ToolTip
![chartview-features-tooltips 002](images/chartview-features-tooltips002.png)

# See Also

* [Axes]({%slug winforms/chartview-/axes%})
* [Series Types]({%slug winforms/chartview-/series-types%})
* [Populating with Data]({%slug winforms/chartview-/populating-with-data%})
* [Customization]({%slug winforms/chartview-/customization/custom-rendering%})
* [Printing]({%slug winforms/chartview-/printing-support/printing%})

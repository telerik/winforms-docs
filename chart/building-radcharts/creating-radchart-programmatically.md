---
title: Creating RadChart Programmatically
page_title: Creating RadChart Programmatically | UI for WinForms Documentation
description: Creating RadChart Programmatically
slug: winforms/chart/building-radcharts/creating-radchart-programmatically
tags: creating,radchart,programmatically
published: True
position: 2
---

# Creating RadChart Programmatically



## 

The steps below show how to create a minimal __RadChart__ programmatically. 

See the "[create a more complex chart programmatically]({%slug winforms/chart/building-radcharts/creating-radchart-programmatically---more-complex-example%})" topic to see how multiple series are created and how appearance can be tailored at run-time.

See the topic "[Multiple Chart Types in a Single Chart]({%slug winforms/chart/advanced-topics/multiple-chart-types-in-a-single-chart%})" to see how multiple series area created programmatically and given different __ChartSeriesTypes__.

Once the chart is created, the critical steps are creating the [ChartSeries]({%slug winforms/chart/understanding-radchart-elements/series-overview%}) and [ChartSeriesItem]({%slug winforms/chart/understanding-radchart-elements/series-items%}) collections. There are two approaches to creating chart series objects. One is to use the default [ChartSeries]({%slug winforms/chart/understanding-radchart-elements/series-overview%}) constructor and assign its properties.  A second route is to use the __RadChart__ CreateSeries() method to set a number of important properties at once and return the constructed chart series.

1\. First add the namespaces that support the objects to be referenced. The Telerik.WebWinControls.UI namespace supports the __RadChart__ declaration and the Telerik.Charting namespace supports the other __RadChart__ objects, e.g. [ChartSeries]({%slug winforms/chart/understanding-radchart-elements/series-overview%}) and [ChartSeriesItem]({%slug winforms/chart/understanding-radchart-elements/series-items%}).
        		

{{source=..\SamplesCS\Chart\CreatingRadChartProgrammaticaly.cs region=namespace}} 
{{source=..\SamplesVB\Chart\CreatingRadChartProgrammaticaly.vb region=namespace}} 

````C#
using Telerik.WinControls.UI;
using Telerik.Charting;

````
````VB.NET
Imports Telerik.WinControls.UI
Imports Telerik.Charting

````

{{endregion}} 


2\. Next construct the <b>RadChart</b> itself.  To the <b>RadChart</b> instance, assign the chart title using the ChartTitle.TextBlock.Text property.
			
{{source=..\SamplesCS\Chart\CreatingRadChartProgrammaticaly.cs region=createAndSetText}} 
{{source=..\SamplesVB\Chart\CreatingRadChartProgrammaticaly.vb region=createAndSetText}} 

````C#
RadChart radChart = new RadChart();
radChart.ChartTitle.TextBlock.Text = "My RadChart";
this.Controls.Add(radChart);

````
````VB.NET
Dim RadChart1 As New RadChart()
RadChart1.ChartTitle.TextBlock.Text = "My RadChart"
Me.Controls.Add(RadChart1)

````

{{endregion}} 

3\. Construct a new [ChartSeries]({%slug winforms/chart/understanding-radchart-elements/series-overview%}) object. Assign a name to the [ChartSeries.]({%slug winforms/chart/understanding-radchart-elements/series-overview%}) Set the ChartSeries.Type to be <b>Bar</b>. Using the ChartSeries.AddItem() method, add a series of [ChartSeriesItem]({%slug winforms/chart/understanding-radchart-elements/series-items%}) objects to the series <b>Items</b> collection. AddItem takes as parameters a double "Value" and a string "Label". 


{{source=..\SamplesCS\Chart\CreatingRadChartProgrammaticaly.cs region=createChartSeries}} 
{{source=..\SamplesVB\Chart\CreatingRadChartProgrammaticaly.vb region=createChartSeries}} 

````C#
// Create a ChartSeries and assign its name and chart type
Telerik.Charting.ChartSeries chartSeries = new Telerik.Charting.ChartSeries();
chartSeries.Name = "Sales";
chartSeries.Type = ChartSeriesType.Bar;
// add new items to the series,
// passing a value and a label string
chartSeries.AddItem(120, "Internet");
chartSeries.AddItem(140, "Retail");
chartSeries.AddItem(35, "Wholesale");

````
````VB.NET
' Create a ChartSeries and assign its name and chart type
Dim chartSeries As New Telerik.Charting.ChartSeries()
chartSeries.Name = "Sales"
chartSeries.Type = ChartSeriesType.Bar
' add new items to the series,
' passing a value and a label string
chartSeries.AddItem(120, "Internet")
chartSeries.AddItem(140, "Retail")
chartSeries.AddItem(35, "Wholesale")

````

{{endregion}} 
 
4\. Finally, add the [ChartSeries]({%slug winforms/chart/understanding-radchart-elements/series-overview%}) to the RadChart. <b>Series</b> collection and add the <b>RadChart</b> to the page. 

{{source=..\SamplesCS\Chart\CreatingRadChartProgrammaticaly.cs region=addSeriesToChart}} 
{{source=..\SamplesVB\Chart\CreatingRadChartProgrammaticaly.vb region=addSeriesToChart}} 

````C#
radChart.Series.Add(chartSeries);

````
````VB.NET
' add the series to the RadChart Series collection
RadChart1.Series.Add(chartSeries)

````

{{endregion}} 


5\. The finished chart in the running project should look like this example: 


>caption 

![chart-building-radcharts-creating-radchart-programmatically 001](images/chart-building-radcharts-creating-radchart-programmatically001.png)



The alternative to using the [ChartSeries]({%slug winforms/chart/understanding-radchart-elements/series-overview%}) object constructor and assigning properties is to use the <b>RadChart</b> CreateSeries() method that lets you pass several properties in the call, including Name, MainColor, SecondColor and <b>ChartSeriesType</b>. 

{{source=..\SamplesCS\Chart\CreatingRadChartProgrammaticaly.cs region=usingCreateSeries}} 
{{source=..\SamplesVB\Chart\CreatingRadChartProgrammaticaly.vb region=usingCreateSeries}} 

````C#
Telerik.Charting.ChartSeries chartSeries1 = radChart.CreateSeries("Sales", System.Drawing.Color.RoyalBlue, System.Drawing.Color.LightSteelBlue, ChartSeriesType.Bar);

````
````VB.NET
Dim chartSeries1 As Telerik.Charting.ChartSeries = RadChart1.CreateSeries("Sales", System.Drawing.Color.RoyalBlue, System.Drawing.Color.LightSteelBlue, ChartSeriesType.Bar)

````

	{{endregion}} 






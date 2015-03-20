---
title: Creating RadChart Programmatically
page_title: Creating RadChart Programmatically
description: Creating RadChart Programmatically
slug: chart-building-radcharts-creating-radchart-programmatically
tags: creating,radchart,programmatically
published: True
position: 2
---

# Creating RadChart Programmatically



## 

The steps below show how to create a minimal __RadChart__ programmatically. 

See the "[create a more complex chart programmatically]({%slug chart-building-radcharts-creating-radchart-programmatically-more-complex-example%})" topic to see how multiple series are created and how appearance can be tailored at run-time.

See the topic "[Multiple Chart Types in a Single Chart]({%slug chart-advanced-topics-multiple-chart-types-in-a-single-chart%})" to see how multiple series area created programmatically and given different __ChartSeriesTypes__.

Once the chart is created, the critical steps are creating the [ChartSeries]({%slug chart-undestanding-radchart-elements-series-overview%}) and [ChartSeriesItem]({%slug chart-undestanding-radchart-elements-series-items%}) collections. There are two approaches to creating chart series objects. One is to use the default [ChartSeries]({%slug chart-undestanding-radchart-elements-series-overview%}) constructor and assign its properties.  A second route is to use the __RadChart__ CreateSeries() method to set a number of important properties at once and return the constructed chart series.

1. First add the namespaces that support the objects to be referenced. The Telerik.WebWinControls.UI namespace supports the __RadChart__ declaration and the Telerik.Charting namespace supports the other __RadChart__ objects, e.g. [ChartSeries]({%slug chart-undestanding-radchart-elements-series-overview%}) and [ChartSeriesItem]({%slug chart-undestanding-radchart-elements-series-items%}).
        		
          	

#### __[C#] Required namespaces__

{{region namespace}}
	using Telerik.WinControls.UI;
	using Telerik.Charting;
	{{endregion}}



#### __[VB.NET] Required namespaces__

{{region namespace}}
	Imports Telerik.WinControls.UI
	Imports Telerik.Charting
	{{endregion}}



1. Next construct the __RadChart__ itself.  To the __RadChart__ instance, assign the chart title using the ChartTitle.TextBlock.Text property.
			
		 	

#### __[C#] Instantiate RadChart and set its Text__

{{region createAndSetText}}
	            RadChart radChart = new RadChart();
	            radChart.ChartTitle.TextBlock.Text = "My RadChart";
	            this.Controls.Add(radChart);
	{{endregion}}



#### __[VB.NET] Instantiate RadChart and set its Text__

{{region createAndSetText}}
	        Dim RadChart1 As New RadChart()
	        RadChart1.ChartTitle.TextBlock.Text = "My RadChart"
	        Me.Controls.Add(RadChart1)
	{{endregion}}



1. Construct a new [ChartSeries]({%slug chart-undestanding-radchart-elements-series-overview%}) object. Assign a name to the [ChartSeries.]({%slug chart-undestanding-radchart-elements-series-overview%}) Set the ChartSeries.Type to be __Bar__. Using the ChartSeries.AddItem() method, add a series of [ChartSeriesItem]({%slug chart-undestanding-radchart-elements-series-items%}) objects to the series __Items__ collection. AddItem takes as parameters a double "Value" and a string "Label". 
          	
          	

#### __[C#] Create Series__

{{region createChartSeries}}
	            // Create a ChartSeries and assign its name and chart type
	            Telerik.Charting.ChartSeries chartSeries = new Telerik.Charting.ChartSeries();
	            chartSeries.Name = "Sales";
	            chartSeries.Type = ChartSeriesType.Bar;
	            // add new items to the series,
	            // passing a value and a label string
	            chartSeries.AddItem(120, "Internet");
	            chartSeries.AddItem(140, "Retail");
	            chartSeries.AddItem(35, "Wholesale");
	{{endregion}}



#### __[VB.NET] Create Series__

{{region createChartSeries}}
	        ' Create a ChartSeries and assign its name and chart type
	        Dim chartSeries As New Telerik.Charting.ChartSeries()
	        chartSeries.Name = "Sales"
	        chartSeries.Type = ChartSeriesType.Bar
	        ' add new items to the series,
	        ' passing a value and a label string
	        chartSeries.AddItem(120, "Internet")
	        chartSeries.AddItem(140, "Retail")
	        chartSeries.AddItem(35, "Wholesale")
	{{endregion}}



1. Finally, add the [ChartSeries]({%slug chart-undestanding-radchart-elements-series-overview%}) to the __RadChart__ __Series______collection and add the __RadChart__ to the page. 
			

#### __[C#] Adding Series to RadChart__

{{region addSeriesToChart}}
	            radChart.Series.Add(chartSeries);
	{{endregion}}



#### __[VB.NET] Adding Series to RadChart__

{{region addSeriesToChart}}
	        ' add the series to the RadChart Series collection
	        RadChart1.Series.Add(chartSeries)
	{{endregion}}



1. The finished chart in the running project should look like this example: 



![chart-building-radcharts-creating-radchart-programmatically 001](images/chart-building-radcharts-creating-radchart-programmatically001.png)



The alternative to using the [ChartSeries]({%slug chart-undestanding-radchart-elements-series-overview%}) object constructor and assigning properties is to use the __RadChart__ CreateSeries() method that lets you pass several properties in the call, including Name, MainColor, SecondColor and __ChartSeriesType__.

#### __[C#] Using the CreateSeries method__

{{region usingCreateSeries}}
	            Telerik.Charting.ChartSeries chartSeries1 = radChart.CreateSeries("Sales", System.Drawing.Color.RoyalBlue, System.Drawing.Color.LightSteelBlue, ChartSeriesType.Bar);
	{{endregion}}



#### __[VB.NET] Using the CreateSeries method__

{{region usingCreateSeries}}
	        Dim chartSeries1 As Telerik.Charting.ChartSeries = RadChart1.CreateSeries("Sales", System.Drawing.Color.RoyalBlue, System.Drawing.Color.LightSteelBlue, ChartSeriesType.Bar)
	{{endregion}}





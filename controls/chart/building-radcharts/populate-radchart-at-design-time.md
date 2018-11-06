---
title: Populate RadChart at Design-Time
page_title: Populate RadChart at Design-Time | UI for WinForms Documentation
description: Populate RadChart at Design-Time
slug: winforms/chart/building-radcharts/populate-radchart-at-design-time
tags: populate,radchart,at,design-time
published: True
position: 1
previous_url: chart-building-radcharts-populate-radchart-at-design-time
---

# Populate RadChart at Design-Time



## 

__RadChart__ provides two collection editors: ChartSeries Collection Editor and __ChartSeriesItem Collection Editor__. They allow you to easily create series and items, and set the relevant properties without writing any code.  

There are two basic steps to populate the RadChart with data:

1. Click on the RadChart __Series__ property ellipses to display the ChartSeries Collection Editor. Here you can add or remove series in the Members list box on the left side of the editor. You can set the series level properties by selecting a series member and editing properties in the properties window located on the right hand side of the editor. See topics [Series Overview]({%slug winforms/chart/understanding-radchart-elements/series-overview%}), [Series Items]({%slug winforms/chart/understanding-radchart-elements/series-items%}) and [Series-Specific Properties]({%slug winforms/chart/understanding-radchart-elements/series-specific-properties%}) for more information. Note the __Items__ property under the __Series__ property category. 
	>caption 

	![chart-building-radcharts-populate-radchart-at-design-time 001](images/chart-building-radcharts-populate-radchart-at-design-time001.png)

1. Click the __Items__ property ellipses of a series to display the __ChartSeriesItem Collection Editor__. Here you can add or remove items in the Members list box on the left side of the editor.  Select __ChartSeriesItem__ objects in the Members list box on the left side of the editor. You can set item properties by selecting an item member and editing properties in the properties window located on the right hand side of the editor. Set the values for each item using the properties under the "Basic value set" property category. See [Series Items]({%slug winforms/chart/understanding-radchart-elements/series-items%}) for more information.
	>caption 

	![chart-building-radcharts-populate-radchart-at-design-time 002](images/chart-building-radcharts-populate-radchart-at-design-time002.png)

The running application shows __ChartSeries__ members in the Legend and __ChartSeriesItem__ as bars in the plot area.  

>note This chart example also displays customization in the legend and axis labels. See [Legends]({%slug winforms/chart/understanding-radchart-elements/legends%}) and [Axis Labels]({%slug winforms/chart/understanding-radchart-elements/axis-labels%}) for more information.
	

>caption ![chart-building-radcharts-populate-radchart-at-design-time 003](images/chart-building-radcharts-populate-radchart-at-design-time003.png)

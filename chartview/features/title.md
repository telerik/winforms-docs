---
title: Title
page_title: Title | UI for WinForms Documentation
description: Title
slug: winforms/chartview-/features/title
tags: title
published: True
position: 5
previous_url: chartview-features-title
---

# Title

To show the title in __RadChartView__ you need to set the __ShowTitle__ property to *true* (by default is *false*) and also to set the desired title text in the __Title__ property: 

#### Showing Title

{{source=..\SamplesCS\ChartView\Features\ChartViewTitle.cs region=ShowTitle}} 
{{source=..\SamplesVB\ChartView\Features\ChartViewTitle.vb region=ShowTitle}} 

````C#
this.radChartView1.Title = "OS Platform statistics Q1";
this.radChartView1.ShowTitle = true;

````
````VB.NET
Me.RadChartView1.Title = "OS Platform statistics Q1"
Me.RadChartView1.ShowTitle = True

````

{{endregion}} 

>caption Figure 1: Custom Title
![chartview-features-title 001](images/chartview-features-title001.png)

The title can be moved to all four sides of the chart using the __TitleLocation__ property. Also, you can access the title element, which allows you to set various options: 

{{source=..\SamplesCS\ChartView\Features\ChartViewTitle.cs region=CustomizeTitle}} 
{{source=..\SamplesVB\ChartView\Features\ChartViewTitle.vb region=CustomizeTitle}} 

````C#
this.radChartView1.ChartElement.TitleElement.TextOrientation = Orientation.Vertical;
this.radChartView1.ChartElement.TitlePosition = TitlePosition.Left;
this.radChartView1.ChartElement.TitleElement.FlipText = true;

````
````VB.NET
Me.RadChartView1.ChartElement.TitleElement.TextOrientation = Orientation.Vertical
Me.RadChartView1.ChartElement.TitlePosition = TitlePosition.Left
Me.RadChartView1.ChartElement.TitleElement.FlipText = True

````

{{endregion}} 

>caption Figure 2: Title Positon
![chartview-features-title 002](images/chartview-features-title002.png)

# See Also

* [Axes]({%slug winforms/chartview-/axes%})
* [Series Types]({%slug winforms/chartview-/series-types%})
* [Populating with Data]({%slug winforms/chartview-/populating-with-data%})
* [Customization]({%slug winforms/chartview-/customization/custom-rendering%})
* [Printing]({%slug winforms/chartview-/printing-support/printing%})

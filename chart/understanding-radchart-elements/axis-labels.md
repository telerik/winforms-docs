---
title: Axis Labels
page_title: Axis Labels | UI for WinForms Documentation
description: Axis Labels
slug: winforms/chart/understanding-radchart-elements/axis-labels
tags: axis,labels
published: True
position: 3
previous_url: chart-undestanding-radchart-elements-axis-labels
---

# Axis Labels



Labels are displayed for each:

* *Chart axis* to describe the category of values along the axis.  For example "Products", "Risk Factors", time periods or geographic areas. 


* *Chart axis item* to describe the specific value or category for that item.chart-undestanding-radchart-elements-axis-labels

## Formatting Axis Labels

* To format the *chart axis label* use the PlotArea.<axis>.AxisLabel to access __Appearance__ and __TextBlock__ properties 


* To set the formatting for *all labels *on an axis use the PlotArea.<axis>.Appearance __LabelAppearance__ and __TextAppearance__ properties. 


* To format a label for a *specific chart axis item* use the PlotArea.<axis>.Items[].__Appearance property__. 

Use the __MinValue__ and __MaxValue__ properties to specify the minimum and maximum values for the data to display. The __MinValue__ property allows you to specify either negative or positive number as the minimum value. In the example below the __MinValue__ = -50, __MaxValue__ = 50 and __Step__ = 10.
>caption 

![chart-undestanding-radchart-elements-axis-labels 001](images/chart-undestanding-radchart-elements-axis-labels001.png)

The PlotArea.<axis>.Appearance.ValueForma property automatically formats axis label values as __Currency__, __Scientific__, __General__, __Number__, __Percent__, __ShortDate__, __ShortTime__, __LongDate__, __LongTime__ or __None__.

## Positioning Axis Labels

You can specify the horizontal and vertical alignment of axis labels and axis item labels using the Appearance.Position property of the axis label or chart axis item respectively. __Position__ has sub properties for __AlignedPosition__, __Auto__, __X__ and __Y__.  

Use __AlignedPosition__ to automatically place the label __Right__, __Left__, __Top__, __Center__, __TopRight__, __TopLeft__, __BottomRight__ or __BottomLeft__.  
>caption 

![chart-undestanding-radchart-elements-axis-labels 002](images/chart-undestanding-radchart-elements-axis-labels002.png)

Use the RotationAngle property to spin axis and axis item labels to any angle.  In the example below the XAxis.Appearance.LabelAppearance.RotationAngle is set to 45.
>caption 

![chart-undestanding-radchart-elements-axis-labels 003](images/chart-undestanding-radchart-elements-axis-labels003.png)

By turning off the Position.__Auto__ property and setting Position.AlignedPosition to __None__ you can place the axis label any where in the plot area.  In the example below the PlotArea.YAxis.AxisLabel.Appearance.Position property is configured such that:

* __AlignedPosition__ =  None 


* __Auto__ = False 


* __X__ = 120 


* __Y__ = 200

The YAxis.AxisLabel.Appearance.RotationAngle = 325. 

>tip This isn't a recommended or usual approach but serves to illustrate the flexibility of the object model.
>


Also in the example below, the PlotArea.XAxis.AutoScale is turned off so the PlotArea.XAxis.Items collection could be populated manually. Each __ChartAxisItem__ has its TextBlock.Text property populated with the strings "Non-Smokers", "Social Smokers" and "Heavy Smokers".
>caption 

![chart-undestanding-radchart-elements-axes 003](images/chart-undestanding-radchart-elements-axes003.png)

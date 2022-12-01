---
title: Bubble Charts
page_title: Bubble Charts - UI for WinForms Documentation
description: Bubble Charts
slug: winforms/chart/understanding-radchart-types/bubble-charts
tags: bubble,charts
published: True
position: 8
previous_url: chart-undestanding-radchart-types-bubble-charts
---

# Bubble Charts



## 

The Bubble chart is an extension of the Point chart but each point can be a circle or oval of any size or dimension. Instead of using just the XValue and YValue, the Bubble chart uses XValue/XValue2, and YValue/YValue2 pairs to define the dimensions of each bubble. Bubble charts are commonly used to display financial information where the size of the bubble can be proportionate to the data values. 

To change the size of all bubbles in a series, but to not distort the dimensions of the bubble, assign the __Series.Appearance.BubbleSize__ property.

To create a vertical Bubble Chart set the __SeriesOrientation__ property to __Vertical__. Set the RadChart __DefaultType__ property or __ChartSeries.TypeBubble__. Add one or more chart series to the __Series__ collection.  Add one or more chart items to the series __Items__ collection. Populate numeric values for __XValue__, __XValue2__, __YValue__ and __YValue2__ properties of each chart series item.
>caption 

![WinForms RadChart ](images/chart-undestanding-radchart-types-bubble-charts001.png)

To create a vertical Bubble Chart set the __SeriesOrientation__ property to __Horizontal__. Set the RadChart __DefaultType__ property or __ChartSeries.TypeBubble__. Add one or more chart series to the __Series__ collection.  Add one or more chart items to the series __Items__ collection. Populate numeric values for __XValue__, __XValue2__, __YValue__ and __YValue2__ properties of each chart series item.
>caption 

![WinForms RadChart chart-undestanding-radchart-types-bubble-charts 002](images/chart-undestanding-radchart-types-bubble-charts002.png)

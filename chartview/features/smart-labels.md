---
title: Smart labels
page_title: Smart labels | UI for WinForms Documentation
description: Smart labels
slug: winforms/chartview-/features/smart-labels
tags: smart,labels
published: True
position: 7
previous_url: chartview-features-smart-labels
---

# Smart labels



## 

RadChartView provides a built-in mechanism for resolving labels overlapping with the __SmartLabelsController__ . You can add the controller to the __Controllers__ collection of RadChartView and it will optimize the arrangement of the labels in a way that there will be less overlaps. 

{{source=..\SamplesCS\ChartView\Features\SmartLabels.cs region=AddSmartLabelsController}} 
{{source=..\SamplesVB\ChartView\Features\SmartLabels.vb region=AddSmartLabelsController}} 

````C#
this.radChartView1.Controllers.Add(new SmartLabelsController());

````
````VB.NET
Me.radChartView1.Controllers.Add(New SmartLabelsController())

````

{{endregion}}  

Alternatively, you can leave RadChartView do this for you by setting the __ShowSmartLabels__ property: 

{{source=..\SamplesCS\ChartView\Features\SmartLabels.cs region=EnableSmartLabels}} 
{{source=..\SamplesVB\ChartView\Features\SmartLabels.vb region=EnableSmartLabels}} 

````C#
this.radChartView1.ShowSmartLabels = true;

````
````VB.NET
Me.radChartView1.ShowSmartLabels = True

````

{{endregion}} 


 
Automatic label placement is one the most complex and time consuming operations in a chart that is NP-hard ([http://en.wikipedia.org/wiki/NP-Hard](http://en.wikipedia.org/wiki/NP-Hard)). There is no universal solution for all chart types and there is no solution that can guarantee solution for 100% of the label collisions in every case.

![chartview-features-smart-labels 001](images/chartview-features-smart-labels001.png)

RadChartView’s __SmartLabelsController__ uses strategies specific to different chart types to resolve label overlaps. Since label overlapping can be quite time consuming with more generalized methods, the more concrete a strategy is the better the performance that can be expected out of it. You do not need to be concerned with the strategy, RadChartView will choose the best of the built-in strategies to be used in your chart.

![chartview-features-smart-labels 002](images/chartview-features-smart-labels002.png)![chartview-features-smart-labels 003](images/chartview-features-smart-labels003.png)

---
title: Customizing RadRangeSelector 
page_title: Customizing RadRangeSelector  | UI for WinForms Documentation
description: Customizing RadRangeSelector 
slug: winforms/rangeselector-/customizing-radrangeselector-
tags: customizing,radrangeselector,
published: True
position: 5
---

# Customizing RadRangeSelector 

Each of the control's elements can be accessed and customized. Once you access the desired elements, you can tweak its properties in order to modify it. In this tutorial, we will take a look at code snippets, demonstrating how to access and modify different parts of the control:

## Customize hover elements

The following code snippet demonstrates how to access and customize the Range and Hover elements through element tree:

{{source=..\SamplesCS\RangeSelector\CustomizingRadRangeSelector.cs region=CustomizeHover}} 
{{source=..\SamplesVB\RangeSelector\CustomizingRadRangeSelector.vb region=CustomizeHover}} 

````C#
RangeSelectorViewElement chartElement = this.radRangeSelector1.RangeSelectorElement.AssociatedElement as RangeSelectorViewElement;
chartElement.SeriesInitializing += new SeriesInitializingEventHandler(chartElement_SeriesInitializing);

````
````VB.NET
Dim chartElement As RangeSelectorViewElement = TryCast(Me.radRangeSelector1.RangeSelectorElement.AssociatedElement, RangeSelectorViewElement)
AddHandler chartElement.SeriesInitializing, AddressOf chartElement_SeriesInitializing

````

{{endregion}}

![rangeselector-customizing-radrangeselector 001](images/rangeselector-customizing001.png)

## Customize thumbs

{{source=..\SamplesCS\RangeSelector\CustomizingRadRangeSelector.cs region=CustomizeThumb}} 
{{source=..\SamplesVB\RangeSelector\CustomizingRadRangeSelector.vb region=CustomizeThumb}} 

````C#
RangeSelectorViewElement chartElement = this.radRangeSelector1.RangeSelectorElement.AssociatedElement as RangeSelectorViewElement;
chartElement.SeriesInitializing += new SeriesInitializingEventHandler(chartElement_SeriesInitializing);

````
````VB.NET
Dim chartElement As RangeSelectorViewElement = TryCast(Me.radRangeSelector1.RangeSelectorElement.AssociatedElement, RangeSelectorViewElement)
AddHandler chartElement.SeriesInitializing, AddressOf chartElement_SeriesInitializing

````

{{endregion}}

![rangeselector-customizing-radrangeselector 002](images/rangeselector-customizing002.png)

## Customize scroll event

This scroll element appears only when associated element implements IRangeSelectorElement interface.

{{source=..\SamplesCS\RangeSelector\CustomizingRadRangeSelector.cs region=CustomizeScroll}} 
{{source=..\SamplesVB\RangeSelector\CustomizingRadRangeSelector.vb region=CustomizeScroll}} 

````C#
RangeSelectorViewElement chartElement = this.radRangeSelector1.RangeSelectorElement.AssociatedElement as RangeSelectorViewElement;
chartElement.SeriesInitializing += new SeriesInitializingEventHandler(chartElement_SeriesInitializing);

````
````VB.NET
Dim chartElement As RangeSelectorViewElement = TryCast(Me.radRangeSelector1.RangeSelectorElement.AssociatedElement, RangeSelectorViewElement)
AddHandler chartElement.SeriesInitializing, AddressOf chartElement_SeriesInitializing

````

{{endregion}}

![rangeselector-customizing-radrangeselector 003](images/rangeselector-customizing003.png)

## Customize scales

The scales are created dynamically according to the associated element and its look and feel can be customized through the __ScaleInitializing__ event.

{{source=..\SamplesCS\RangeSelector\CustomizingRadRangeSelector.cs region=CustomizeScales}} 
{{source=..\SamplesVB\RangeSelector\CustomizingRadRangeSelector.vb region=CustomizeScales}} 

````C#
RangeSelectorViewElement chartElement = this.radRangeSelector1.RangeSelectorElement.AssociatedElement as RangeSelectorViewElement;
chartElement.SeriesInitializing += new SeriesInitializingEventHandler(chartElement_SeriesInitializing);

````
````VB.NET
Dim chartElement As RangeSelectorViewElement = TryCast(Me.radRangeSelector1.RangeSelectorElement.AssociatedElement, RangeSelectorViewElement)
AddHandler chartElement.SeriesInitializing, AddressOf chartElement_SeriesInitializing

````

{{endregion}}

![rangeselector-customizing-radrangeselector 004](images/rangeselector-customizing004.png)

## Customize ChartElement

In order to customize the chart that is drawn into __RadRangeSelector__ when it is associated with __RadChartView__, the associated element should be accessed. The following code snippet demonstrates how this can be achieved.

{{source=..\SamplesCS\RangeSelector\CustomizingRadRangeSelector.cs region=CustomizeChartElement}} 
{{source=..\SamplesVB\RangeSelector\CustomizingRadRangeSelector.vb region=CustomizeChartElement}} 

````C#
RangeSelectorViewElement chartElement = this.radRangeSelector1.RangeSelectorElement.AssociatedElement as RangeSelectorViewElement; 
chartElement.SeriesInitializing += new SeriesInitializingEventHandler(chartElement_SeriesInitializing);

````
````VB.NET
Dim chartElement As RangeSelectorViewElement = TryCast(Me.radRangeSelector1.RangeSelectorElement.AssociatedElement, RangeSelectorViewElement)
AddHandler chartElement.SeriesInitializing, AddressOf chartElement_SeriesInitializing

````

{{endregion}}



{{source=..\SamplesCS\RangeSelector\CustomizingRadRangeSelector.cs region=CustomizeChartElement1}} 
{{source=..\SamplesVB\RangeSelector\CustomizingRadRangeSelector.vb region=CustomizeChartElement1}} 

````C#
RangeSelectorViewElement chartElement = this.radRangeSelector1.RangeSelectorElement.AssociatedElement as RangeSelectorViewElement;
chartElement.SeriesInitializing += new SeriesInitializingEventHandler(chartElement_SeriesInitializing);

````
````VB.NET
Dim chartElement As RangeSelectorViewElement = TryCast(Me.radRangeSelector1.RangeSelectorElement.AssociatedElement, RangeSelectorViewElement)
AddHandler chartElement.SeriesInitializing, AddressOf chartElement_SeriesInitializing

````

{{endregion}}

![rangeselector-customizing-radrangeselector 005](images/rangeselector-customizing005.png)
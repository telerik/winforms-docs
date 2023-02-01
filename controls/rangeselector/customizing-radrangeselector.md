---
title: Customizing RadRangeSelector 
page_title: Customizing RadRangeSelector  - RadRangeSelector
description: Customizing RadRangeSelector 
slug: winforms/rangeselector/customizing-radrangeselector
tags: customizing,radrangeselector,
published: True
position: 6
previous_url: rangeselector-customizing-radrangeselector
---

# Customizing RadRangeSelector 

Each of the control's elements can be accessed and customized. Once you access the desired elements, you can tweak its properties in order to modify it. In this tutorial, we will take a look at code snippets, demonstrating how to access and modify different parts of the control:

## Customize Hover Elements

The following code snippet demonstrates how to access and customize the Range and Hover elements through element tree:

{{source=..\SamplesCS\RangeSelector\CustomizingRadRangeSelector.cs region=CustomizeHover}} 
{{source=..\SamplesVB\RangeSelector\CustomizingRadRangeSelector.vb region=CustomizeHover}} 

````C#
this.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.LeftHover.BackColor = Color.Yellow;
this.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.LeftHover.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
this.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.LeftHover.Opacity = 0.5;
this.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.RightHover.Opacity = 0.5;
this.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.RightHover.BackColor = Color.Yellow;
this.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.RightHover.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
this.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.Range.Opacity = 0.5;
this.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.Range.BackColor = Color.Red;
this.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.Range.GradientStyle = Telerik.WinControls.GradientStyles.Solid;

````
````VB.NET
Me.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.LeftHover.BackColor = Color.Yellow
Me.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.LeftHover.GradientStyle = Telerik.WinControls.GradientStyles.Solid
Me.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.LeftHover.Opacity = 0.5
Me.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.RightHover.Opacity = 0.5
Me.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.RightHover.BackColor = Color.Yellow
Me.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.RightHover.GradientStyle = Telerik.WinControls.GradientStyles.Solid
Me.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.Range.Opacity = 0.5
Me.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.Range.BackColor = Color.Red
Me.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.Range.GradientStyle = Telerik.WinControls.GradientStyles.Solid

````

{{endregion}}

![WinForms RadRangeSelector Customize Hover Elements](images/rangeselector-customizing001.png)

## Customize Thumbs

{{source=..\SamplesCS\RangeSelector\CustomizingRadRangeSelector.cs region=CustomizeThumb}} 
{{source=..\SamplesVB\RangeSelector\CustomizingRadRangeSelector.vb region=CustomizeThumb}} 

````C#
this.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.LeftThumb.BackColor = Color.Green;
this.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.LeftThumb.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
this.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.RightThumb.BackColor = Color.Green;
this.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.RightThumb.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
this.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.LeftThumbLine.BackColor = Color.Green;
this.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.RightThumbLine.BackColor = Color.Green;

````
````VB.NET
Me.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.LeftThumb.BackColor = Color.Green
Me.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.LeftThumb.GradientStyle = Telerik.WinControls.GradientStyles.Solid
Me.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.RightThumb.BackColor = Color.Green
Me.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.RightThumb.GradientStyle = Telerik.WinControls.GradientStyles.Solid
Me.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.LeftThumbLine.BackColor = Color.Green
Me.radRangeSelector1.RangeSelectorElement.BodyElement.ViewContainer.TrackingElement.RightThumbLine.BackColor = Color.Green

````

{{endregion}}

![WinForms RadRangeSelector Customize Thumbs](images/rangeselector-customizing002.png)

## Customize Scroll Event

This scroll element appears only when associated element implements IRangeSelectorElement interface.

{{source=..\SamplesCS\RangeSelector\CustomizingRadRangeSelector.cs region=CustomizeScroll}} 
{{source=..\SamplesVB\RangeSelector\CustomizingRadRangeSelector.vb region=CustomizeScroll}} 

````C#
this.radRangeSelector1.RangeSelectorElement.ScrollSelectorElement.LeftTopThumb.BackColor = Color.Green;
this.radRangeSelector1.RangeSelectorElement.ScrollSelectorElement.LeftTopThumb.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
this.radRangeSelector1.RangeSelectorElement.ScrollSelectorElement.BottomRightThumb.BackColor = Color.Green;
this.radRangeSelector1.RangeSelectorElement.ScrollSelectorElement.BottomRightThumb.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
this.radRangeSelector1.RangeSelectorElement.ScrollSelectorElement.Range.BackColor = Color.Green;
this.radRangeSelector1.RangeSelectorElement.ScrollSelectorElement.Range.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
this.radRangeSelector1.RangeSelectorElement.ScrollSelectorElement.SellectionRange.BackColor = Color.Red;

````
````VB.NET
Me.radRangeSelector1.RangeSelectorElement.ScrollSelectorElement.LeftTopThumb.BackColor = Color.Green
Me.radRangeSelector1.RangeSelectorElement.ScrollSelectorElement.LeftTopThumb.GradientStyle = Telerik.WinControls.GradientStyles.Solid
Me.radRangeSelector1.RangeSelectorElement.ScrollSelectorElement.BottomRightThumb.BackColor = Color.Green
Me.radRangeSelector1.RangeSelectorElement.ScrollSelectorElement.BottomRightThumb.GradientStyle = Telerik.WinControls.GradientStyles.Solid
Me.radRangeSelector1.RangeSelectorElement.ScrollSelectorElement.Range.BackColor = Color.Green
Me.radRangeSelector1.RangeSelectorElement.ScrollSelectorElement.Range.GradientStyle = Telerik.WinControls.GradientStyles.Solid
Me.radRangeSelector1.RangeSelectorElement.ScrollSelectorElement.SellectionRange.BackColor = Color.Red

````

{{endregion}}

![WinForms RadRangeSelector Customize Scroll Event](images/rangeselector-customizing003.png)

## Customize Scales

The scales are created dynamically according to the associated element and its look and feel can be customized through the __ScaleInitializing__ event.

{{source=..\SamplesCS\RangeSelector\CustomizingRadRangeSelector.cs region=CustomizeScales}}
{{source=..\SamplesVB\RangeSelector\CustomizingRadRangeSelector.vb region=CustomizeScales}}
````C#
this.radRangeSelector1.ScaleInitializing += new ScaleInitializingEventHandler(radRangeSelector1_ScaleInitializing);

````
````VB.NET
AddHandler Me.radRangeSelector1.ScaleInitializing, AddressOf radRangeSelector1_ScaleInitializing

```` 



{{endregion}}



{{source=..\SamplesCS\RangeSelector\CustomizingRadRangeSelector.cs region=CustomizeScales1}}
{{source=..\SamplesVB\RangeSelector\CustomizingRadRangeSelector.vb region=CustomizeScales1}}
````C#
void radRangeSelector1_ScaleInitializing(object sender, ScaleInitializingEventArgs e)
{
    e.ScaleElement.BackColor = Color.Blue;
    e.ScaleElement.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
    e.ScaleElement.ForeColor = Color.White;
    e.ScaleElement.ScalePostion = ViewPosition.TopLeft;
}

````
````VB.NET
Private Sub radRangeSelector1_ScaleInitializing(sender As Object, e As ScaleInitializingEventArgs)
    e.ScaleElement.BackColor = Color.Blue
    e.ScaleElement.GradientStyle = Telerik.WinControls.GradientStyles.Solid
    e.ScaleElement.ForeColor = Color.White
    e.ScaleElement.ScalePostion = ViewPosition.TopLeft
End Sub

````  



{{endregion}}

![WinForms RadRangeSelector Customize Scales](images/rangeselector-customizing004.png)

## Customize ChartElement

In order to customize the chart that is drawn into __RadRangeSelector__ when it is associated with __RadChartView__, the associated element should be accessed. The following code snippet demonstrates how this can be achieved.

{{source=..\SamplesCS\RangeSelector\CustomizingRadRangeSelector.cs region=CustomizeChartElement}} 
{{source=..\SamplesVB\RangeSelector\CustomizingRadRangeSelector.vb region=CustomizeChartElement}}
````C#
RangeSelectorViewElement chartElement = this.radRangeSelector1.RangeSelectorElement.AssociatedElement as RangeSelectorViewElement;
chartElement.SeriesInitialized += new SeriesInitializedEventHandler(chartElement_SeriesInitialized);

````
````VB.NET
Dim chartElement As RangeSelectorViewElement = TryCast(Me.radRangeSelector1.RangeSelectorElement.AssociatedElement, RangeSelectorViewElement)
AddHandler chartElement.SeriesInitialized, AddressOf chartElement_SeriesInitialized

```` 



{{endregion}}



{{source=..\SamplesCS\RangeSelector\CustomizingRadRangeSelector.cs region=CustomizeChartElement1}} 
{{source=..\SamplesVB\RangeSelector\CustomizingRadRangeSelector.vb region=CustomizeChartElement1}}
````C#
void chartElement_SeriesInitialized(object sender, SeriesInitializedEventArgs e)
{
    e.Series.BackColor = Color.Lime;
    e.Series.BorderColor = Color.Red;
}

````
````VB.NET
Private Sub chartElement_SeriesInitialized(sender As Object, e As SeriesInitializedEventArgs)
    e.Series.BackColor = Color.Lime
    e.Series.BorderColor = Color.Red
End Sub

````



{{endregion}}

![WinForms RadRangeSelector Customize ChartElement](images/rangeselector-customizing005.png)

## See Also

* [Structure]({%slug winforms/rangeselector/structure%})
* [Integration with RadChartView]({%slug winforms/rangeselector/integration-with-radchartview%})
* [Properties and Events]({%slug winforms/rangeselector/properties-and-events%})

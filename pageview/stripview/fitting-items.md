---
title: Fitting Items
page_title: Fitting Items | UI for WinForms Documentation
description: Fitting Items
slug: winforms/pageview/stripview/fitting-items
tags: fitting,items
published: True
position: 3
---

# Fitting Items



RadPageView, when its ViewMode is set to Strip allows you to change the behavior of its tabs. Below you can see how.

## 

The main property that controls the behavior of the tabs is the __ItemMode__ property of the __RadPageViewStripElement__.

* *None* - Each item uses its desired size.

{{source=..\SamplesCS\PageView\StripViewFittingItems.cs region=ModeNone}} 
{{source=..\SamplesVB\PageView\StripViewFittingItems.vb region=ModeNone}} 

````C#
RadPageViewStripElement stripElement = this.pageView.ViewElement as RadPageViewStripElement;
stripElement.ItemFitMode = StripViewItemFitMode.None;

````
````VB.NET
Dim stripElement As RadPageViewStripElement = TryCast(Me.pageView.ViewElement, RadPageViewStripElement)
stripElement.ItemFitMode = StripViewItemFitMode.None

````

{{endregion}} 


![pageview-strip-view-fitting-items 001](images/pageview-strip-view-fitting-items001.png)

* *Shrink* - Items are shrinked if their size exceeds the available one.

{{source=..\SamplesCS\PageView\StripViewFittingItems.cs region=ModeShrink}} 
{{source=..\SamplesVB\PageView\StripViewFittingItems.vb region=ModeShrink}} 

````C#
RadPageViewStripElement stripElement1 = this.pageView.ViewElement as RadPageViewStripElement;
stripElement1.ItemFitMode = StripViewItemFitMode.Shrink;

````
````VB.NET
Dim stripElement1 As RadPageViewStripElement = TryCast(Me.pageView.ViewElement, RadPageViewStripElement)
stripElement1.ItemFitMode = StripViewItemFitMode.Shrink

````

{{endregion}} 


![pageview-strip-view-fitting-items 002](images/pageview-strip-view-fitting-items002.gif)

* *Fill* - Items are expanded if their size is less than the available one.

{{source=..\SamplesCS\PageView\StripViewFittingItems.cs region=ModeFill}} 
{{source=..\SamplesVB\PageView\StripViewFittingItems.vb region=ModeFill}} 

````C#
RadPageViewStripElement stripElement2 = this.pageView.ViewElement as RadPageViewStripElement;
stripElement2.ItemFitMode = StripViewItemFitMode.Fill;

````
````VB.NET
Dim stripElement2 As RadPageViewStripElement = TryCast(Me.pageView.ViewElement, RadPageViewStripElement)
stripElement2.ItemFitMode = StripViewItemFitMode.Fill

````

{{endregion}} 


![pageview-strip-view-fitting-items 003](images/pageview-strip-view-fitting-items003.gif)

* *ShrinkAndFill* - Items are either shrinked or expanded when needed.


{{source=..\SamplesCS\PageView\StripViewFittingItems.cs region=ModeShrinkAndFill}} 
{{source=..\SamplesVB\PageView\StripViewFittingItems.vb region=ModeShrinkAndFill}} 

````C#
RadPageViewStripElement stripElement3 = this.pageView.ViewElement as RadPageViewStripElement;
stripElement3.ItemFitMode = StripViewItemFitMode.ShrinkAndFill;

````
````VB.NET
Dim stripElement3 As RadPageViewStripElement = TryCast(Me.pageView.ViewElement, RadPageViewStripElement)
stripElement3.ItemFitMode = StripViewItemFitMode.ShrinkAndFill

````

{{endregion}} 


![pageview-strip-view-fitting-items 004](images/pageview-strip-view-fitting-items004.gif)

* *FillHeight* - Items are stretched in the available height of their parent container.

{{source=..\SamplesCS\PageView\StripViewFittingItems.cs region=ModeFillHeight}} 
{{source=..\SamplesVB\PageView\StripViewFittingItems.vb region=ModeFillHeight}} 

````C#
RadPageViewStripElement stripElement4 = this.pageView.ViewElement as RadPageViewStripElement;
stripElement4.ItemContainer.MinSize = new System.Drawing.Size(0, 50);
stripElement4.ItemFitMode = StripViewItemFitMode.FillHeight;

````
````VB.NET
Dim stripElement4 As RadPageViewStripElement = TryCast(Me.pageView.ViewElement, RadPageViewStripElement)
stripElement4.ItemContainer.MinSize = New System.Drawing.Size(0, 50)

````

{{endregion}} 


![pageview-strip-view-fitting-items 005](images/pageview-strip-view-fitting-items005.png)

* *MultiLine* - Items are arranged in multiLine layout. You can also set the *MultiLineItemFitMode* property to *None* or *Reflow*. If you set the __MultiLineItemFitMode__ to *None* you will manually need to set the Row of the items:

{{source=..\SamplesCS\PageView\PageViewMultiLine.cs region=PageViewMultiLineItemFitModeNone}} 
{{source=..\SamplesVB\PageView\PageViewMultiLine.vb region=PageViewMultiLineItemFitModeNone}} 

````C#
this.pageView.ViewMode = PageViewMode.Strip;
RadPageViewStripElement stripElement = this.pageView.ViewElement as RadPageViewStripElement;
stripElement.ItemFitMode = StripViewItemFitMode.MultiLine;
stripElement.MultiLineItemFitMode = MultiLineItemFitMode.None;
this.radPageViewPage4.Item.Row = 2;
this.radPageViewPage5.Item.Row = 3;

````
````VB.NET
Me.pageView.ViewMode = PageViewMode.Strip
Dim stripElement As RadPageViewStripElement = TryCast(Me.pageView.ViewElement, RadPageViewStripElement)
stripElement.ItemFitMode = StripViewItemFitMode.MultiLine
stripElement.MultiLineItemFitMode = MultiLineItemFitMode.None
Me.RadPageViewPage4.Item.Row = 2
Me.RadPageViewPage5.Item.Row = 3

````

{{endregion}} 


![pageview-strip-view-fitting-items 006](images/pageview-strip-view-fitting-items006.gif)

If the property is set to *Reflow*, the layout will automatically calculate these settings:

{{source=..\SamplesCS\PageView\PageViewMultiLine.cs region=PageViewMultiLineItemFitModeReflow}} 
{{source=..\SamplesVB\PageView\PageViewMultiLine.vb region=PageViewMultiLineItemFitModeReflow}} 

````C#
this.pageView.ViewMode = PageViewMode.Strip;
RadPageViewStripElement stripElement1 = this.pageView.ViewElement as RadPageViewStripElement;
stripElement1.ItemFitMode = StripViewItemFitMode.MultiLine;
stripElement1.MultiLineItemFitMode = MultiLineItemFitMode.Reflow;

````
````VB.NET
Me.pageView.ViewMode = PageViewMode.Strip
Dim stripElement1 As RadPageViewStripElement = TryCast(Me.pageView.ViewElement, RadPageViewStripElement)
stripElement1.ItemFitMode = StripViewItemFitMode.MultiLine
stripElement1.MultiLineItemFitMode = MultiLineItemFitMode.Reflow

````

{{endregion}} 


![pageview-strip-view-fitting-items 007](images/pageview-strip-view-fitting-items007.gif)

# See Also

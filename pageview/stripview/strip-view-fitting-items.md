---
title: Fitting Items
page_title: Fitting Items
description: Fitting Items
slug: pageview-strip-view-fitting-items
tags: fitting,items
published: True
position: 3
---

# Fitting Items



RadPageView, when its ViewMode is set to Strip allows you to change the behavior of its tabs. Below you can see how.

## 

The main property that controls the behavior of the tabs is the __ItemMode__ property of the __RadPageViewStripElement__.
        

* *None* - Each item uses its desired size.
            

#### __[C#]__

{{source=..\SamplesCS\PageView\StripViewFittingItems.cs region=ModeNone}}
	            RadPageViewStripElement stripElement = this.pageView.ViewElement as RadPageViewStripElement;
	            stripElement.ItemFitMode = StripViewItemFitMode.None;
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\PageView\StripViewFittingItems.vb region=ModeNone}}
	        Dim stripElement As RadPageViewStripElement = TryCast(Me.pageView.ViewElement, RadPageViewStripElement)
	        stripElement.ItemFitMode = StripViewItemFitMode.None
	{{endregion}}

![pageview-strip-view-fitting-items 001](images/pageview-strip-view-fitting-items001.png)

* *Shrink* - Items are shrinked if their size exceeds the available one.
            

#### __[C#]__

{{source=..\SamplesCS\PageView\StripViewFittingItems.cs region=ModeShrink}}
	            RadPageViewStripElement stripElement1 = this.pageView.ViewElement as RadPageViewStripElement;
	            stripElement1.ItemFitMode = StripViewItemFitMode.Shrink;
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\PageView\StripViewFittingItems.vb region=ModeShrink}}
	        Dim stripElement1 As RadPageViewStripElement = TryCast(Me.pageView.ViewElement, RadPageViewStripElement)
	        stripElement1.ItemFitMode = StripViewItemFitMode.Shrink
	{{endregion}}

![pageview-strip-view-fitting-items 002](images/pageview-strip-view-fitting-items002.gif)

* *Fill* - Items are expanded if their size is less than the available one.
            

#### __[C#]__

{{source=..\SamplesCS\PageView\StripViewFittingItems.cs region=ModeFill}}
	            RadPageViewStripElement stripElement2 = this.pageView.ViewElement as RadPageViewStripElement;
	            stripElement2.ItemFitMode = StripViewItemFitMode.Fill;
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\PageView\StripViewFittingItems.vb region=ModeFill}}
	        Dim stripElement2 As RadPageViewStripElement = TryCast(Me.pageView.ViewElement, RadPageViewStripElement)
	        stripElement2.ItemFitMode = StripViewItemFitMode.Fill
	{{endregion}}

![pageview-strip-view-fitting-items 003](images/pageview-strip-view-fitting-items003.gif)

* *ShrinkAndFill* - Items are either shrinked or expanded when needed.
            

#### __[C#]__

{{source=..\SamplesCS\PageView\StripViewFittingItems.cs region=ModeShrinkAndFill}}
	            RadPageViewStripElement stripElement3 = this.pageView.ViewElement as RadPageViewStripElement;
	            stripElement3.ItemFitMode = StripViewItemFitMode.ShrinkAndFill;
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\PageView\StripViewFittingItems.vb region=ModeShrinkAndFill}}
	        Dim stripElement3 As RadPageViewStripElement = TryCast(Me.pageView.ViewElement, RadPageViewStripElement)
	        stripElement3.ItemFitMode = StripViewItemFitMode.ShrinkAndFill
	{{endregion}}

![pageview-strip-view-fitting-items 004](images/pageview-strip-view-fitting-items004.gif)

* *FillHeight* - Items are stretched in the available height of their parent container.
            

#### __[C#]__

{{source=..\SamplesCS\PageView\StripViewFittingItems.cs region=ModeFillHeight}}
	            RadPageViewStripElement stripElement4 = this.pageView.ViewElement as RadPageViewStripElement;
	            stripElement4.ItemContainer.MinSize = new System.Drawing.Size(0, 50);
	            stripElement4.ItemFitMode = StripViewItemFitMode.FillHeight;
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\PageView\StripViewFittingItems.vb region=ModeFillHeight}}
	        Dim stripElement4 As RadPageViewStripElement = TryCast(Me.pageView.ViewElement, RadPageViewStripElement)
	        stripElement4.ItemContainer.MinSize = New System.Drawing.Size(0, 50)
	{{endregion}}

![pageview-strip-view-fitting-items 005](images/pageview-strip-view-fitting-items005.png)

* *MultiLine* - Items are arranged in multiLine layout. 
              You can also set the *MultiLineItemFitMode* property to *None* or *Reflow*.
            If you set the __MultiLineItemFitMode__ to *None* you will manually need to set the Row of the items:
            

#### __[C#]__

{{source=..\SamplesCS\PageView\PageViewMultiLine.cs region=PageViewMultiLineItemFitModeNone}}
	
	            this.pageView.ViewMode = PageViewMode.Strip;
	
	            RadPageViewStripElement stripElement = this.pageView.ViewElement as RadPageViewStripElement;
	
	            stripElement.ItemFitMode = StripViewItemFitMode.MultiLine;
	            stripElement.MultiLineItemFitMode = MultiLineItemFitMode.None;
	
	            this.radPageViewPage4.Item.Row = 2;
	            this.radPageViewPage5.Item.Row = 3;
	
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\PageView\PageViewMultiLine.vb region=PageViewMultiLineItemFitModeNone}}
	
	        Me.pageView.ViewMode = PageViewMode.Strip
	
	        Dim stripElement As RadPageViewStripElement = TryCast(Me.pageView.ViewElement, RadPageViewStripElement)
	
	        stripElement.ItemFitMode = StripViewItemFitMode.MultiLine
	        stripElement.MultiLineItemFitMode = MultiLineItemFitMode.None
	
	        Me.RadPageViewPage4.Item.Row = 2
	        Me.RadPageViewPage5.Item.Row = 3
	
	{{endregion}}

![pageview-strip-view-fitting-items 006](images/pageview-strip-view-fitting-items006.gif)If the property is set to *Reflow*, the layout will automatically calculate these settings:
            

#### __[C#]__

{{source=..\SamplesCS\PageView\PageViewMultiLine.cs region=PageViewMultiLineItemFitModeReflow}}
	
	            this.pageView.ViewMode = PageViewMode.Strip;
	
	            RadPageViewStripElement stripElement1 = this.pageView.ViewElement as RadPageViewStripElement;
	
	            stripElement1.ItemFitMode = StripViewItemFitMode.MultiLine;
	            stripElement1.MultiLineItemFitMode = MultiLineItemFitMode.Reflow;
	
	{{endregion}}



#### __[VB]__

{{source=..\SamplesVB\PageView\PageViewMultiLine.vb region=PageViewMultiLineItemFitModeReflow}}
	
	        Me.pageView.ViewMode = PageViewMode.Strip
	
	        Dim stripElement1 As RadPageViewStripElement = TryCast(Me.pageView.ViewElement, RadPageViewStripElement)
	
	        stripElement1.ItemFitMode = StripViewItemFitMode.MultiLine
	        stripElement1.MultiLineItemFitMode = MultiLineItemFitMode.Reflow
	
	{{endregion}}

![pageview-strip-view-fitting-items 007](images/pageview-strip-view-fitting-items007.gif)

# See Also

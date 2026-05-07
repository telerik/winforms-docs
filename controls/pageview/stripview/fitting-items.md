---
title: Fitting Items
page_title: Fitting Items - RadPageView
description: RadPageView is yet another great addition to the Telerik UI for WinForms suite. As the name implies, this control layouts pages of subcontrols in different views.
slug: winforms/pageview/stripview/fitting-items
tags: fitting,items
published: True
position: 4
previous_url: pageview-strip-view-fitting-items
---

# Fitting Items
 
**RadPageView**, when its **ViewMode** property is set to *Strip*, it allows you to change the behavior of its tabs. Below you can see how.
  
The main property that controls the behavior of the tabs is the __ItemMode__ property of the __RadPageViewStripElement__.

* *None* - Each item uses its desired size.

<snippet id='pageview-stripviewfittingitems-modenone-cs' />
<snippet id='pageview-stripviewfittingitems-modenone-vb' />



![WinForms RadPageView Fitting Items None](images/pageview-strip-view-fitting-items001.png)

* *Shrink* - Items are shrunk if their size exceeds the available one.

<snippet id='pageview-stripviewfittingitems-modeshrink-cs' />
<snippet id='pageview-stripviewfittingitems-modeshrink-vb' />



![WinForms RadPageView Fitting Items Shrink](images/pageview-strip-view-fitting-items002.gif)

* *Fill* - Items are expanded if their size is less than the available one.

<snippet id='pageview-stripviewfittingitems-modefill-cs' />
<snippet id='pageview-stripviewfittingitems-modefill-vb' />



![WinForms RadPageView Fitting Items Fill](images/pageview-strip-view-fitting-items003.gif)

* *ShrinkAndFill* - Items are either shrinked or expanded when needed.


<snippet id='pageview-stripviewfittingitems-modeshrinkandfill-cs' />
<snippet id='pageview-stripviewfittingitems-modeshrinkandfill-vb' />



![WinForms RadPageView Fitting Items ShrinkAndFill](images/pageview-strip-view-fitting-items004.gif)

* *FillHeight* - Items are stretched in the available height of their parent container.

<snippet id='pageview-stripviewfittingitems-modefillheight-cs' />
<snippet id='pageview-stripviewfittingitems-modefillheight-vb' />



![WinForms RadPageView Fitting Items FillHeight](images/pageview-strip-view-fitting-items005.png)

* *MultiLine* - Items are arranged in multiLine layout. You can also set the __MultiLineItemFitMode__ property to *None* or *Reflow*. If you set the __MultiLineItemFitMode__ property to *None* you will manually need to set the **Row** property of the items:

<snippet id='pageview-pageviewmultiline-pageviewmultilineitemfitmodenone-cs' />
<snippet id='pageview-pageviewmultiline-pageviewmultilineitemfitmodenone-vb' />



![WinForms RadPageView Fitting Items MultiLine](images/pageview-strip-view-fitting-items006.gif)

If the **MultiLineItemFitMode** property is set to *Reflow*, the layout will automatically calculate these settings:

<snippet id='pageview-pageviewmultiline-pageviewmultilineitemfitmodereflow-cs' />
<snippet id='pageview-pageviewmultiline-pageviewmultilineitemfitmodereflow-vb' />



![WinForms RadPageView MultiLineItemFitMode Reflow](images/pageview-strip-view-fitting-items007.gif)

# See Also

* [New Item]({%slug winforms/pageview/stripview/new-item%})	
* [Scrolling and Overflow (strip buttons)]({%slug winforms/pageview/stripview/scrolling-and-overflow-(strip-buttons)%})	
* [Strip Element Properties]({%slug winforms/pageview/stripview/strip-element-properties%})	

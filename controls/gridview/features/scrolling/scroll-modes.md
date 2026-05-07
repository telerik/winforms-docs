---
title: Scroll Modes
page_title: Scroll Modes - WinForms RadGridView Control
description: Learn about the different scroll modes in WinForms RadGridView.
slug: winforms-gridview-scrolling-scroll-modes
tags: scrolling
published: True
position: 1
---

# Scroll Modes

RadGridView provides three built-in scrolling modes, which allow you to manipulate the type of scrolling. This is controlled by the ScrollMode enumeration property which has the following entries:

## Smooth

This is the default value of the __ScrollMode__ property. Items in this mode are scrolled smoothly. 

![WinForms RadGridView ScrollMode](images/gridview-scrolling-scroll-modes001.GIF)

<snippet id='gridview-scrolling-scrollmode_smooth-cs' />
<snippet id='gridview-scrolling-scrollmode_smooth-vb' />

## Discrete 

When the __Discrete__ mode is set, the items are scrolled one at a time. The scrollbar maximum is equal to the number of the items in the view. The scrollbar SmallChange is equal to 1 and each small increment or decrement will move the items in the view with one whole item.

![WinForms RadGridView ScrollMode](images/gridview-scrolling-scroll-modes002.GIF)

<snippet id='gridview-scrolling-scrollmode_discrete-cs' />
<snippet id='gridview-scrolling-scrollmode_discrete-vb' />

## Deferred

In this mode, the content in the view is static until scrolling is completed.

![WinForms RadGridView ScrollMode](images/gridview-scrolling-scroll-modes003.GIF)

<snippet id='gridview-scrolling-scrollmode_deferred-cs' />
<snippet id='gridview-scrolling-scrollmode_deferred-vb' />

When RadGridView's ScrollMode is set to Deferred, a small ToolTip appears when scrolling which previews the current scroll position. You could modify the text inside the ToolTip by subscribing to the __ToolTipTextNeeded__ event of the RowScroller. 
            
<snippet id='gridview-scrolling-scroll_tooltip-cs' />
<snippet id='gridview-scrolling-scroll_tooltip-vb' />

In the event handler, you can get the text from the event arguments ToolTipText property and modify it per your needs.

<snippet id='gridview-scrolling-scroll_tooltip_customtext-cs' />
<snippet id='gridview-scrolling-scroll_tooltip_customtext-vb' />

![WinForms RadGridView ScrollMode](images/gridview-scrolling-scroll-modes004.GIF)			
			
	

## See Also

 * [Scrolling Support]({%slug winforms/gridview/end-user-capabilities/scrolling-support%})

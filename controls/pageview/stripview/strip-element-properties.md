---
title: Strip Element Properties
page_title: Strip Element Properties | RadPageView
description: RadPageView is yet another great addition to the Telerik UI for for WinForms suite. As the name implies, this control layouts pages of subcontrols in different views.
slug: winforms/pageview/stripview/strip-element-properties
tags: strip,element,properties
published: True
position: 2
previous_url: pageview-stripview-properties
---

# Strip Element Properties
 
You can use the following properties to change the behavior of the Strip View:

|Property|Description|
|----|----|
|__ShowItemCloseButton__|Shows/hides the tabs close button.|
|__ShowItemPinButton__|Shows/hides the pin button. This button allows you to pin some of the tabs.|
|__StripButtons__|Controls which strip button are currently visible. Detailed information is available here: [Scrolling and Overflow (strip buttons)]({%slug winforms/pageview/stripview/scrolling-and-overflow-(strip-buttons)%})|
|__ItemAlignment__|Allows you to align the items.The possible values are: *Near, Center, Far*.|
|__PreviewItem__|You can use this property to set the preview item. This item is opened for preview on the far side of the regular items. <br>![pageview-strip-view-properties 001](images/pageview-strip-view-properties001.png)|
|__StripAlignment__|Allows you to align the entire strip. The possible values are: *Bottom, Left, Top, Right*.|
|**NewItemVisibility**|Gets or sets the visibility of the internal NewItem.|
|**AnimatedStripScrolling**|Determines whether strip scrolling will be animated.|
|**StripScrollingAnimation**|Gets or sets the easing type of the strip scroll animation.|
|**ItemContainer**|Gets the container that holds item layout and strip buttons panel.|
|**ItemFitMode**|Determines the fit mode to be applied when measuring child items.|
|**MultiLineItemFitMode**|Gets or sets the MultiLineItemFitMode. This mode determines how the multiline layout will behave when control is resizing. |

>important In order to be able to set the above properties you should cast the view element first:
>

#### Accessing the RadPageViewStripElement properties

{{source=..\SamplesCS\PageView\StripView.cs region=scrollingAndOverflow}} 
{{source=..\SamplesVB\PageView\StripView.vb region=scrollingAndOverflow}} 

````C#
RadPageViewStripElement stripElement = (RadPageViewStripElement)this.radPageView1.ViewElement;
stripElement.StripButtons = StripViewButtons.All;

````
````VB.NET
Dim stripElement As RadPageViewStripElement = DirectCast(Me.radPageView1.ViewElement, RadPageViewStripElement)
stripElement.StripButtons = StripViewButtons.All

````

{{endregion}}

# See Also

* [Fitting Items]({%slug winforms/pageview/stripview/fitting-items%})	
* [Scrolling and Overflow (strip buttons)]({%slug winforms/pageview/stripview/scrolling-and-overflow-(strip-buttons)%})	
* [New Item]({%slug winforms/pageview/stripview/new-item%})	
* [Properties](http://docs.telerik.com/devtools/winforms/api/html/properties_t_telerik_wincontrols_ui_radpageviewstripelement.htm)	
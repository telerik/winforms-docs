---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | RadNavigationView
description: Get familiar with the public API that the WinForms NavigationView offers.   
slug: navigationview-properties-methods-events
tags: navigationview, properties, methods, events, api
published: True
position: 3 
---

# Properties, Methods and Events

## Properties

|Property|Description|
|----|----|
|**NavigationViewElement**|Gets the RadPageViewNavigationViewElement, which is the main element for RadNavigationView.|
|**DisplayMode**|Gets or sets the display mode of the view element. The Default value Expanded.|
|**HeaderHeight**|Gets or sets the height of the header element. The default value is 40.|
|**ExpandedPaneWidth**|Gets or sets the width of the pane with the items when the view element is expanded. The default value is 280.|
|**CollapsedPaneWidth**|Gets or sets the width of the pane with the items when the view element is collapsed. The default value is 40.|
|**CompactModeThresholdWidth**|Gets or sets a threshold determining at what width the view element will change from Collapsed to Compact display mode and vice versa. The default value is 641.|
|**ExpandedModeThresholdWidth**|Gets or sets a threshold determining at what width the view element will change from Expanded to Collapsed display mode and vice versa. The default value is 1008.|
|**HierarchyIndent**|Gets or sets the hierarchical indentation of the child items. The default value is 20.|
|**ExpandedGlyph**|Gets or sets the glyph used for the items's expander element, when the item IsExpanded property is true.|
|**CollapsedGlyph**|Gets or sets the glyph used for the items's expander element, when the item IsExpanded property is false.|
|**ItemExpandCollapseMode**|Gets or sets the expand/collapse mode of navigation items when they have hierarchical children.|
|**HierarchyPopupExpandMode**|Gets or sets the expand/collapse mode of navigation items when they have hierarchical children.|

## RadPageViewNavigationViewElement's Properties

|Property|Description|
|----|----|
|**HamburgerButton**|Gets the hamburger button.|
|**HeaderElement**|Gets the header element.|
|**Popup**|Gets the popup used in the Minimal and Compact modes.|
|**PopupStack**|Gets the popup stack element.|
|**IsCollapsed**|Determines whether the view element is collapsed.|
|**NewItemVisibility**|Gets or sets the visibility of the internal NewItem.|
|**AllowAnimation**|Gets or sets a value indicating whether to use animation when collapsing and expanding the menu.|
|**AnimationInterval**|Gets or sets the animation interval.|
|**AnimationFrames**|Gets or sets the animation frames.|
|**MinumumHierarchicalPopupSize**|Gets or sets the mimimum size of the hierarchical popup. The desired size is calculated automatically according to the desired sizes of the items.|

## RadPageViewNavigationViewElement's Methods

|Method|Description|
|----|----|
|**Expand**|Expands the NavigationView.|
|**Collapse**|Collapses the NavigationView.|


## Events

|Event|Description|
|----|----|
|**Collapsing**|Occurs before the hamburger menu is collapsed.|
|**Expanding**|Occurs before the hamburger menu is expanded.|
|**Collapsed**|Occurs before the hamburger menu is collapsed.|
|**Expanded**|Occurs after the hamburger menu is expanded.|
|**ItemCollapsing**|Occurs before a hierarchical navigation item is collapsed.|
|**ItemExpanding**|Occurs before a hierarchical navigation item is expanded.|
|**ItemCollapsed**|Occurs after a hierarchical navigation item is collapsed.|
|**ItemExpanded**|Occurs after a hierarchical navigation item is expanded.|
|**ItemPopupOpening**|Occurs before a hierarchical popup associated with a RadPageViewNavigationViewItem|
|**ItemPopupOpened**|Occurs after a hierarchical popup associated with a  RadPageViewNavigationViewItem has opened.|
|**ItemPopupClosing**|Occurs before a hierarchy popup associated with a RadPageViewNavigationViewItem closes. The actual item is passed as the sender in the event handler.|
|**ItemPopupClosed**|Occurs after a hierarchy popup associated with a RadPageViewNavigationViewItem has closed. The actual item is passed as the sender in the event handler.|
 

# See Also

* [Navigation View]({%slug winforms/pageview/navigationview%})	
* [Getting Started]({%slug navigationview-getting-started%}) 
* [Structure]({%slug navigationview-structure%})




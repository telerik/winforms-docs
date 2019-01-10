---
title: Properties of the NavigationView
page_title: Properties of the NavigationView | Navigation View
description: The navigation view control provides a collapsible navigation pane that helps implement the hamburger menu pattern and automatically adapts the pane's display mode to different control sizes.
slug: winforms/pageview/navigationview-properties
tags: navigation, view, hamburger
published: True
position: 5
---

# Properties of the NavigationView

You can use the following properties to change the behavior of the Navigation View:

|Property|Description|
|---|---|
|__HamburgerButton__|Gives access to the menu button at the top|
|__HeaderElement__|Gives access to the header element and the page title|
|__Popup__|Gives access to the popup that contains all pages (shown in Minimal mode)|
|__IsCollapsed__|Gets/sets the current state of the pages popup|
|__DisplayMode__|Gets/Sets the display mode. The possible values are - *Auto*, *Compact*, *Expanded*and *Minimal*|
|__HeaderHeight__|Gets/Sets the header height|
|__ExpandedPaneWidth__|Gets/Sets the pages panel width when the mode is set to Expanded|
|__CollapsedPaneWidth__|Gets/Sets the pages panel width when the mode is set to Compact|
|__CompactModeThresholdWidth__|This property determines when the DisplayMode will be switched from Compact to Minimal. The DisplayMode should be set to Auto in order this to work. The default value is 641. |
|__ExpandedModeThresholdWidth__|This property determines when the DisplayMode will be switched from Expanded to Compact. The DisplayMode should be set to Auto in order this to work. THe default value is 1008.|
|**AllowAnimation**|Gets or sets a value indicating whether to use animation when collapsing and expanding the menu.|
|**AnimationInterval**|Gets or sets the animation interval.|
|**AnimationFrames**|Gets or sets the animation frames.|
 
#### Accessing the RadPageViewNavigationViewElement Properties


{{source=..\SamplesCS\PageView\NavigationView.cs region=GetView}}
{{source=..\SamplesVB\PageView\NavigationView.vb region=GetView}}
````C#
var navigationElement = this.radPageView1.ViewElement as RadPageViewNavigationViewElement;
navigationElement.DisplayMode = NavigationViewDisplayModes.Auto;

````
````VB.NET
Dim navigationElement = TryCast(Me.radPageView1.ViewElement, RadPageViewNavigationViewElement)
navigationElement.DisplayMode = NavigationViewDisplayModes.Auto

````
 
{{endregion}}

# See Also
* [Getting Started]({%slug winforms/pageview/navigationview-getting-started%})
* [Display Modes]({%slug winforms/pageview/navigationview/displaymode%})
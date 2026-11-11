---
title: Properties, Methods and Events
page_title: Properties, Methods, Events - RadMap
description: RadMap can visualize tile data from the Bing Maps and the OpenStreetMaps REST services as well as from the local file system.
components: ["map"]
slug: winforms/map/properties-methods-and-events
tags: radmap, properties, methods, events
published: True
position: 6
---

# Properties

|Property|Description|
|------|------|
|__Providers__|Gets the providers collection of the map element.|
|__Layers__|Gets the layers collection of the map element.|
|__InputBehavior__|Gets or sets the input behavior that will handle the user input.|
|__SelectedElements__|Gets a collection of the selected elements.|
|__ShowMiniMap__|Gets or sets a value indicating whether the mini map is visible.|
|__ShowLegend__|Gets or sets a value indicating whether the legend is visible.|
|__ShowSearchBar__|Gets or sets a value indicating whether the search bar is visible.|
|__ShowNavigationBar__|Gets or sets a value indicating whether the navigation bar is visible.|
|__ShowScaleIndicator__|Gets or sets a value indicating whether the scale indicator is visible.|
|__IsUpdateSuspended__|Gets a value indicating whether updates are suspended.|

## Methods

|Method|Description|
|------|------|
|__Pan(SizeL delta)__|Pans the viewport with the specified delta.|
|__Pan(long x, long y)__|Pans the viewport to the specified x and y coordinates.|
|__Zoom(int zoomLevel)__|Zooms the viewport to the specified zoom level.|
|__Zoom(int zoomLevel, bool animate)__|Zooms the viewport to the specified zoom level. If __animate__ is set to *true* the zoom will be animated.|
|__Zoom(int zoomLevel, bool animate, Point center)__|Zooms the viewport to the specified zoom level. If __animate__ is set to *true* the zoom will be animated.The point in the viewport around where the zoom should be performed.|
|__BeginUpdate__|Suspends updates.|
|__EndUpdate__|Resumes updates and performs an update.|
|__EndUpdate__|Resumes updates and performs an update if specified by the update parameter.|
|__BringIntoView__|Brings the specified geo point into the center of the viewport.|
|__BringIntoView__|Brings the specified geo point into the center of the viewport and zooms the viewport to the specified zoom level.|
|__BringIntoView__|Calculates the best zoom level that will fit the specified rectangle and centers it in the viewport.|

## Events

|Event|Description|
|------|------|
|__SelectionChanged__|Occurs when a user clicks on a visual element in the layers.|

## Handling HTML Hyperlinks

External links rendered by RadMap's HTML renderer must pass both `HyperlinkHelper.ValidateLinkPattern` and `HyperlinkHelper.ValidateLinkScheme`. Default automatic navigation accepts absolute `http`, `https`, and `mailto` URIs. FTP, file/UNC, OneNote, and custom-protocol targets are blocked unless application code explicitly approves them.

The HTML renderer's `LinkClicked` event uses `TheArtOfDev.HtmlRenderer.Core.Entities.HtmlLinkClickedEventArgs`. Read `Link` to inspect the destination, set `IsTrustedUrl` to `true` only after application-specific validation, or set `Handled` to `true` to suppress or replace navigation. This is a renderer event, not an event on `RadMap` itself.

Unhandled external-link requests then reach `HyperlinkHelper.HyperlinkClicked`. The shared event provides a cross-control approval hook without requiring access to the HTML container. HTML links to `#anchor` destinations scroll within the rendered content instead of launching an external URI. See [shared hyperlink validation]({%slug winforms/telerik-presentation-framework/html-like-text-formatting%}#shared-hyperlink-validation) for both checks and the default allowlist, and [handling links across controls]({%slug winforms/telerik-presentation-framework/html-like-text-formatting%}#handling-links-across-controls) for a global approval example.

>important HTML-rendered external links that previously launched FTP URLs, UNC/file paths, OneNote links, or custom protocols are now blocked by default. Validate and explicitly approve an application destination with `IsTrustedUrl`, or handle the request and set `Handled` to `true`. Internal `#anchor` navigation is unchanged.

## See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radmap.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radmap.html#methods)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radmap.html#events)


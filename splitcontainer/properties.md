---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | RadSplitContainer
description: RadSplitContainer is a layout control which allows you to add many container panels to a form, separated by splitter(s).
slug: winforms/splitcontainer/properties
tags: properties
published: True
position: 7
previous_url: splitcontainer-properties
---

# Properties

|Property|Description|
|----|----|
|**SplitterDistance**|Gets a value indicating the splitter distance. Never set the value of this property directly. |
|**EnableImmediateResize**|Gets a value indicating whether the bounds of the split panels should be updated immediately on drag. |
|**SplitContainerElement**|Gets the split container element.|
|**SplitPanels**|Gets the collection that contains the split panels.|
|**HasNonCollapsedChild**|Gets whether the container has a non collapsed child.|
|**HasVisibleSplitPanels**|Gets whether the container has at least one visible panel.|
|**Orientation**|Gets or sets a value indicating the horizontal or vertical orientation of the Telerik.WinControls.UI.RadSplitContainer panels.|
|**SplitterWidth**|Gets or sets the width of a single splitter on the container. Specify zero to prevent displaying any splitters at all.|
|**LayoutStrategy**|Gets or sets the layout strategy that arranges all the visible SplitPanel children.|
|**Splitters**|Gets the SplitterCollection.|
|**UseSplitterButtons**|Enable and Disable navigation buttons.|
|**EnableCollapsing**|Determines whether the panels can be collapsed when clicking twice on splitter or click once on navigation button.|


# Methods

|Method|Description|
|----|----|
|**ApplySplitterWidth**|Applies the desired splitter width across all splitters and delegates the event to all descendant RadSplitContainer instances. This method is used internally.|
|**GetSplitterElementAtPoint**|Gets SplitterElement which rectangle contains the specified Point.|


# Events

|Event|Description|
|----|----|
|**SplitterMoving**|Occurs when any of the splitters is moving.|
|**SplitterMoved**|Occurs when any of the splitters is moved.|
|**PanelCollapsing**|Occurs when some panel is collapsing.|
|**PanelCollapsed**|Occurs when some panel collapsed.|


# See Also

* [Properties](http://docs.telerik.com/devtools/winforms/api/html/properties_t_telerik_wincontrols_ui_radsplitcontainer.htm)
* [Methods](http://docs.telerik.com/devtools/winforms/api/html/methods_t_telerik_wincontrols_ui_radsplitcontainer.htm)
* [Events](http://docs.telerik.com/devtools/winforms/api/html/events_t_telerik_wincontrols_ui_radsplitcontainer.htm)

            
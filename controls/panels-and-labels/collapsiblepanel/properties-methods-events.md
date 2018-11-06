---
title: Properties, Methods and Events
page_title: Properties Methods and Events | RadCollapsiblePanel
description: This article describes the more important properties methods and events of RadCollapsiblePanel.
slug: winforms/panels-and-labels/collapsiblepanel/properties-methods-events
tags: radcollapsiblepanel, properties, events
published: True
position: 4
---

# Properties

|Property|Description|
|------|------|
|**ExpandDirection**|Gets or sets the expand direction.|
|**EnableAnimation**|Gets or sets a value indicating whether to use animation to expand or collapse the control.|
|**ContentSizingMode**|Gets or sets the content sizing mode.|
|**IsExpanded**|Gets a or Sets value indicating whether the control is expanded.|
|**IsAnimating**|Gets a value indicating whether the control is currently animating.|
|**ShowHeaderLine**|Gets or sets a value indicating whether to show a line primitive in the header.|
|**HorizontalHeaderAlignment**|Gets or sets the horizontal header alignment.|
|**VerticalHeaderAlignment**|Gets or sets the vertical header alignment.|
|**HeaderText**|Gets or sets the header text.|
|**AnimationInterval**|Gets or sets the animation interval.|
|**AnimationFrames**|Gets or sets the animation frames.|
|**AnimationEasingType**|Gets or sets the easing type to be applied to the animation when expanding or collapsing|
|**AnimationType**|Gets or sets the type of the expand or collapse animation.|
|**BackColor**|Gets or sets the BackColor of the control. This is actually the BackColor property of the root element.|

# Methods

|Method|Description|
|------|------|
|**Expand**|Expands the control. Will not have effect if the control is already expanded or is animating. Can be canceled from the Expanding event.|
|**Collapse**|Collapses the control. Will not have effect if the control is already collapsed or is animating. Can be canceled from the Collapsing event.|
|**ToggleExpandCollapse**|If the Control is expanded it will be collapsed and vice-versa.|

# Events

|Event|Description|
|------|------|
|**Expanded**|Occurs after the control is expanded.|
|**Collapsed**|Occurs after the control is collapsed.|
|**Expanding**|Occurs before the control is expanded.|
|**Collapsing**|Occurs before the control is collapsed.|

# See Also

* [Properties](http://docs.telerik.com/devtools/winforms/api/html/properties_t_telerik_wincontrols_ui_radcollapsiblepanel.htm)
* [Methods](http://docs.telerik.com/devtools/winforms/api/html/methods_t_telerik_wincontrols_ui_radcollapsiblepanel.htm)
* [Events](http://docs.telerik.com/devtools/winforms/api/html/events_t_telerik_wincontrols_ui_radcollapsiblepanel.htm)
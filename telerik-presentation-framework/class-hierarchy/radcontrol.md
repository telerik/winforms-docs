---
title: RadControl
page_title: RadControl | UI for WinForms Documentation
description: RadControl
slug: winforms/telerik-presentation-framework/class-hierarchy/radcontrol
tags: radcontrol
published: True
position: 11
---

# RadControl



## 

RadControl is the abstract base class for all RadControls. Each RadControl contains a tree of RadElements. The tree has a root, __RadControl.RootElement__and children of the root element. The nesting of the elements in this tree represents the visual nesting that is displayed in the control. Elements are painted starting from the root to the leaves of the tree. The leaves are most often primitive elements, e.g. text, fills and borders. 

RadControl acts as a bridge between the traditional Windows forms controls and the RadElement tree. [Events]({%slug winforms/telerik-presentation-framework/events/clr-events%}), for example are captured in the traditional way, then [routed to the RootRadElement where they continue to tunnel]({%slug winforms/telerik-presentation-framework/events/routed-events%}) down to the other elements in the tree. Likewise, RadControl also recognizes when the mouse is over a given element. 

RadControl defines properties common across all controls e.g. ThemeName, Style, ImageList, image scaling properties, minimum and maximum sizes.

---
title: Choosing an Ancestor Class
page_title: Choosing an Ancestor Class - Telerik Presentation Framework
description: When creating a new TPF based control you should select an ancestor class that already has as much of the functionality built-in as possible.
slug: winforms/telerik-presentation-framework/class-hierarchy/choosing-an-ancestor-class
tags: choosing,an,ancestor,class
published: True
position: 1
previous_url: tpf-class-hierarchy-hierarchy-ancestor
---

# Choosing an Ancestor Class


When creating a new TPF based control you should select an ancestor class that already has as much of the functionality built-in as possible, but that doesn't introduce visual user interface details or behavior that you don't want in the final product. For example, if you need a button complete with the ability to contain images and handle mouse input, you could use __RadButtonElement__. See the __CalendarNavigationElement__ class for an example that uses higher level element level classes to build an element. If you need lower level control over the behavior and look of your element you can use one of the predefined [primitives]({%slug winforms/telerik-presentation-framework/primitives/overview%}). See the __RadButtonElement__ class for an example of assembling several primitives. To control the look of your element at the most granular level, create your own primitives by descending from the [BasePrimitive]({%slug winforms/telerik-presentation-framework/class-hierarchy/baseprimitive%}) class and overriding the __PaintPrimitive__ method.

See the [Class Hierarchy Overview]({%slug winforms/telerik-presentation-framework/class-hierarchy/class-hierarchy-overview%}) topic for a list of classes that can be used as starting points. 

# See Also
* [BasePrimitive]({%slug winforms/telerik-presentation-framework/class-hierarchy/baseprimitive%})

* [Class Hierarchy Overview]({%slug winforms/telerik-presentation-framework/class-hierarchy/class-hierarchy-overview%})

* [LayoutPanel]({%slug winforms/telerik-presentation-framework/class-hierarchy/layoutpanel%})

* [RadComponent, RadComponentElement]({%slug winforms/telerik-presentation-framework/class-hierarchy/radcomponent,-radcomponentelement%})

* [RadControl]({%slug winforms/telerik-presentation-framework/class-hierarchy/radcontrol%})

* [RadElement]({%slug winforms/telerik-presentation-framework/class-hierarchy/radelement%})

* [RadItem]({%slug winforms/telerik-presentation-framework/class-hierarchy/raditem%})

* [RadObject]({%slug winforms/telerik-presentation-framework/class-hierarchy/radobject%})


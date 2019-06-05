---
title: Building TPF Based Controls
page_title: Building TPF Based Controls | Telerik Presentation Framework
description: RadControls are built by composing RadElement trees instead of overriding the OnPaint method.
slug: winforms/telerik-presentation-framework/overview/building-tpf-based-controls
tags: building,tpf,based,controls
published: True
position: 2
previous_url: tpf-overview-building-tpf-controls
---

# Building TPF Based Controls

RadControls are built by composing RadElement trees instead of overriding the OnPaint method. [Elements]({%slug winforms/telerik-presentation-framework/elements/overview%}) can take the form of lightweight [primitive elements]({%slug winforms/telerik-presentation-framework/elements/overview%}) that draw the individual parts of a control to the form, [layout elements]({%slug winforms/telerik-presentation-framework/elements/overview%}) that are responsible for arranging primitives on the form, and [component elements]({%slug winforms/telerik-presentation-framework/elements/overview%}) that handle user input and are responsible for creating layout and primitive elements. Elements can be nested to any arbitrary level of complexity.

* A number of pre-built [primitives]({%slug winforms/telerik-presentation-framework/primitives/overview%}) are available for building themable user interfaces quickly including [text]({%slug winforms/telerik-presentation-framework/primitives/textprimitive%}), [gradient fills]({%slug winforms/telerik-presentation-framework/primitives/fillprimitive%}), [borders]({%slug winforms/telerik-presentation-framework/primitives/borderprimitive%}), [checks]({%slug winforms/telerik-presentation-framework/primitives/checkprimitive%}), [arrows]({%slug winforms/telerik-presentation-framework/primitives/arrowprimitive%}), [lines]({%slug winforms/telerik-presentation-framework/primitives/lineprimitive%}), [radio buttons]({%slug winforms/telerik-presentation-framework/primitives/radioprimitive%}), [images]({%slug winforms/telerik-presentation-framework/primitives/imageprimitive%}) and [trackbars]({%slug winforms/telerik-presentation-framework/primitives/trackbarprimitive%}).  

* [Elements]({%slug winforms/telerik-presentation-framework/elements/overview%}) combine primitives to form the basis of a functioning control. For example, RadLabelElement combines a [BorderPrimitive]({%slug winforms/telerik-presentation-framework/primitives/borderprimitive%}), [FillPrimitive]({%slug winforms/telerik-presentation-framework/primitives/fillprimitive%}) and [TextPrimitive]({%slug winforms/telerik-presentation-framework/primitives/textprimitive%}), then adds specific label properties __TextAlignment__ and __BorderVisible__.

* Layout elements descending from [LayoutPanel]({%slug winforms/telerik-presentation-framework/class-hierarchy/layoutpanel%}) manage the arrangement of child elements. For example, StackLayoutPanel arranges elements in a horizontal or vertical stack that may wrap to new lines. StripLayoutPanel orders elements in a single vertical or horizontal line. 

* [RadControls]({%slug winforms/telerik-presentation-framework/class-hierarchy/radcontrol%}) are typically thin wrappers around a component element, handle any direct communication with Windows and establish communication to the RadElement tree by creating a root element and adding elements to the root element. RadLabel for example simply creates a root element and then creates and adds a RadLabelElement to the root element.


# See Also

* [Telerik Presentation Framework Overview]({%slug winforms/telerik-presentation-framework/overview%})
* [Getting Started]({%slug winforms/telerik-presentation-framework/getting-started/getting-started%})
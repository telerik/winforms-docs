---
title: Building TPF Based Controls
page_title: Building TPF Based Controls
description: Building TPF Based Controls
slug: tpf-overview-building-tpf-controls
tags: building,tpf,based,controls
published: True
position: 1
---

# Building TPF Based Controls



## 

RadControls are built by composing RadElement trees instead of overriding the OnPaint method. [Elements]({%slug tpf-elements-overview%}) can take the form of lightweight [primitive elements]({%slug tpf-elements-overview%}) that draw the individual parts of a control to the form, [layout elements]({%slug tpf-elements-overview%}) that are responsible for arrange primitives on the form, and [component elements]({%slug tpf-elements-overview%}) that handle user input and are responsible for creating layout and primitive elements. Elements can be nested to any arbitrary level of complexity.
				

* 
						A number of pre-built [primitives]({%slug tpf-primitives-overview%}) are available for building themable user interfaces quickly including [text]({%slug tpf-primitives-textprimitive%}), [gradient fills]({%slug tpf-primitives-fillprimitive%}), [borders]({%slug tpf-primitives-borderprimitive%}), [checks]({%slug tpf-primitives-checkprimitive%}), [arrows]({%slug tpf-primitives-arrowprimitive%}), [lines]({%slug tpf-primitives-lineprimitive%}), [radio buttons]({%slug tpf-primitives-radioprimitive%}), [images]({%slug tpf-primitives-imageprimitive%}) and [trackbars]({%slug tpf-primitives-trackbarprimitive%}).  
					

* [Elements]({%slug tpf-elements-overview%}) combine primitives to form the basis of a functioning control. For example, RadLabelElement combines a [BorderPrimitive]({%slug tpf-primitives-borderprimitive%}), [FillPrimitive]({%slug tpf-primitives-fillprimitive%}) and [TextPrimitive]({%slug tpf-primitives-textprimitive%}), then adds specific label properties __TextAlignment__and __BorderVisible__.
					

* 
						Layout elements descending from [LayoutPanel]({%slug tpf-class-hierarchy-layoutpanel%}) manage the arrangement of child elements. For example, StackLayoutPanel arranges elements in a horizontal or vertical stack that may wrap to new lines. StripLayoutPanel orders elements in a single vertical or horizontal line. 
					

* [RadControls]({%slug tpf-class-hierarchy-radcontrol%}) are typically thin wrappers around a component element, handle any direct communication with Windows and establish communication to the RadElement tree by creating a root element and adding elements to the root element. RadLabel for example simply creates a root element and then creates and adds a RadLabelElement to the root element.
					



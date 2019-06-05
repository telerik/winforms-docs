---
title: Primitives Overview
page_title: Overview | Telerik Presentation Framework
description: Primitives are the elements that are painted to the screen when Windows displays a form containing a Telerik RadControl. 
slug: winforms/telerik-presentation-framework/primitives/overview
tags: overview
published: True
position: 0
previous_url: tpf-primitives-overview
---

# Primitives Overview

Primitives are the elements in the control element tree that are painted to the screen when Windows displays a form containing a Telerik RadControl. All primitives are derived from [BasePrimitive]({%slug winforms/telerik-presentation-framework/class-hierarchy/baseprimitive%}), a  subclass of [VisualElement]({%slug winforms/telerik-presentation-framework/class-hierarchy/visualelement%}). [BasePrimitive]({%slug winforms/telerik-presentation-framework/class-hierarchy/baseprimitive%}) adds the virtual  __PaintPrimitive()__ method to [VisualElement]({%slug winforms/telerik-presentation-framework/class-hierarchy/visualelement%}). The descendants of [BasePrimitive]({%slug winforms/telerik-presentation-framework/class-hierarchy/baseprimitive%}) override this virtual function to draw themselves. Individual primitive classes expose additional properties. For example, the __TextPrimitive__ class includes a __Text__ property, which specifies the text that it will place on the screen. The Telerik Presentation Framework includes the following primitives:


* [ArrowPrimitive]({%slug winforms/telerik-presentation-framework/primitives/arrowprimitive%}): Represents an arrow on screen, such as the arrow in a RadDropDownButton control.


* [BorderPrimitive]({%slug winforms/telerik-presentation-framework/primitives/borderprimitive%}): Represents the border around a control or area.


* [CheckPrimitive]({%slug winforms/telerik-presentation-framework/primitives/checkprimitive%}): Represents a check mark.


* [FillPrimitive]({%slug winforms/telerik-presentation-framework/primitives/fillprimitive%}): Represents the fill within a rectangular area.


* [GripPrimitive]({%slug winforms/telerik-presentation-framework/primitives/gripprimitive%}): Displays a vertical row of dots as an visual cue that the area can be gripped and dragged.


* [ImagePrimitive]({%slug winforms/telerik-presentation-framework/primitives/imageprimitive%}): Represents an image.


* [LinePrimitive]({%slug winforms/telerik-presentation-framework/primitives/lineprimitive%}): Represents a line.


* [OverflowPrimitive]({%slug winforms/telerik-presentation-framework/primitives/overflowprimitive%}): Represents an overflow arrow. 


* [ProgressBarPrimitive]({%slug winforms/telerik-presentation-framework/primitives/progressbarprimitive%}): Represents the interior of a progress bar.


* [RadioPrimitive]({%slug winforms/telerik-presentation-framework/primitives/radioprimitive%}): Represents a single radio button.


* RectanglePrimitive represents a rectangle.


* [TextPrimitive]({%slug winforms/telerik-presentation-framework/primitives/textprimitive%}): Represents a string of text.


* [TrackBarPrimitive]({%slug winforms/telerik-presentation-framework/primitives/trackbarprimitive%}): Represents the basic UI of a trackbar, without the trackbar thumb.




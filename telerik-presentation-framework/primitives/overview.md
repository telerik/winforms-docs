---
title: Primitives Overview
page_title: Overview | UI for WinForms Documentation
description: Overview
slug: winforms/telerik-presentation-framework/primitives/overview
tags: overview
published: True
position: 0
---

# Primitives Overview



## 

Primitives are the elements in the control element tree that are painted to the screen when Windows displays a 
          form containing a Telerik RadControl. All primitives 
          are derived from [BasePrimitive]({%slug winforms/telerik-presentation-framework/class-hierarchy/baseprimitive%}), a 
          subclass of [VisualElement]({%slug winforms/telerik-presentation-framework/class-hierarchy/visualelement%}). 
          [BasePrimitive]({%slug winforms/telerik-presentation-framework/class-hierarchy/baseprimitive%}) adds the virtual 
          __PaintPrimitive()__method to 
          [VisualElement]({%slug winforms/telerik-presentation-framework/class-hierarchy/visualelement%}).
          The descendants of [BasePrimitive]({%slug winforms/telerik-presentation-framework/class-hierarchy/baseprimitive%}) 
          override this virtual function to draw themselves. Individual primitive classes expose additional properties. For example, the 
          __TextPrimitive__ class includes a __Text__ property, which specifies the text that it 
          will place on the screen. The Telerik Presentation Framework includes these primitives:
        

* [ArrowPrimitive]({%slug winforms/telerik-presentation-framework/primitives/arrowprimitive%}) represents an arrow on screen, such as the arrow in a RadDropDownButton control.
          

* [BorderPrimitive]({%slug winforms/telerik-presentation-framework/primitives/borderprimitive%}) represents the border around a control or area.
          

* [CheckPrimitive]({%slug winforms/telerik-presentation-framework/primitives/checkprimitive%}) represents a check mark.
          

* [FillPrimitive]({%slug winforms/telerik-presentation-framework/primitives/fillprimitive%}) represents the fill within a rectangular area.
          

* [GripPrimitive]({%slug winforms/telerik-presentation-framework/primitives/gripprimitive%}) displays a vertical row of dots as an visual cue that the area can be gripped and dragged.
          

* [ImagePrimitive]({%slug winforms/telerik-presentation-framework/primitives/imageprimitive%}) represents an image.
          

* [LinePrimitive]({%slug winforms/telerik-presentation-framework/primitives/lineprimitive%}) represents a line.
          

* [OverflowPrimitive]({%slug winforms/telerik-presentation-framework/primitives/overflowprimitive%}) represents an overflow arrow. 
          

* [ProgressBarPrimitive]({%slug winforms/telerik-presentation-framework/primitives/progressbarprimitive%}) represents the interior of a progress bar.
          

* [RadioPrimitive]({%slug winforms/telerik-presentation-framework/primitives/radioprimitive%}) represents a single radio button.
          

* [RectanglePrimitive](FD9CF07E-B17D-4231-A54A-BA966ACF95A2) represents a rectangle.
          

* [TextPrimitive]({%slug winforms/telerik-presentation-framework/primitives/textprimitive%}) represents a string of text.
          

* [TrackBarPrimitive]({%slug winforms/telerik-presentation-framework/primitives/trackbarprimitive%}) represents the basic UI of a trackbar, without the trackbar thumb.
          

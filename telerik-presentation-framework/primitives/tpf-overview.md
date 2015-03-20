---
title: Overview
page_title: Overview
description: Overview
slug: tpf-primitives-overview
tags: overview
published: True
position: 0
---

# Overview



## 

Primitives are the elements in the control element tree that are painted to the screen when Windows displays a 
          form containing a Telerik RadControl. All primitives 
          are derived from [BasePrimitive]({%slug tpf-class-hierarchy-baseprimitive%}), a 
          subclass of [VisualElement]({%slug tpf-class-hierarchy-visualelement%}). 
          [BasePrimitive]({%slug tpf-class-hierarchy-baseprimitive%}) adds the virtual 
          __PaintPrimitive()__method to 
          [VisualElement]({%slug tpf-class-hierarchy-visualelement%}).
          The descendants of [BasePrimitive]({%slug tpf-class-hierarchy-baseprimitive%}) 
          override this virtual function to draw themselves. Individual primitive classes expose additional properties. For example, the 
          __TextPrimitive__ class includes a __Text__ property, which specifies the text that it 
          will place on the screen. The Telerik Presentation Framework includes these primitives:
        

* [ArrowPrimitive]({%slug tpf-primitives-arrowprimitive%}) represents an arrow on screen, such as the arrow in a RadDropDownButton control.
          

* [BorderPrimitive]({%slug tpf-primitives-borderprimitive%}) represents the border around a control or area.
          

* [CheckPrimitive]({%slug tpf-primitives-checkprimitive%}) represents a check mark.
          

* [FillPrimitive]({%slug tpf-primitives-fillprimitive%}) represents the fill within a rectangular area.
          

* [GripPrimitive]({%slug tpf-primitives-gripprimitive%}) displays a vertical row of dots as an visual cue that the area can be gripped and dragged.
          

* [ImagePrimitive]({%slug tpf-primitives-imageprimitive%}) represents an image.
          

* [LinePrimitive]({%slug tpf-primitives-lineprimitive%}) represents a line.
          

* [OverflowPrimitive]({%slug tpf-primitives-overflowprimitive%}) represents an overflow arrow. 
          

* [ProgressBarPrimitive]({%slug tpf-primitives-progressprimitive%}) represents the interior of a progress bar.
          

* [RadioPrimitive]({%slug tpf-primitives-radioprimitive%}) represents a single radio button.
          

* [RectanglePrimitive](FD9CF07E-B17D-4231-A54A-BA966ACF95A2) represents a rectangle.
          

* [TextPrimitive]({%slug tpf-primitives-textprimitive%}) represents a string of text.
          

* [TrackBarPrimitive]({%slug tpf-primitives-trackbarprimitive%}) represents the basic UI of a trackbar, without the trackbar thumb.
          

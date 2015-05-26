---
title: Painting Logic
page_title: Painting Logic | UI for WinForms Documentation
description: Painting Logic
slug: winforms/telerik-presentation-framework/painting-logic
tags: painting,logic
published: False
position: 16
---

# Painting Logic



Painting is initiated by [RadControl]({%slug winforms/telerik-presentation-framework/class-hierarchy/radcontrol%}). When the __OnPaint__ event inherited from __ScrollableWindow__ fires, the __RootElement Paint()__ method is called, followed by the inherited __OnPaint()__ method.

RadElement Paint() performs the following:

* Saves state, including retaining transformation matrices and clipping regions to be restored at the end of the painting process. 


* Transforms graphics using the context of the parent. 


* If necessary, the graphic is clipped. 


* The element is painted. 


* The children of the element are painted. For each child element painted, the virtual PaintOverride() method is called. Override this method to customize painting at a fine grain level. 


* Previously saved state is restored. 

## Transformations

Transformations are changes to:

* Position (also called translation). In RadElements, these changes take the form of offsets, e.g. padding, margin, border. 


* Size (also called scaling) is controlled by the RadElement __ScaleTransform__ property. 


* Rotation is controlled by the RadElement __AngleTransform__ property. 

Transformation uses the context of the parent:

* The RootRadElement is transformed in relation to the control's client area 


* An element is transformed in relation to the root element. 


* Primitives are transformed in relation to the elements they appear in. 

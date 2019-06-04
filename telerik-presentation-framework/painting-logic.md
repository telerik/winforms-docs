---
title: Painting Logic
page_title: Painting Logic | Telerik Presentation Framework
description: This article describes how the Telerik Presentation Framework elements are painted. 
slug: winforms/telerik-presentation-framework/painting-logic
tags: painting, logic
published: False
position: 16
previous_url: 
---

# Painting Logic

Painting is initiated by [RadControl]({%slug winforms/telerik-presentation-framework/class-hierarchy/radcontrol%}). When the __OnPaint__ event inherited from __ScrollableWindow__ fires, the __RootElement Paint__ method is called, followed by the inherited __OnPaint__ method.

RadElement's __Paint__ performs the following:

* Saves state, including retaining transformation matrices and clipping regions to be restored at the end of the painting process. 

* Transforms graphics using the context of the parent. 

* If necessary, the graphic is clipped. 

* The element is painted. 

* The children of the element are painted. For each child element painted, the virtual __PaintOverride__ method is called. Override this method to customize painting at a fine grain level. 

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

# See Also
* [Animations]({%slug winforms/telerik-presentation-framework/animations%})

* [Dependency Properties]({%slug winforms/telerik-presentation-framework/dependency-properties%})

* [Handling User Input]({%slug winforms/telerik-presentation-framework/handling-user-input%})

* [HTML-like Text Formatting]({%slug winforms/telerik-presentation-framework/html-like-text-formatting%})

* [Inherit themes from RadControls derivatives]({%slug winforms/telerik-presentation-framework/inherit-themes-from-radcontrols-derivatives%})

* [Microsoft Active Accessibility Support]({%slug winforms/telerik-presentation-framework/microsoft-active-accessibility-support%})

* [Override Theme Settings at Run Time]({%slug winforms/telerik-presentation-framework/override-theme-settings-at-run-time%})

* [RadMarkupDialog]({%slug winforms/telerik-presentation-framework/radmarkupdialog%})


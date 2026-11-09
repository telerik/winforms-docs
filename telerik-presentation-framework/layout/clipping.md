---
title: Clipping
page_title: Clipping - Telerik Presentation Framework
description: Clipping refers to leaving out certain areas of an element that fall outside of a specified clipping rectangle.
components: ["general"]
slug: winforms/telerik-presentation-framework/layout/clipping
tags: clipping
published: True
position: 8
previous_url: tpf-layout-clipping
---

# Clipping

Clipping hides the parts of an element that fall outside a specified clipping rectangle. Unlike Windows Presentation Foundation (WPF), which uses the arrange rectangle as the clipping rectangle, the Telerik Presentation Framework uses the parent rectangle. When the parent's `ClipDrawing` property is `true`, it clips the portion of a child that extends beyond the parent's bounds.

The diagram illustrates three related rectangles:

* The **parent rectangle** defines the clipping boundary.
* The **final rectangle for child arrange** is the space allocated to the child during layout. It is smaller than the child's desired size.
* The **child desired size** extends beyond both the arrange rectangle and the parent's bounds.

The portion of the child inside the parent remains visible, including the portion outside its arrange rectangle. Only the portion outside the parent is clipped. Visibility therefore depends on the parent's bounds, not on whether the child fits in its arrange rectangle.

![Clipping diagram: a child exceeds its allocated arrange rectangle; its overlap with the parent remains visible, while its extension beyond the parent is clipped](images/tpf-layout-clipping001.png)

## See Also
* [Custom Layouts]({%slug winforms/telerik-presentation-framework/layout/custom-layouts%})

* [Element Offset Calculations]({%slug winforms/telerik-presentation-framework/layout/element-offset-calculations%})

* [Layout Activation]({%slug winforms/telerik-presentation-framework/layout/layout-activation%})

* [Layout Logic]({%slug winforms/telerik-presentation-framework/layout/layout-logic%})

* [Layout Overview]({%slug winforms/telerik-presentation-framework/layout/layout-overview%})

* [Layout Structure]({%slug winforms/telerik-presentation-framework/layout/layout-structure%})

* [RadControl Testing Considerations]({%slug winforms/telerik-presentation-framework/layout/radcontrol-testing-considerations%})

* [Sample Arrange Stage Scenarios]({%slug winforms/telerik-presentation-framework/layout/sample-arrange-stage-scenarios%})

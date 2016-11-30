---
title: Clipping
page_title: Clipping | Telerik Presentation Framework
description: Clipping
slug: winforms/telerik-presentation-framework/layout/clipping
tags: clipping
published: True
position: 8
previous_url: tpf-layout-clipping
---

# Clipping

Clipping refers to leaving out certain areas of an element that fall outside of a specified clipping rectangle. Unlike WPF, which uses the arrange rectangle as the clipping rectangle, the Telerik Presentation Framework uses the parent rectangle. This means that only the area denoted by the rightmost thatched pattern is clipped. The area left visible is fully within the parent rectangle and is denoted by the thick light green line. Generally, the part of a child located outside of its parent bounds will be clipped if the __ClipDrawing__ property of the parent is set to true.

The diagram below shows a child with size greater than the size allocated for its display in order to show the clipping policy implemented by the Telerik Presentation Framework.

![tpf-layout-clipping 001](images/tpf-layout-clipping001.png)

# See Also
* [Custom Layouts]({%slug winforms/telerik-presentation-framework/layout/custom-layouts%})

* [Element Offset Calculations]({%slug winforms/telerik-presentation-framework/layout/element-offset-calculations%})

* [Layout Activation]({%slug winforms/telerik-presentation-framework/layout/layout-activation%})

* [Layout Logic]({%slug winforms/telerik-presentation-framework/layout/layout-logic%})

* [Layout Overview]({%slug winforms/telerik-presentation-framework/layout/layout-overview%})

* [Layout Structure]({%slug winforms/telerik-presentation-framework/layout/layout-structure%})

* [RadControl Testing Considerations]({%slug winforms/telerik-presentation-framework/layout/radcontrol-testing-considerations%})

* [Sample Arrange Stage Scenarios]({%slug winforms/telerik-presentation-framework/layout/sample-arrange-stage-scenarios%})


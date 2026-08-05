---
title: Sample Arrange Stage Scenarios
page_title: Sample Arrange Stage Scenarios - Telerik Presentation Framework
description: This article shows arrange stage scenarios that can occur when the layout is created.
slug: winforms/telerik-presentation-framework/layout/sample-arrange-stage-scenarios
tags: sample,arrange,stage,scenarios
published: True
position: 4
previous_url: tpf-layout-sample-arrange-state-scenarios
---

# Sample Arrange Stage Scenarios

Element placement within the area allocated by the parent takes place during the arrange stage. Placement depends on a variety of properties including __Alignment__, __StretchHorizontally__, __StretchVeritically__ and the ratio of the size allocated by the parent to the DesiredSize of the child.

## Parent Allocates with Requested Size

The layout scenario below shows two children with margins, borders, padding and an angle transformation for Child 1. In this case the parent has arranged  the children with exact requested *DesiredSize*.

![Telerik UI for WinForms arrange stage with exact requested child sizes and layout transformations](images/tpf-layout-sample-arrange-state-scenarios001.png)

## Parent Allocates Size Greater than Requested Size

In the example below, the child DesiredSize is smaller than the rectangle allocated by the parent. The child StretchVertically and StretchHorizontally  properties are set to false. The example figures show the effect of the child Alignment property setting on the resulting rectangle produced by the child Arrange() method.

![Telerik UI for WinForms arrange stage showing alignment when the parent allocates more space than requested](images/tpf-layout-sample-arrange-state-scenarios002.png)

>note The area of the child that falls outside of the rectangle allocated by the parent is not clipped, but is shown to the extent it is within the area of the parent. See [Clipping]({%slug winforms/telerik-presentation-framework/layout/clipping%}) for more information.
>
## Parent Allocates Size Smaller than Requested Size

In the example below, the child DesiredSize is larger than the rectangle allocated by the parent.

![Telerik UI for WinForms arrange stage showing a child larger than the space allocated by its parent](images/tpf-layout-sample-arrange-state-scenarios003.png)

# See Also
* [Clipping]({%slug winforms/telerik-presentation-framework/layout/clipping%})

* [Custom Layouts]({%slug winforms/telerik-presentation-framework/layout/custom-layouts%})

* [Element Offset Calculations]({%slug winforms/telerik-presentation-framework/layout/element-offset-calculations%})

* [Layout Activation]({%slug winforms/telerik-presentation-framework/layout/layout-activation%})

* [Layout Logic]({%slug winforms/telerik-presentation-framework/layout/layout-logic%})

* [Layout Overview]({%slug winforms/telerik-presentation-framework/layout/layout-overview%})

* [Layout Structure]({%slug winforms/telerik-presentation-framework/layout/layout-structure%})

* [RadControl Testing Considerations]({%slug winforms/telerik-presentation-framework/layout/radcontrol-testing-considerations%})

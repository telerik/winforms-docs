---
title: Layout Activation
page_title: Layout Activation | Telerik Presentation Framework
description: This article shows when the layout is activated and how you can update it manually. 
slug: winforms/telerik-presentation-framework/layout/layout-activation
tags: layout,activation
published: True
position: 1
previous_url: tpf-layout-activation
---

# Layout Activation

There are two levels of layout activation: 

1. __Global__: all elements in the control are affected. 

    1. For theme and language changes, layout changes propagate from children to parent.

    1. Control resizing by the user or by outer layout causes layout changes that propagation from parent to children. 

1. __Local__: the layout starts from a particular element in the hierarchy. 

    1. Adding, removing and reordering children in one element triggers local layout activation. 

    1. Setting properties that affect layout or perform layout explicitly for an element. For example, the RadElement __PerformLayout__ method causes the element and its children to be measured and arranged. 

    1. __SuspendLayout__ prevents layout for a RadElement while adding, removing, reordering children or when setting specific properties. __ResumeLayout__ re-starts the deferred layout. 

The layout system is called automatically due to a change in properties affecting the layout (properties with __AffectsLayout__, __AffectsMeasure__, __AffectsArrange__ metadata flags set, e.g. Size, or Location). Layouts can still be called explicitly by the user using the __UpdateLayout__ method on any RadElement,

>caution Calling __UpdateLayout__ directly is not recommended, and a sign that a better design approach is called for. The UpdateLayout method may be called directly in certain [testing]({%slug winforms/telerik-presentation-framework/layout/radcontrol-testing-considerations%}) situations.
>


# See Also
* [Clipping]({%slug winforms/telerik-presentation-framework/layout/clipping%})

* [Custom Layouts]({%slug winforms/telerik-presentation-framework/layout/custom-layouts%})

* [Element Offset Calculations]({%slug winforms/telerik-presentation-framework/layout/element-offset-calculations%})

* [Layout Logic]({%slug winforms/telerik-presentation-framework/layout/layout-logic%})

* [Layout Overview]({%slug winforms/telerik-presentation-framework/layout/layout-overview%})

* [Layout Structure]({%slug winforms/telerik-presentation-framework/layout/layout-structure%})

* [RadControl Testing Considerations]({%slug winforms/telerik-presentation-framework/layout/radcontrol-testing-considerations%})

* [Sample Arrange Stage Scenarios]({%slug winforms/telerik-presentation-framework/layout/sample-arrange-stage-scenarios%})


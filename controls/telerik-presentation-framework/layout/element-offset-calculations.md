---
title: Element Offset Calculations
page_title: Element Offset Calculations | Telerik Presentation Framework
description: Calculate the elements offset by taking its parent settings under consideration.
slug: winforms/telerik-presentation-framework/layout/element-offset-calculations
tags: element,offset,calculations
published: True
position: 9
previous_url: tpf-layout-element-offset-calculations
---

# Element Offset Calculations

## Location Offset Factors

The factors that produce the location offset of an element relative to its parent are:

1. Location of the rectangle fed to the child Arrange method. 

1. Parent border thickness.

1. Parent padding.

1. Child margin.

1. Child location.

1. Child alignment.

1. Child PositionOffset.

There are multiple properties storing offsets and bounds of an element. The sum of items 1 through 6 produces the __LayoutOffset__. The sum of items 1 through 7 inclusive produces the offset as stored in the RadElement __TransformationMatrix__.
        

## LayoutOffset

The RadElement __LayoutOffset__ is the sum of the arrange rectangle offset, parent border, padding, child margin, child location and alignment. In the figure below the "Final Rect Offset" illustrates the offset of the arrange rectangle where parent content is rendered. "Layout offset" indicates the offset represented by the __LayoutOffset__ property.

![tpf-layout-element-offset-calculations 001](images/tpf-layout-element-offset-calculations001.png)

## PositionOffset

The offset of the origin of the coordinate system used when painting an element and its children. The __PositionOffset__ is relative to the parent of an element. Setting __PositionOffset__ has no influence on other layout properties and is only used to paint the element using an offset. The area of the element appearing outside of the parent bounds is clipped.

The example below shows a FillPrimitive where the __PositionOffset__ if 5 pixels down and 5 pixels in.

![tpf-layout-element-offset-calculations 002](images/tpf-layout-element-offset-calculations002.png)

#### Setting PositionOffset

{{source=..\SamplesCS\TPF\Layouts\CascadeLayoutPanel.cs region=positionOffset}} 
{{source=..\SamplesVB\TPF\Layouts\CascadeLayoutPanel.vb region=positionOffset}} 

````C#
BorderPrimitive rectanglePrimitive = new BorderPrimitive();
rectanglePrimitive.ForeColor = Color.Red;
rectanglePrimitive.MinSize = new Size(20, 20);
rectanglePrimitive.PositionOffset = new SizeF(15, 15);

````
````VB.NET
Dim rectanglePrimitive As New BorderPrimitive()
rectanglePrimitive.ForeColor = Color.Red
rectanglePrimitive.MinSize = New Size(20, 20)
rectanglePrimitive.PositionOffset = New SizeF(15, 15)

````

{{endregion}}

# See Also
* [Clipping]({%slug winforms/telerik-presentation-framework/layout/clipping%})

* [Custom Layouts]({%slug winforms/telerik-presentation-framework/layout/custom-layouts%})

* [Layout Activation]({%slug winforms/telerik-presentation-framework/layout/layout-activation%})

* [Layout Logic]({%slug winforms/telerik-presentation-framework/layout/layout-logic%})

* [Layout Overview]({%slug winforms/telerik-presentation-framework/layout/layout-overview%})

* [Layout Structure]({%slug winforms/telerik-presentation-framework/layout/layout-structure%})

* [RadControl Testing Considerations]({%slug winforms/telerik-presentation-framework/layout/radcontrol-testing-considerations%})

* [Sample Arrange Stage Scenarios]({%slug winforms/telerik-presentation-framework/layout/sample-arrange-stage-scenarios%})


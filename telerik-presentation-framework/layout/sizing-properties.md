---
title: Sizing Properties
page_title: Sizing Properties | UI for WinForms Documentation
description: Sizing Properties
slug: winforms/telerik-presentation-framework/layout/sizing-properties
tags: sizing,properties
published: True
position: 7
previous_url: tpf-layout-sizing-properties
---

# Sizing Properties

## Stretching

Arrange allocates a cell in which the item child be positioned. If the child is not stretchable there are two possible scenarios:

* If the size of the child is smaller than the size of the cell, the child can be aligned within the cell

* If the size of the child is bigger than the size of the cell, the child is cut by the cell in accordance with the [clipping]({%slug winforms/telerik-presentation-framework/layout/clipping%}) behavior.

If the child is stretchable, it fills to the maximum the dimension of the cell in the stretching direction. Furthermore, stretching is only applied in case of stretching up. There is no shrinking of element dimensions to make them fit in size less than the requested DesiredSize.

* When stretching in a particular direction is turned off for a child element, the parent element will stretch in that direction to accommodate the child.

* In case stretching in a particular direction is turned on, the child element will size itself to fill the size allocated to it by the parent, taking into account its margin and padding properties.

* In the case that a child is larger than its parent, the parent will only increase in size to accommodate the child in case all of the conditions below are fulfilled:1. Parent’s AutoSize property is set to true2. Parent’s StretchHorizontally and StretchVertically properties are set to false3. Child’s DesiredSize is non-zero

## ZIndex

During the layout process, children are placed on top of each other according to their __ZIndex__ properties, or in the case of equivalent __ZIndex__ values, according to the order in which they were added to the __Children__ collection.

## AutoSize

The __AutoSize__ property of an element controls whether it will have its size calculated automatically by the layout system. A value of false indicates that the element size will not be changed when calculating the layout.

## ByPassLayoutPolicies

The desired size returned by the measure stage of the layout process can be ignored by using the __BypassLayoutPolicies__ flag. If this flag is set to true, the size of the child is set to the size specified by the user in the call to the __Arrange()__ method.

>caution When the __BypassLayoutPolicies__ flag is set to true, the transformation and constraint implementing logic is bypassed. Any transformation will therefore have to be implemented by the user.
>


## FitToSizeMode

The RadElement __FitToSizeMode__ property controls the area that a child element may paint itself. By default all children are placed in the parent content area and can paint in that area only. __FitToSizeMode__ is taken into account when measuring and arranging elements during layout.

* __FitToParentContent:__ The __FitToSizeMode__ for all elements by default is __FitToParentContent__ where the child fills and paints in the parent content area only.

* __FitToParentPadding:__ If child element __FitToSizeMode__ is __FitToParentPadding__, the child fills the padding area of its parent and can paint in both content and padding areas. [FillPrimitive]({%slug winforms/telerik-presentation-framework/primitives/fillprimitive%}) and [LinePrimitive]({%slug winforms/telerik-presentation-framework/primitives/lineprimitive%}) use this setting.

* __FitToParentBounds:__ When __FitToSizeMode__ is set to __FitToParentBounds__ the child fills and can paint within the parent border. [BorderPrimitive]({%slug winforms/telerik-presentation-framework/primitives/borderprimitive%}) and [FocusPrimitive]({%slug winforms/telerik-presentation-framework/primitives/focusprimitive%}) use this setting.

## BoundingRectangle

The __BoundingRectangle__ property stores the bounds of an element relative to its parent element. The transformations applied to the element are stored in its __TransformationMatrix__ property, again relative to its parent element.

## ControlBoundingRectangle

The __ConrolBoundingRectangle__ property stores the bounds of an element relative to the root of the element tree, i.e. the control hosting the element tree. The transformations applied to the element relative to the root of the element tree are stored in the __TotalTransformationMatrix__ property.

## DesiredSize

The __DesiredSize__ property is the size returned by the MeasureOverride() method of an element.  It indicates how much space is needed by the children of the element to be ordered according to the logic implemented in the MeasureOverride() method. __DesiredSize__ is equal to __BoundingRectangle.Size__.

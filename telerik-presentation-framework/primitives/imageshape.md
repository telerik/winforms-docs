---
title: ImageShape
page_title: ImageShape - Telerik Presentation Framework
description: ImageShape
slug: winforms/telerik-presentation-framework/primitives/imageshape
tags: imageshape
published: True
position: 8
previous_url: tpf-primitives-imageshape
---

# ImageShape

__RadImageShape__ implements the so called "Segmented Image" semantic, which in general allows a small image (pattern) to be stretched to larger bounds without quality loss. This effect is achieved by dividing the image into 9 logical parts (segments) and providing advanced paint logic for each part.

![tpf-primitives-imageshape 001](images/tpf-primitives-imageshape001.png)

__RadImageShape.Margins__

__RadImageShape__          

![tpf-primitives-imageshape 002](images/tpf-primitives-imageshape002.png)

Using the __Margins__ property, an image is divided into 9 segments. Following is a brief overview of each segment and how it is stretched:

1. TopLeft – not stretched

1. Top – stretched horizontally

1. TopRight – not stretched

1. Right – stretched vertically

1. BottomRight – not stretched

1. Bottom – stretched horizontally

1. BottomLeft – not stretched

1. Left – stretched vertically

1. Inner – stretched horizontally and vertically

__Advanced Settings__

RadImageShape exposes some advanced settings that allow any complex rendering logic to be easily described. Such settings are:

* **PaintMode** – available are 14 different modes, where each one defines custom paint logic of the 9 segments.

![tpf-primitives-imageshape 003](images/tpf-primitives-imageshape003.png)

*PaintMode.StretchYTileX*

* **InterpolationMode** – defines the interpolation passed to the underlying GDI+ Graphics used to paint the each image part.


* **RotateFlip** – additional option, which allows the source image to be rotated/flipped before segmentation.

* **BackgroundShapePaintMode** - determines when the BackgroundShape will be painted. The following options are available:
	* **PrePaint**: The BackgroundShape will be painted in the PrePaintElement method(before fill, border, text, image etc.). Suitable when you use the BackgroundShape instead of Fill and/or Border.
	
	* **PostPaint**: The BackgroundShape will be painted on top of all other elements(fill, border, text, image). Here it is not suitable to use a big BackgroundShape, because it will cover everything else painted before. But it is suitable to add some minor indications, for example, the little selection indicator in Windows 10:

	![WinForms TPF PostPaint](images/tpf-primitives-imageshape005.png)

__Editing RadImageShape in Visual Style Builder__

Each RadElement exposes a property named __BackgroundShape__ which is of type __RadImageShape__. Complete __Visual Style Builder__ support is provided and you can either create a __RadImageShape__ repository item or edit the __BackgroundShape__ property directly in the advanced view of each element.

![tpf-primitives-imageshape 004](images/tpf-primitives-imageshape004.png)

# See Also
* [ArrowPrimitive]({%slug winforms/telerik-presentation-framework/primitives/arrowprimitive%})

* [BorderPrimitive]({%slug winforms/telerik-presentation-framework/primitives/borderprimitive%})

* [CheckPrimitive]({%slug winforms/telerik-presentation-framework/primitives/checkprimitive%})

* [FillPrimitive]({%slug winforms/telerik-presentation-framework/primitives/fillprimitive%})

* [FocusPrimitive]({%slug winforms/telerik-presentation-framework/primitives/focusprimitive%})

* [GripPrimitive]({%slug winforms/telerik-presentation-framework/primitives/gripprimitive%})

* [ImagePrimitive]({%slug winforms/telerik-presentation-framework/primitives/imageprimitive%})

* [LightVisualElement]({%slug winforms/telerik-presentation-framework/primitives/lightvisualelement%})

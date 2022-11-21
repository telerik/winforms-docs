---
title: OverflowPrimitive
page_title: OverflowPrimitive - Telerik Presentation Framework
description: The OverflowPrimitive is a visual indicator and button that more choices are available.
slug: winforms/telerik-presentation-framework/primitives/overflowprimitive
tags: overflowprimitive
published: True
position: 10
previous_url: tpf-primitives-overflowprimitive
---

# OverflowPrimitive

The OverflowPrimitive is a visual indicator and button that more choices are available. The OverflowPrimitive consists of a triangle and a line just under the base of the triangle. The triangle and line are colored using the __ForeColor__ property. Depending on the __Direction__ property of the arrow, __BackColor__ and __ShadowColor__ may be used.

![tpf-primitives-overflowprimitive 001](images/tpf-primitives-overflowprimitive001.png)

#### Creating an OverflowPrimitive

{{source=..\SamplesCS\TPF\Primitives\OverflowPrimitive1\MyOverflowPrimitiveElement.cs region=myOverflowPrimitiveElement}} 
{{source=..\SamplesVB\TPF\Primitives\OverflowPrimitive1\MyOverflowPrimitiveElement.vb region=myOverflowPrimitiveElement}} 

````C#
public class MyOverflowPrimitiveElement : RadElement
{
    protected override void CreateChildElements()
    {
        OverflowPrimitive overflowPrimitive = new OverflowPrimitive(ArrowDirection.Down);
        overflowPrimitive.MinSize = new Size(30, 30);
        overflowPrimitive.ForeColor = Color.Blue;
        this.Children.Add(overflowPrimitive);
        base.CreateChildElements();
    }
}

````
````VB.NET
Public Class MyOverflowPrimitiveElement
    Inherits RadElement
    Protected Overrides Sub CreateChildElements()
        Dim overflowPrimitive As New OverflowPrimitive(ArrowDirection.Down)
        overflowPrimitive.MinSize = New Size(30, 30)
        overflowPrimitive.ForeColor = Color.Blue
        Me.Children.Add(overflowPrimitive)
        MyBase.CreateChildElements()
    End Sub
End Class

````

{{endregion}}

# See Also
* [ArrowPrimitive]({%slug winforms/telerik-presentation-framework/primitives/arrowprimitive%})

* [BorderPrimitive]({%slug winforms/telerik-presentation-framework/primitives/borderprimitive%})

* [CheckPrimitive]({%slug winforms/telerik-presentation-framework/primitives/checkprimitive%})

* [FillPrimitive]({%slug winforms/telerik-presentation-framework/primitives/fillprimitive%})

* [FocusPrimitive]({%slug winforms/telerik-presentation-framework/primitives/focusprimitive%})

* [GripPrimitive]({%slug winforms/telerik-presentation-framework/primitives/gripprimitive%})

* [ImagePrimitive]({%slug winforms/telerik-presentation-framework/primitives/imageprimitive%})

* [ImageShape]({%slug winforms/telerik-presentation-framework/primitives/imageshape%})


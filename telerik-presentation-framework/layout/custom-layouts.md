---
title: Custom Layouts
page_title: Custom Layouts | Telerik Presentation Framework
description: Custom Layouts
slug: winforms/telerik-presentation-framework/layout/custom-layouts
tags: custom,layouts
published: True
position: 6
previous_url: tpf-layout-custom-layout
---

# Custom Layouts

To create a custom layout class, create a __LayoutPanel__ descendant class and override the __MeasureOverride()__ and __ArrangeOverride()__ methods. The example below demonstrates custom [layout logic]({%slug winforms/telerik-presentation-framework/layout/layout-logic%}):

* __MeasureOverride:__ This implementation iterates and sums the width and height of each child in the __Children__ collection. The __Measure__ method is called for each child. In this example ten `TextBoxPrimitive` items are added to the `CascadeLayoutPanel` Children collection (code for adding primitives not shown). The total width and height for all child items together far exceeds the space allocated by the parent, so that "Element3" is only partially visible and the remaining elements are completely clipped.

* __ArrangeOverride:__ This implementation iterates the __Children__  collection and calls the __Arrange__ method for each child instance. The local "leftTopCorner" __Point__  member is incremented by the width and height of each child, causing each child to be arranged down and to the right of the previous child. 

![tpf-layout-custom-layout 001](images/tpf-layout-custom-layout001.png)

#### Cascade layout example

{{source=..\SamplesCS\TPF\Layouts\CascadeLayoutPanel.cs region=cascadeLayoutPanel}} 
{{source=..\SamplesVB\TPF\Layouts\CascadeLayoutPanel.vb region=cascadeLayoutPanel}} 

````C#
public class CascadeLayoutPanel : LayoutPanel
{
    protected override SizeF MeasureOverride(SizeF availableSize)
    {
        SizeF totalSize = SizeF.Empty;
        for (int i = 0; i < this.Children.Count; ++i)
        {
            RadElement child = this.Children[i];
            if (child != null)
            {
                child.Measure(availableSize);
                totalSize.Width += child.DesiredSize.Width;
                totalSize.Height += child.DesiredSize.Height;
            }
        }
        return totalSize;
    }
    protected override SizeF ArrangeOverride(SizeF finalSize)
    {
        PointF leftTopCorner = new Point();
        for (int i = 0; i < this.Children.Count; ++i)
        {
            RadElement child = this.Children[i];
            if (child != null)
            {
                child.Arrange(new RectangleF(leftTopCorner,
                    new SizeF(child.DesiredSize.Width, child.DesiredSize.Height)));
                leftTopCorner.X += child.DesiredSize.Width;
                leftTopCorner.Y += child.DesiredSize.Height;
            }
        }
        return finalSize;
    }
}

````
````VB.NET
Public Class CascadeLayoutPanel
    Inherits LayoutPanel
    Protected Overrides Function MeasureOverride(ByVal availableSize As SizeF) As SizeF
        Dim totalSize As SizeF = SizeF.Empty
        For i As Integer = 0 To Me.Children.Count - 1
            Dim child As RadElement = Me.Children(i)
            If child IsNot Nothing Then
                child.Measure(availableSize)
                totalSize.Width += child.DesiredSize.Width
                totalSize.Height += child.DesiredSize.Height
            End If
        Next i
        Return totalSize
    End Function
    Protected Overrides Function ArrangeOverride(ByVal finalSize As SizeF) As SizeF
        Dim leftTopCorner As PointF = New Point()
        For i As Integer = 0 To Me.Children.Count - 1
            Dim child As RadElement = Me.Children(i)
            If child IsNot Nothing Then
                child.Arrange(New RectangleF(leftTopCorner, New SizeF(child.DesiredSize.Width, child.DesiredSize.Height)))
                leftTopCorner.X += child.DesiredSize.Width
                leftTopCorner.Y += child.DesiredSize.Height
            End If
        Next i
        Return finalSize
    End Function
End Class

````

{{endregion}}

# See Also
* [Clipping]({%slug winforms/telerik-presentation-framework/layout/clipping%})

* [Element Offset Calculations]({%slug winforms/telerik-presentation-framework/layout/element-offset-calculations%})

* [Layout Activation]({%slug winforms/telerik-presentation-framework/layout/layout-activation%})

* [Layout Logic]({%slug winforms/telerik-presentation-framework/layout/layout-logic%})

* [Layout Overview]({%slug winforms/telerik-presentation-framework/layout/layout-overview%})

* [Layout Structure]({%slug winforms/telerik-presentation-framework/layout/layout-structure%})

* [RadControl Testing Considerations]({%slug winforms/telerik-presentation-framework/layout/radcontrol-testing-considerations%})

* [Sample Arrange Stage Scenarios]({%slug winforms/telerik-presentation-framework/layout/sample-arrange-stage-scenarios%})


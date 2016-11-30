---
title: BasePrimitive
page_title: BasePrimitive | Telerik Presentation Framework
description: BasePrimitive is a VisualElement descendant that Implements the IPrimitive interface. 
slug: winforms/telerik-presentation-framework/class-hierarchy/baseprimitive
tags: baseprimitive
published: True
position: 7
previous_url: tpf-class-hierarchy-baseprimitive
---

# BasePrimitive

__BasePrimitive__ is a [VisualElement]({%slug winforms/telerik-presentation-framework/class-hierarchy/visualelement%}) descendant that implements the __IPrimitive__ interface. __IPrimitive__ adds a single boolean property __ShouldPaint__ and a __PaintPrimitive__ method that draws a primitive to the screen. Descendants __of BasePrimitive__ override the __PaintPrimitive__ method to represent some atomic visual component like text, fill, checkbox, arrows, etc. The following code is a sample __PaintPrimitive__ method implementation for the __TextPrimitive__ class:

{{source=..\SamplesCS\TPF\ClassHierarchy\BasePrimitiveForm.cs region=Paint}} 
{{source=..\SamplesVB\TPF\ClassHierarchy\BasePrimitiveForm.vb region=Paint}} 

````C#
            
public override void PaintPrimitive(IGraphics graphics, float angle, SizeF scale)
{
    Rectangle rect = this.BoundingRectangle;
    
        graphics.DrawString(this.Text, rect, this.Font, this.ForeColor, this.TextAlignment, this.CreateStringFormat(),
        this.Shadow, this.TextRenderingHint, this.TextOrientation, this.FlipText);
}

````
````VB.NET
Public Overrides Sub PaintPrimitive(graphics As IGraphics, angle As Single, scale As SizeF)
    Dim rect As Rectangle = Me.BoundingRectangle
    graphics.DrawString(Me.Text, rect, Me.Font, Me.ForeColor, Me.TextAlignment, Me.CreateStringFormat(), _
        Me.Shadow, Me.TextRenderingHint, Me.TextOrientation, Me.FlipText)
End Sub

````

{{endregion}} 

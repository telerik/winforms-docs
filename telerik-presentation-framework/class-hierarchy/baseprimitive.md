---
title: BasePrimitive
page_title: BasePrimitive | UI for WinForms Documentation
description: BasePrimitive
slug: winforms/telerik-presentation-framework/class-hierarchy/baseprimitive
tags: baseprimitive
published: True
position: 7
---

# BasePrimitive

## 

BasePrimitive is a [VisualElement]({%slug winforms/telerik-presentation-framework/class-hierarchy/visualelement%}) descendant that Implements the IPrimitive interface. IPrimitive adds a single boolean property ShouldPaint and a PaintPrimitive() method that draws a primitive to the screen. Descendants of BasePrimitive override the PaintPrimitive() method to represent some atomic visual component like text, fill, checkbox, arrows, etc. The following code is an example PaintPrimitive() method for the TextPrimitive class:

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

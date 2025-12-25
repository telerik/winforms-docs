---
title: Enabling AutoScroll on Dragging RadDiagramShape in RadDiagram
description: Learn how to enable autoscroll functionality for dragging RadDiagramShape into RadDiagram in UI for WinForms.
type: how-to
page_title: How to Enable AutoScroll During Dragging in RadDiagram
meta_title: How to Enable AutoScroll During Dragging in RadDiagram
slug: enable-autoscroll-dragging-raddiagramshape
tags: diagram, diagramribbonbar, diagramtoolbox, drag-and-drop, autoscroll, mousemove, pan-to-position
res_type: kb
ticketid: 1706477
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.4.1111|RadDiagram for WinForms|[Nadya Karaivanova](https://www.telerik.com/blogs/author/nadya-karaivanova)|

## Description

I want to enable autoscroll functionality on a RadDiagram when dragging a RadDiagramShape outside the bounds of the RadDiagram. The goal is to allow the diagram to automatically scroll as the shape approaches the edge of the view, without the need to release the mouse or perform multiple steps.

## Solution

To enable autoscroll functionality during dragging, use the `MouseMove` event handler of the RadDiagram. Implement the `PanToPosition()` method to dynamically update the viewport as the dragged RadDiagramShape approaches the edge of the visible area.

### Implementation

1. Implement the following code snippet in the `MouseMove` event handler of RadDiagram to achieve autoscroll:

````C#
private void RadDiagram1_MouseMove(object sender, MouseEventArgs e)
{
    if (e.Button != MouseButtons.Left)
        return;

    RadDiagram diagram = sender as RadDiagram;
    if (diagram == null)
        return;

    var selectedShapes = diagram.SelectedItems.OfType<RadDiagramShapeBase>();
    
    foreach (var shape in selectedShapes)
    {
        if (shape != null && !diagram.Viewport.Contains(shape.ActualBounds))
        {
            Rect shapeRect = shape.ActualBounds;
            Rect viewportRect = diagram.Viewport;
            double newX = viewportRect.X + diagram.Position.X;
            double newY = viewportRect.Y + diagram.Position.Y;
            
            if (viewportRect.X > shapeRect.X)
            {
                newX += (viewportRect.X - shapeRect.X);
            }
            else if (viewportRect.Right < shapeRect.Right)
            {
                newX -= (shapeRect.Right - viewportRect.Right);
            }

            if (viewportRect.Y > shapeRect.Y)
            {
                newY += (viewportRect.Y - shapeRect.Y);
            }
            else if (viewportRect.Bottom < shapeRect.Bottom)
            {
                newY -= (shapeRect.Bottom - viewportRect.Bottom);
            }

            diagram.PanToPosition(new Telerik.Windows.Diagrams.Core.Point(newX, newY));
            break;
        }
    }
}
````

2. Attach this event handler to the RadDiagram's `MouseMove` event.

### Explanation
- The code calculates the new viewport position based on the dragged shape's position relative to the existing viewport.
- If the shape moves beyond the viewport boundaries, the `PanToPosition()` method automatically scrolls and brings the shape into view.


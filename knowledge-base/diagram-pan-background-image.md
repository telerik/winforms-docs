---
title: How to Achieve Background Image in RadDiagram that Supports Pan Functionality  
description: This tutorial demonstrates how to achieve a background image in RadDiagram that can be panned.
type: how-to
page_title: How to Achieve Pannable Background Image in RadDiagram  
slug: diagram-pan-background-image
position: 5
tags: diagram, drag
ticketid: 1162881
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2021.1.0119|RadDiagram for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

A common requirement is to have a background image for **RadDiagram**. The easiest way to achieve this is by setting the DiagramElement.**BackgroundImage** property. 

However, in this case the image will be shown but the pan and zoom operation will not apply to the background.

## Solution

If you want to pan and zoom the custom background image, the possible solution is to use a big enough **RadDiagramShape** and apply the image to it. Thus, the pan and zoom operations will come out of the box. Please refer to the following code snippet which result is demonstrated in the attached gif file.

![diagram-pan-background-image 001](images/diagram-pan-background-image001.gif)
 
````C#
public RadForm1()
{
    InitializeComponent();

    this.radDiagram1.DiagramElement.IsBackgroundSurfaceVisible = false;
    RadDiagramShape _Background = new RadDiagramShape()
    {
        Name = "Image"
    };
    _Background.IsConnectorsManipulationEnabled = false;
    _Background.IsRotationEnabled = false;
    _Background.IsResizingEnabled = false;
    _Background.IsDraggingEnabled = false;
    _Background.CaptureOnMouseDown = false;
    _Background.IsEnabled = false;
    _Background.IsFocusable = false;
    _Background.IsHitTestVisible = false;
    _Background.ShouldHandleMouseInput = false;
    _Background.Shape = new Telerik.WinControls.RoundRectShape(0);
    Image bg = Image.FromFile(@"..\..\IMG_4882.JPG");
    _Background.DiagramShapeElement.Image = bg;
    _Background.Width = bg.Width;
    _Background.Height = bg.Height;
    _Background.DiagramShapeElement.ImageOpacity = 0.5;


    _Background.ShouldHandleMouseInput = false;
    _Background.NotifyParentOnMouseInput = false;

    this.radDiagram1.AddShape(_Background);

    Telerik.Windows.Diagrams.Core.ToolService toolService = 
        this.radDiagram1.ServiceLocator.GetService<Telerik.Windows.Diagrams.Core.IToolService>() 
        as Telerik.Windows.Diagrams.Core.ToolService;

    if (toolService != null)
        toolService.ToolList[0] = new CustomPanningTool();
    this.radDiagram1.ActiveTool = Telerik.Windows.Diagrams.Core.MouseTool.PanTool;
}
public class CustomPanningTool : Telerik.Windows.Diagrams.Core.PanningTool
{
    public override bool MouseMove(Telerik.Windows.Diagrams.Core.PointerArgs e)
    {
        if (this.IsActive)
        {
            if (this.HitItem != null && this.HitItem.Name == "Image")
                this.HitItem = null;
        }

        return base.MouseMove(e);
    }
}
 

````
````VB.NET
Sub New()
    InitializeComponent()

    RadDiagram1.DiagramElement.IsBackgroundSurfaceVisible = False
    Dim _Background As RadDiagramShape = New RadDiagramShape() With {
        .Name = "Image"
    }
    _Background.IsConnectorsManipulationEnabled = False
    _Background.IsRotationEnabled = False
    _Background.IsResizingEnabled = False
    _Background.IsDraggingEnabled = False
    _Background.CaptureOnMouseDown = False
    _Background.IsEnabled = False
    _Background.IsFocusable = False
    _Background.IsHitTestVisible = False
    _Background.ShouldHandleMouseInput = False
    _Background.Shape = New Telerik.WinControls.RoundRectShape(0)
    Dim bg As Image = Image.FromFile("..\..\IMG_4882.JPG")
    _Background.DiagramShapeElement.Image = bg
    _Background.Width = bg.Width
    _Background.Height = bg.Height
    _Background.DiagramShapeElement.ImageOpacity = 0.5


    _Background.ShouldHandleMouseInput = False
    _Background.NotifyParentOnMouseInput = False

    RadDiagram1.AddShape(_Background)

    Dim toolService As Telerik.Windows.Diagrams.Core.ToolService =
        TryCast(Me.RadDiagram1.ServiceLocator.GetService(Of Telerik.Windows.Diagrams.Core.IToolService)(),
        Telerik.Windows.Diagrams.Core.ToolService)

    If toolService IsNot Nothing Then
        toolService.ToolList(0) = New CustomPanningTool()
    End If
    Me.RadDiagram1.ActiveTool = Telerik.Windows.Diagrams.Core.MouseTool.PanTool
End Sub

Public Class CustomPanningTool
    Inherits Telerik.Windows.Diagrams.Core.PanningTool

    Public Overrides Function MouseMove(ByVal e As Telerik.Windows.Diagrams.Core.PointerArgs) As Boolean
        If Me.IsActive Then

            If Me.HitItem IsNot Nothing AndAlso Me.HitItem.Name = "Image" Then
                Me.HitItem = Nothing
            End If
        End If

        Return MyBase.MouseMove(e)
    End Function
End Class
 

````


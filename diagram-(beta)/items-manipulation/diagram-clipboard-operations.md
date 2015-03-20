---
title: Clipboard operations
page_title: Clipboard operations
description: Clipboard operations
slug: diagram-items-manipulation-clipboard-operations
tags: clipboard,operations
published: True
position: 3
---

# Clipboard operations



__RadDiagram__ gives you the ability to Cut, Copy and Paste __RadDiagramItems__ within an application.

## AllowCopy, AllowCut, AllowPaste

By default, the __AllowCopy__, __AllowCut__ and __AllowPaste__ 
        properties are set to *True*  but you can set then to False in order to disable these Clipboard operations.

## Cut, Copy, Paste with keyboard

In order to Cut, Copy or Paste particular __RadDiagramItems__  you have to select them and use the standard keyboard combinations:

* __(Ctrl + C)__ - copies the selected items.
            

* __(Ctrl + X)__ - cuts the selected items.
            

* __(Ctrl + V)__ - pastes the selected items.
            

You can perform these operations in a single form, but you can also copy/cut and paste items between several forms.![diagram-items-manipulation-clipboard-operations 001](images/diagram-items-manipulation-clipboard-operations001.gif)

## Cut, Copy, Paste with DiagramCommands

You can use the __DiagramCommands__ "Cut", "Copy" and "Paste" in order to perform the standard clipboard operations.

#### __[C#] __

{{region ClipboardCommands}}
	            
	            this.radDiagram1.SelectedItem = shape1;
	            this.radDiagram1.DiagramElement.TryExecuteCommand(DiagramCommands.Copy, "");
	            this.radDiagram2.DiagramElement.TryExecuteCommand(DiagramCommands.Paste, "");
	            this.radDiagram1.SelectedItem = shape2;
	            this.radDiagram1.DiagramElement.TryExecuteCommand(DiagramCommands.Cut, "");
	            this.radDiagram2.DiagramElement.TryExecuteCommand(DiagramCommands.Paste, "");
	        
	{{endregion}}



#### __[VB.NET] __

{{region ClipboardCommands}}
	        Me.RadDiagram1.SelectedItem = shape1
	        Me.RadDiagram1.DiagramElement.TryExecuteCommand(DiagramCommands.Copy, "")
	        Me.RadDiagram2.DiagramElement.TryExecuteCommand(DiagramCommands.Paste, "")
	        Me.RadDiagram1.SelectedItem = shape2
	        Me.RadDiagram1.DiagramElement.TryExecuteCommand(DiagramCommands.Cut, "")
	        Me.RadDiagram2.DiagramElement.TryExecuteCommand(DiagramCommands.Paste, "")
	        '#End Region
	
	        '#Region "RemoveItems"
	        Me.RadDiagram1.Items.RemoveAt(2)
	        Me.RadDiagram1.Items.Remove(shape1)
	        '#End Region
	
	        '#Region "DeleteCommands"
	
	        Me.RadDiagram1.SelectedItem = shape1
	        Me.RadDiagram1.DiagramElement.TryExecuteCommand(DiagramCommands.Delete, "")
	
	        '#End Region
	
	    End Sub
	
	    Public Sub Dummy()
	        '#Region "MultipleSelection"
	
	        Dim shape1 As New RadDiagramShape() With { _
	            .ShapeText = "", _
	            .IsSelected = True, _
	            .ElementShape = New RoundRectShape(5), _
	            .InternalElementColor = System.Drawing.Color.LightBlue _
	        }
	        shape1.Position = New Telerik.Windows.Diagrams.Core.Point(10, 10)
	        RadDiagram1.AddShape(shape1)
	
	        Dim shape2 As New RadDiagramShape() With { _
	            .ShapeText = "", _
	            .IsSelected = True, _
	            .ElementShape = New RoundRectShape(5), _
	            .InternalElementColor = System.Drawing.Color.LightGreen _
	        }
	        shape2.Position = New Telerik.Windows.Diagrams.Core.Point(180, 10)
	        RadDiagram1.AddShape(shape2)
	
	        '#End Region
	
	        '#Region "SelectedIndex"
	
	        Me.RadDiagram1.SelectedIndex = 1
	        '#End Region
	
	        '#Region "SelectAllCommand"
	        Me.RadDiagram1.DiagramElement.TryExecuteCommand(DiagramCommands.SelectAll, "")
	
	        '#End Region
	
	
	    End Sub
	
	    Public Sub Dummy2()
	        '#Region "ZOrder"
	
	        Dim shape1 As New RadDiagramShape() With { _
	            .ShapeText = "shape1", _
	            .ZIndex = 3, _
	            .ElementShape = New EllipseShape(), _
	            .InternalElementColor = System.Drawing.Color.LightBlue _
	        }
	        shape1.Position = New Telerik.Windows.Diagrams.Core.Point(100, 10)
	        RadDiagram1.AddShape(shape1)
	
	        Dim shape2 As New RadDiagramShape() With { _
	            .ShapeText = "shape2", _
	            .ZIndex = 2, _
	            .ElementShape = New EllipseShape(), _
	            .InternalElementColor = System.Drawing.Color.LightGreen _
	        }
	        shape2.Position = New Telerik.Windows.Diagrams.Core.Point(150, 60)
	        RadDiagram1.AddShape(shape2)
	
	        Dim shape3 As New RadDiagramShape() With { _
	            .ShapeText = "shape3", _
	            .ZIndex = 1, _
	            .ElementShape = New EllipseShape(), _
	            .InternalElementColor = System.Drawing.Color.LightCoral _
	        }
	        shape3.Position = New Telerik.Windows.Diagrams.Core.Point(60, 60)
	        radDiagram1.AddShape(shape3)
	
	        '#End Region
	    End Sub
	
	    Public Sub Dummy3()
	        '#Region "CommandZIndex"
	
	        Dim shape1 As New RadDiagramShape() With { _
	            .ShapeText = "shape1", _
	            .ZIndex = 1, _
	            .ElementShape = New EllipseShape(), _
	            .InternalElementColor = System.Drawing.Color.LightBlue _
	        }
	        shape1.Position = New Telerik.Windows.Diagrams.Core.Point(100, 10)
	        radDiagram1.AddShape(shape1)
	
	        Dim shape2 As New RadDiagramShape() With { _
	            .ShapeText = "shape2", _
	            .ZIndex = 2, _
	            .ElementShape = New EllipseShape(), _
	            .InternalElementColor = System.Drawing.Color.LightGreen _
	        }
	        shape2.Position = New Telerik.Windows.Diagrams.Core.Point(150, 80)
	        RadDiagram1.AddShape(shape2)
	
	        Dim shape3 As New RadDiagramShape() With { _
	            .ShapeText = "shape3", _
	            .ZIndex = 3, _
	            .ElementShape = New EllipseShape(), _
	            .InternalElementColor = System.Drawing.Color.LightCoral _
	        }
	        shape3.Position = New Telerik.Windows.Diagrams.Core.Point(60, 80)
	        RadDiagram1.AddShape(shape3)
	
	        Dim connection1 As New RadDiagramConnection() With { _
	            .Name = "aaaa" _
	        }
	        connection1.Source = shape1
	        connection1.Target = shape2
	        connection1.ZIndex = 2
	        connection1.SourceConnectorPosition = "Right"
	        connection1.TargetConnectorPosition = "Right"
	
	        RadDiagram1.Items.Add(connection1)
	
	        Dim connection2 As New RadDiagramConnection() With { _
	            .Name = "bbbb" _
	        }
	        connection2.Source = shape1
	        connection2.Target = shape3
	        connection2.ZIndex = 1
	        connection2.SourceConnectorPosition = "Left"
	        connection2.TargetConnectorPosition = "Left"
	        radDiagram1.Items.Add(connection2)
	
	        '#End Region
	        
	        '#Region "BringToFront"
	
	        Me.RadDiagram1.SelectedItem = shape1
	        Me.RadDiagram1.DiagramElement.TryExecuteCommand(DiagramCommands.BringToFront, "")
	
	        '#End Region
	
	        '#Region "SendToBack"
	
	        Me.RadDiagram1.SelectedItem = shape3
	        Me.RadDiagram1.DiagramElement.TryExecuteCommand(DiagramCommands.SendToBack, "")
	
	        '#End Region
	    End Sub
	End Class



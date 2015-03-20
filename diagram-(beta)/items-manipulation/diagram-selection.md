---
title: Selection
page_title: Selection
description: Selection
slug: diagram-items-manipulation-selection
tags: selection
published: True
position: 2
---

# Selection



__RadDiagram__ gives you the ability to select __RadDiagramItems__ in code behind,
        interactively or by invoking __RadDiagramCommand__.

The following tutorial will show you how select items, work with different selection modes and set up selection commands and events.

## Selection modes

__RadDiagram__ has four different __Selection Modes__ which determine the way a user performs selection:

* __Single__ - the user can select only one item. This is the default __SelectionMode__'s value.
            

* __None__ - the user cannot select any items.
            

* __Extended__ - the user can select/deselect multiple items using the combinations (Ctrl Key+ Mouse Left Button) 
              or (Ctr + Key A). 
            

* __Multiple__ - the user can select/deselect multiple items using only left button or the combinations
              (Ctrl Key+ Mouse Left Button) and (Ctr + Key A).
            

In order to change the way the Selection Adorner Rectangle behaves, you can use the __RectSelectionMode__ property:

* __Full__ - the user selects item(s) only when the selection rectangle covers it(them) completely.
            

* __Partial__ - the user selects all items that are completely or partially covered by the selection rectangle.
            

## Selection in code behind

In order to select items programmatically, you only need to set their __IsSelected__ property to
        *true*:![diagram-items-manipulation-selection 001](images/diagram-items-manipulation-selection001.png)

#### __[C#] __

{{region IsSelected}}
	
	            RadDiagramShape shape1 = new RadDiagramShape()
	            {
	                ShapeText = "",
	                IsSelected = true,
	                ElementShape = new RoundRectShape(5),
	                InternalElementColor = System.Drawing.Color.LightBlue
	            };
	            shape1.Position = new Telerik.Windows.Diagrams.Core.Point(10, 10);
	            radDiagram1.AddShape(shape1);
	
	            RadDiagramShape shape2 = new RadDiagramShape()
	            {
	                ShapeText = "",
	                ElementShape = new RoundRectShape(5),
	                InternalElementColor = System.Drawing.Color.LightGreen
	            };
	            shape2.Position = new Telerik.Windows.Diagrams.Core.Point(180, 10);
	            radDiagram1.AddShape(shape2);
	            
	{{endregion}}



#### __[VB.NET] __

{{region IsSelected}}
	
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
	            .ElementShape = New RoundRectShape(5), _
	            .InternalElementColor = System.Drawing.Color.LightGreen _
	        }
	        shape2.Position = New Telerik.Windows.Diagrams.Core.Point(180, 10)
	        RadDiagram1.AddShape(shape2)
	
	        '#End Region
	
	        '#Region "ClipboardCommands"
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



When multiple items are selected, they are automatically added in one Selection Adorner: 
        ![diagram-items-manipulation-selection 002](images/diagram-items-manipulation-selection002.png)

#### __[C#] __

{{region MultipleSelection}}
	            
	            RadDiagramShape shape1 = new RadDiagramShape()
	            {
	                ShapeText = "",
	                IsSelected = true,
	                ElementShape = new RoundRectShape(5),
	                InternalElementColor = System.Drawing.Color.LightBlue
	            };
	            shape1.Position = new Telerik.Windows.Diagrams.Core.Point(10, 10);
	            radDiagram1.AddShape(shape1);
	            
	            RadDiagramShape shape2 = new RadDiagramShape()
	            {
	                ShapeText = "",
	                IsSelected = true,
	                ElementShape = new RoundRectShape(5),
	                InternalElementColor = System.Drawing.Color.LightGreen
	            };
	            shape2.Position = new Telerik.Windows.Diagrams.Core.Point(180, 10);
	            radDiagram1.AddShape(shape2);
	            
	{{endregion}}



#### __[VB.NET] __

{{region MultipleSelection}}
	
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



You may also want to use the __SelectedIndex__ or the __SelectedItem__ property
        of the __RadDiagram__:![diagram-items-manipulation-selection 003](images/diagram-items-manipulation-selection003.png)

#### __[C#] __

{{region SelectedIndex}}
	            
	            this.radDiagram1.SelectedIndex = 1;
	            
	{{endregion}}



#### __[VB.NET] __

{{region SelectedIndex}}
	
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



## SelectAll

You are able to select all __RadDiagramItems__ interactively (by Mouse or by pressing Ctrl + A),
          programmatically (via the SelectAll() method), set __IsSelected__ to every Shape and Connection via StyleBindings,
          or with Command. Below is shown how you can use the __SelectAll__ command:
        

#### __[C#] __

{{region SelectAllCommand}}
	            
	            this.radDiagram1.DiagramElement.TryExecuteCommand(DiagramCommands.SelectAll, "");
	
	{{endregion}}



#### __[VB.NET] __

{{region SelectAllCommand}}
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



## Selections events

__RadDiagram__ provides the following selection events:
        

* __SelectionChanged__ - fires when a selection operations has just been performed.
            

* __SelectionBoundsChanged__ - fires when the SelectionRectangle's bounds have just been changed.
            

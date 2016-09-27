---
title: Binding to Custom Objects
page_title: Binding to Custom Objects | RadDiagram
description: RadDiagram offers flexible and interactive diagramming layouts for your rich data-visualization applications.
slug: winforms/diagram/data-binding/binding-to-custom-objects
tags: binding,to,custom,objects
published: True
position: 2
previous_url: diagram-data-binding-binding-to-custom-objects
---

# Binding to Custom Objects


In this article you can check how to data bind __RadDiagram__ by using custom objects.
    

The data source should contain columns/fields that represent the shapes/connections collections. Each of the objects that illustrates the shape/connection should have columns/fields for each of the diagram fields that you want to specify. For example, if you want to pull the width of the shape from the data source, this will require a separate column/field that contains the widths of each shape.
        

Consider the following classes: 

{{source=..\SamplesCS\Diagram\DiagramDataBinding.cs region=CustomObjects}} 
{{source=..\SamplesVB\Diagram\DiagramDataBinding.vb region=CustomObjects}} 

````C#
        
public class Task : INotifyPropertyChanged
{
    private string id;
    private string text;
    private string type;
    private double x;
    private double y;
    private double width;
    private double height;
    
    public string Id
    {
        get
        {
            return this.id;
        }
        set
        {
            this.id = value;
            if (this.id != value)
            {
                this.id = value;
                OnPropertyChanged("Id");
            }
        }
    }
    
    public string Text
    {
        get
        {
            return this.text;
        }
        set
        {
            this.text = value;
            if (this.text != value)
            {
                this.text = value;
                OnPropertyChanged("Text");
            }
        }
    }
    
    public string Type
    {
        get
        {
            return this.type;
        }
        set
        {
            if (this.type != value)
            {
                this.type = value;
                OnPropertyChanged("Type");
            }
        }
    }
    
    public double X
    {
        get
        {
            return this.x;
        }
        set
        {
            if (this.x != value)
            {
                this.x = value;
                OnPropertyChanged("X");
            }
        }
    }
    
    public double Y
    {
        get
        {
            return this.y;
        }
        set
        {
            this.y = value;
            if (this.y != value)
            {
                this.y = value;
                OnPropertyChanged("Y");
            }
        }
    }
    
    public double Height
    {
        get
        {
            return this.height;
        }
        set
        {
            if (this.height != value)
            {
                this.height = value;
                OnPropertyChanged("Height");
            }
        }
    }
    
    public double Width
    {
        get
        {
            return this.width;
        }
        set
        {
            if (this.width != value)
            {
                this.width = value;
                OnPropertyChanged("Width");
            }
        }
    }
    
    private void OnPropertyChanged(string propertyName)
    {
        if (PropertyChanged != null)
            PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
    }
    
    public event PropertyChangedEventHandler PropertyChanged;
}
        
public class Relation : INotifyPropertyChanged
{
    private string sourceTaskId;
    private string sourceConnector;
    private string targetTaskId;
    private string targetConnector;
    private string startCapField;
    private string endCapField;
    public string EndCapField
    {
        get
        {
            return this.endCapField;
        }
        set
        {
            this.endCapField = value;
            if (this.endCapField != value)
            {
                this.endCapField = value;
                OnPropertyChanged("EndCapField");
            }
        }
    }
    public string StartCapField
    {
        get
        {
            return this.startCapField;
        }
        set
        {
            this.startCapField = value;
            if (this.startCapField != value)
            {
                this.startCapField = value;
                OnPropertyChanged("StartCapField");
            }
        }
    }
    public string TargetConnector
    {
        get
        {
            return this.targetConnector;
        }
        set
        {
            this.targetConnector = value;
            if (this.targetConnector != value)
            {
                this.targetConnector = value;
                OnPropertyChanged("TargetConnector");
            }
        }
    }
    public string TargetTaskId
    {
        get
        {
            return this.targetTaskId;
        }
        set
        {
            this.targetTaskId = value;
            if (this.targetTaskId != value)
            {
                this.targetTaskId = value;
                OnPropertyChanged("TargetTaskId");
            }
        }
    }
    public string SourceConnector
    {
        get
        {
            return this.sourceConnector;
        }
        set
        {
            this.sourceConnector = value;
            if (this.sourceConnector != value)
            {
                this.sourceConnector = value;
                OnPropertyChanged("SourceConnector");
            }
        }
    }
    public string SourceTaskId
    {
        get
        {
            return this.sourceTaskId;
        }
        set
        {
            this.sourceTaskId = value;
            if (this.sourceTaskId != value)
            {
                this.sourceTaskId = value;
                OnPropertyChanged("SourceTaskId");
            }
        }
    }
    private void OnPropertyChanged(string propertyName)
    {
        if (PropertyChanged != null)
            PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
    }
    public event PropertyChangedEventHandler PropertyChanged;
}
        
public class Source
{
    public BindingList<Task> Tasks
    {
        get
        {
            return GetTasks();
        }
    }
    
    public BindingList<Relation> Relations
    {
        get
        {
            return GetRelations();
        }
    }
    
    private BindingList<Task> GetTasks()
    {
        return new BindingList<Task>()
        {
            new Task() { Id = "Task1", Text = "Task 1", Type = "circle", X = 100, Y = 300, Width = 50, Height = 50 },
            new Task() { Id = "Task2", Text = "Task 2", Type = "rectangle", X = 200, Y = 100, Width = 100, Height = 100 },
            new Task() { Id = "Task3", Text = "Task 3", Type = "circle", X = 300, Y = 300, Width = 50, Height = 50 },
            new Task() { Id = "Task4", Text = "Task 4", Type = "rectangle", X = 400, Y = 100, Width = 100, Height = 100 },
            new Task() { Id = "Task5", Text = "Task 5", Type = "circle", X = 500, Y = 300, Width = 50, Height = 50 }
        };
    }
    
    private BindingList<Relation> GetRelations()
    {
        return new BindingList<Relation>()
        {
            new Relation()
            {
                SourceTaskId = "Task2", SourceConnector = "Left", TargetTaskId = "Task1",
                TargetConnector = "Auto", StartCapField = "Arrow5Filled", EndCapField = "Arrow1"
            },
            new Relation()
            {
                SourceTaskId = "Task2", SourceConnector = "Auto", TargetTaskId = "Task3",
                TargetConnector = "Auto", StartCapField = "Arrow4Filled", EndCapField = "Arrow1Filled"
            },
            new Relation()
            {
                SourceTaskId = "Task4", SourceConnector = "Auto", TargetTaskId = "Task5",
                TargetConnector = "Auto", StartCapField = "Arrow2Filled", EndCapField = "Arrow2"
            }
        };
    }
}

````
````VB.NET
Public Class Task
Implements INotifyPropertyChanged
    Private m_id As String
    Private m_text As String
    Private m_type As String
    Private m_x As Double
    Private m_y As Double
    Private m_width As Double
    Private m_height As Double
    Public Event PropertyChanged As PropertyChangedEventHandler Implements INotifyPropertyChanged.PropertyChanged
    Public Property Id() As String
        Get
            Return Me.m_id
        End Get
        Set(value As String)
            Me.m_id = value
            If Me.m_id <> value Then
                Me.m_id = value
                OnPropertyChanged("Id")
            End If
        End Set
    End Property
    Public Property Text() As String
        Get
            Return Me.m_text
        End Get
        Set(value As String)
            Me.m_text = value
            If Me.m_text <> value Then
                Me.m_text = value
                OnPropertyChanged("Text")
            End If
        End Set
    End Property
    Public Property Type() As String
        Get
            Return Me.m_type
        End Get
        Set(value As String)
            If Me.m_type <> value Then
                Me.m_type = value
                OnPropertyChanged("Type")
            End If
        End Set
    End Property
    Public Property X() As Double
        Get
            Return Me.m_x
        End Get
        Set(value As Double)
            If Me.m_x <> value Then
                Me.m_x = value
                OnPropertyChanged("X")
            End If
        End Set
    End Property
    Public Property Y() As Double
        Get
            Return Me.m_y
        End Get
        Set(value As Double)
            Me.m_y = value
            If Me.m_y <> value Then
                Me.m_y = value
                OnPropertyChanged("Y")
            End If
        End Set
    End Property
    Public Property Height() As Double
        Get
            Return Me.m_height
        End Get
        Set(value As Double)
            If Me.m_height <> value Then
                Me.m_height = value
                OnPropertyChanged("Height")
            End If
        End Set
    End Property
    Public Property Width() As Double
        Get
            Return Me.m_width
        End Get
        Set(value As Double)
            If Me.m_width <> value Then
                Me.m_width = value
                OnPropertyChanged("Width")
            End If
        End Set
    End Property
    Private Sub OnPropertyChanged(propertyName As String)
        RaiseEvent PropertyChanged(Me, New PropertyChangedEventArgs(propertyName))
    End Sub
End Class
Public Class Relation
Implements INotifyPropertyChanged
    Private m_sourceTaskId As String
    Private m_sourceConnector As String
    Private m_targetTaskId As String
    Private m_targetConnector As String
    Private m_startCapField As String
    Private m_endCapField As String
    Public Event PropertyChanged As PropertyChangedEventHandler Implements INotifyPropertyChanged.PropertyChanged
    Public Property EndCapField() As String
        Get
            Return Me.m_endCapField
        End Get
        Set(value As String)
            Me.m_endCapField = value
            If Me.m_endCapField <> value Then
                Me.m_endCapField = value
                OnPropertyChanged("EndCapField")
            End If
        End Set
    End Property
    Public Property StartCapField() As String
        Get
            Return Me.m_startCapField
        End Get
        Set(value As String)
            Me.m_startCapField = value
            If Me.m_startCapField <> value Then
                Me.m_startCapField = value
                OnPropertyChanged("StartCapField")
            End If
        End Set
    End Property
    Public Property TargetConnector() As String
        Get
            Return Me.m_targetConnector
        End Get
        Set(value As String)
            Me.m_targetConnector = value
            If Me.m_targetConnector <> value Then
                Me.m_targetConnector = value
                OnPropertyChanged("TargetConnector")
            End If
        End Set
    End Property
    Public Property TargetTaskId() As String
        Get
            Return Me.m_targetTaskId
        End Get
        Set(value As String)
            Me.m_targetTaskId = value
            If Me.m_targetTaskId <> value Then
                Me.m_targetTaskId = value
                OnPropertyChanged("TargetTaskId")
            End If
        End Set
    End Property
    Public Property SourceConnector() As String
        Get
            Return Me.m_sourceConnector
        End Get
        Set(value As String)
            Me.m_sourceConnector = value
            If Me.m_sourceConnector <> value Then
                Me.m_sourceConnector = value
                OnPropertyChanged("SourceConnector")
            End If
        End Set
    End Property
    Public Property SourceTaskId() As String
        Get
            Return Me.m_sourceTaskId
        End Get
        Set(value As String)
            Me.m_sourceTaskId = value
            If Me.m_sourceTaskId <> value Then
                Me.m_sourceTaskId = value
                OnPropertyChanged("SourceTaskId")
            End If
        End Set
    End Property
    Private Sub OnPropertyChanged(propertyName As String)
        RaiseEvent PropertyChanged(Me, New PropertyChangedEventArgs(propertyName))
    End Sub
    
End Class
    
Public Class Source
    Public ReadOnly Property Tasks() As BindingList(Of Task)
        Get
            Return GetTasks()
        End Get
    End Property
    Public ReadOnly Property Relations() As BindingList(Of Relation)
        Get
            Return GetRelations()
        End Get
    End Property
    Private Function GetTasks() As BindingList(Of Task)
        Return New BindingList(Of Task)() From { _
            New Task() With { _
                .Id = "Task1", _
                .Text = "Task 1", _
                .Type = "circle", _
                .X = 100, _
                .Y = 300, _
                .Width = 50, _
                .Height = 50 _
            }, _
            New Task() With { _
                .Id = "Task2", _
                .Text = "Task 2", _
                .Type = "rectangle", _
                .X = 200, _
                .Y = 100, _
                .Width = 100, _
                .Height = 100 _
            }, _
            New Task() With { _
                .Id = "Task3", _
                .Text = "Task 3", _
                .Type = "circle", _
                .X = 300, _
                .Y = 300, _
                .Width = 50, _
                .Height = 50 _
            }, _
            New Task() With { _
                .Id = "Task4", _
                .Text = "Task 4", _
                .Type = "rectangle", _
                .X = 400, _
                .Y = 100, _
                .Width = 100, _
                .Height = 100 _
            }, _
            New Task() With { _
                .Id = "Task5", _
                .Text = "Task 5", _
                .Type = "circle", _
                .X = 500, _
                .Y = 300, _
                .Width = 50, _
                .Height = 50 _
        } _
        }
    End Function
    Private Function GetRelations() As BindingList(Of Relation)
        Return New BindingList(Of Relation)() From { _
            New Relation() With { _
                .SourceTaskId = "Task2", _
                .SourceConnector = "Left", _
                .TargetTaskId = "Task1", _
                .TargetConnector = "Auto", _
                .StartCapField = "Arrow5Filled", _
                .EndCapField = "Arrow1" _
            }, _
            New Relation() With { _
                .SourceTaskId = "Task2", _
                .SourceConnector = "Auto", _
                .TargetTaskId = "Task3", _
                .TargetConnector = "Auto", _
                .StartCapField = "Arrow4Filled", _
                .EndCapField = "Arrow1Filled" _
            }, _
            New Relation() With { _
                .SourceTaskId = "Task4", _
                .SourceConnector = "Auto", _
                .TargetTaskId = "Task5", _
                .TargetConnector = "Auto", _
                .StartCapField = "Arrow2Filled", _
                .EndCapField = "Arrow2" _
        } _
        }
    End Function
End Class

````

{{endregion}} 
 
The __Task__ class will represent a single shape in __RadDiagram__, while the __Relation__ class will represent a connection. Note that the __Source__ class contains two properties, __Tasks__ and __Relations__ which will be specified as __ConnectionDataMember__ and __ShapeDataMember__ for __RadDiagram__. To make data binding work, you should specify the member properties as well: 

{{source=..\SamplesCS\Diagram\DiagramDataBinding.cs region=SetupMembers}} 
{{source=..\SamplesVB\Diagram\DiagramDataBinding.vb region=SetupMembers}} 

````C#
            
this.radDiagram1.DataSource = new Source();
            
this.radDiagram1.ConnectionDataMember = "Relations";
this.radDiagram1.ShapeDataMember = "Tasks";
this.radDiagram1.ShapeIdMember = "Id";  
this.radDiagram1.ShapeTextMember = "Text";
this.radDiagram1.ShapeTypeMember = "Type";
this.radDiagram1.ShapeXMember = "X";
this.radDiagram1.ShapeYMember = "Y";
this.radDiagram1.ShapeWidthMember = "Width";
this.radDiagram1.ShapeHeightMember = "Height";
            
this.radDiagram1.ConnectionSourceShapeIdMember = "SourceTaskId";
this.radDiagram1.ConnectionTargetShapeIdMember = "TargetTaskId";
this.radDiagram1.ConnectionSourceCapTypeMember = "StartCapField";
this.radDiagram1.ConnectionTargetCapTypeMember = "EndCapField";
            
this.radDiagram1.ConnectionSourceConnectorMember = "SourceConnector";
this.radDiagram1.ConnectionTargetConnectorMember = "TargetConnector";

````
````VB.NET
Me.radDiagram1.DataSource = New Source()
Me.radDiagram1.ConnectionDataMember = "Relations"
Me.radDiagram1.ShapeDataMember = "Tasks"
Me.radDiagram1.ShapeIdMember = "Id"
Me.radDiagram1.ShapeTextMember = "Text"
Me.radDiagram1.ShapeTypeMember = "Type"
Me.radDiagram1.ShapeXMember = "X"
Me.radDiagram1.ShapeYMember = "Y"
Me.radDiagram1.ShapeWidthMember = "Width"
Me.radDiagram1.ShapeHeightMember = "Height"
Me.radDiagram1.ConnectionSourceShapeIdMember = "SourceTaskId"
Me.radDiagram1.ConnectionTargetShapeIdMember = "TargetTaskId"
Me.radDiagram1.ConnectionSourceCapTypeMember = "StartCapField"
Me.radDiagram1.ConnectionTargetCapTypeMember = "EndCapField"
Me.radDiagram1.ConnectionSourceConnectorMember = "SourceConnector"
Me.radDiagram1.ConnectionTargetConnectorMember = "TargetConnector"

````

{{endregion}} 


![diagram-data-binding-binding-to-custom-objects 001](images/diagram-data-binding-binding-to-custom-objects001.png)

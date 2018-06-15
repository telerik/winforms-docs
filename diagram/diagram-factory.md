---
title: Diagram Factory
page_title: Diagram Factory | RadDiagram
description: DiagramDataLayerElementProvider provides means for creating custom shape/connections while binding.
slug: winforms/diagram/diagram-factory
tags: custom,shapes
published: True
position: 15
---

# Diagram Factory

Since **R2 2018 SP1** **RadDiagram** provides means for changing the default shape/connection elements when binding to an external **DataSource**.

If you need to customize any of the **RadDiagram** shapes/connections you can use the **DiagramDataLayerElementProvider** class. It allows you to replace the default elements with custom ones. This can be achieved by creating a **DiagramDataLayerElementProvider** descendant class and overriding the **CreateShape** and **CreateConnection** methods. Then, set the DiagramElement.DataLayer.ElementFactory property before data binding.

{{source=..\SamplesCS\Diagram\DiagramCustomFactory.cs region=CustomElementProvider}} 
{{source=..\SamplesVB\Diagram\DiagramCustomFactory.vb region=CustomElementProvider}} 

````C#
    
public partial class DiagramCustomFactory : Form
{
    public DiagramCustomFactory()
    {
        InitializeComponent();
        
        this.radDiagram1.DiagramElement.DataLayer.ElementFactory = new CustomDiagramDataLayerElementProvider();
        
        Bind();
        
        foreach (MyCustomShape shape in this.radDiagram1.Shapes)
        {
            Console.WriteLine(shape.CreatedOn);
        }
        
        foreach (MyCustomRadDiagramConnection connection in this.radDiagram1.Connections)
        {
            Console.WriteLine(connection.CreatedOn);
        }
    }
    
    private void Bind()
    {
        DataTable tasksTable = new DataTable("Tasks");
        tasksTable.Columns.Add("Id");
        tasksTable.Columns.Add("Text");
        tasksTable.Columns.Add("Type");
        tasksTable.Columns.Add("X");
        tasksTable.Columns.Add("Y");
        tasksTable.Columns.Add("Width");
        tasksTable.Columns.Add("Height");
        tasksTable.Rows.Add("Task1", "Task 1", "circle", 100, 300, 50, 50);
        tasksTable.Rows.Add("Task2", "Task 2", "rectangle", 200, 100, 100, 100);
        tasksTable.Rows.Add("Task3", "Task 3", "circle", 300, 300, 50, 50);
        tasksTable.Rows.Add("Task4", "Task 4", "rectangle", 400, 100, 100, 100);
        tasksTable.Rows.Add("Task5", "Task 5", "circle", 500, 300, 50, 50);
        
        DataTable relationsTable = new DataTable("Relations");
        relationsTable.Columns.Add("SourceTaskId");
        relationsTable.Columns.Add("SourceConnector");
        relationsTable.Columns.Add("TargetTaskId");
        relationsTable.Columns.Add("TargetConnector");
        relationsTable.Columns.Add("StartCapField");
        relationsTable.Columns.Add("EndCapField");
        relationsTable.Rows.Add("Task2", "Left", "Task1", "Auto", "Arrow5Filled", "Arrow1");
        relationsTable.Rows.Add("Task2", "Auto", "Task3", "Auto", "Arrow4Filled", "Arrow1Filled");
        relationsTable.Rows.Add("Task4", "Auto", "Task5", "Auto", "Arrow2Filled", "Arrow2");
        
        DataSet ds = new DataSet();
        ds.Tables.Add(tasksTable);
        ds.Tables.Add(relationsTable);
        
        this.radDiagram1.DataSource = ds;
        
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
    }
}
    
public class MyCustomShape : RadDiagramShape
{
    public DateTime CreatedOn { get; set; }
    
    public MyCustomShape()
    {
        this.CreatedOn = DateTime.Now;
    }
}
    
public class MyCustomRadDiagramConnection : RadDiagramConnection
{
    public DateTime CreatedOn { get; set; }
    
    public MyCustomRadDiagramConnection()
    {
        this.CreatedOn = DateTime.Now;
    }
}
    
public class CustomDiagramDataLayerElementProvider : DiagramDataLayerElementProvider
{
    public override RadDiagramShape CreateShape()
    {
        return new MyCustomShape();
    }
    
    public override RadDiagramConnection CreateConnection()
    {
        return new MyCustomRadDiagramConnection();
    }
}

````
````VB.NET
Sub New()
    InitializeComponent()
    Me.RadDiagram1.DiagramElement.DataLayer.ElementFactory = New CustomDiagramDataLayerElementProvider()
    Bind()
    For Each shape As MyCustomShape In Me.RadDiagram1.Shapes
        Console.WriteLine(shape.CreatedOn)
    Next
    For Each connection As MyCustomRadDiagramConnection In Me.RadDiagram1.Connections
        Console.WriteLine(connection.CreatedOn)
    Next
End Sub
Private Sub Bind()
    Dim tasksTable As DataTable = New DataTable("Tasks")
    tasksTable.Columns.Add("Id")
    tasksTable.Columns.Add("Text")
    tasksTable.Columns.Add("Type")
    tasksTable.Columns.Add("X")
    tasksTable.Columns.Add("Y")
    tasksTable.Columns.Add("Width")
    tasksTable.Columns.Add("Height")
    tasksTable.Rows.Add("Task1", "Task 1", "circle", 100, 300, 50, 50)
    tasksTable.Rows.Add("Task2", "Task 2", "rectangle", 200, 100, 100, 100)
    tasksTable.Rows.Add("Task3", "Task 3", "circle", 300, 300, 50, 50)
    tasksTable.Rows.Add("Task4", "Task 4", "rectangle", 400, 100, 100, 100)
    tasksTable.Rows.Add("Task5", "Task 5", "circle", 500, 300, 50, 50)
    Dim relationsTable As DataTable = New DataTable("Relations")
    relationsTable.Columns.Add("SourceTaskId")
    relationsTable.Columns.Add("SourceConnector")
    relationsTable.Columns.Add("TargetTaskId")
    relationsTable.Columns.Add("TargetConnector")
    relationsTable.Columns.Add("StartCapField")
    relationsTable.Columns.Add("EndCapField")
    relationsTable.Rows.Add("Task2", "Left", "Task1", "Auto", "Arrow5Filled", "Arrow1")
    relationsTable.Rows.Add("Task2", "Auto", "Task3", "Auto", "Arrow4Filled", "Arrow1Filled")
    relationsTable.Rows.Add("Task4", "Auto", "Task5", "Auto", "Arrow2Filled", "Arrow2")
    Dim ds As DataSet = New DataSet()
    ds.Tables.Add(tasksTable)
    ds.Tables.Add(relationsTable)
    Me.RadDiagram1.DataSource = ds
    Me.RadDiagram1.ConnectionDataMember = "Relations"
    Me.RadDiagram1.ShapeDataMember = "Tasks"
    Me.RadDiagram1.ShapeIdMember = "Id"
    Me.RadDiagram1.ShapeTextMember = "Text"
    Me.RadDiagram1.ShapeTypeMember = "Type"
    Me.RadDiagram1.ShapeXMember = "X"
    Me.RadDiagram1.ShapeYMember = "Y"
    Me.RadDiagram1.ShapeWidthMember = "Width"
    Me.RadDiagram1.ShapeHeightMember = "Height"
    Me.RadDiagram1.ConnectionSourceShapeIdMember = "SourceTaskId"
    Me.RadDiagram1.ConnectionTargetShapeIdMember = "TargetTaskId"
    Me.RadDiagram1.ConnectionSourceCapTypeMember = "StartCapField"
    Me.RadDiagram1.ConnectionTargetCapTypeMember = "EndCapField"
    Me.RadDiagram1.ConnectionSourceConnectorMember = "SourceConnector"
    Me.RadDiagram1.ConnectionTargetConnectorMember = "TargetConnector"
End Sub
Class
ic Class MyCustomShape
rits RadDiagramShape
Public Property CreatedOn As DateTime
Public Sub New()
    Me.CreatedOn = DateTime.Now
End Sub
Class
ic Class MyCustomRadDiagramConnection
rits RadDiagramConnection
Public Property CreatedOn As DateTime
Public Sub New()
    Me.CreatedOn = DateTime.Now
End Sub
Class
ic Class CustomDiagramDataLayerElementProvider
rits DiagramDataLayerElementProvider
Public Overrides Function CreateShape() As RadDiagramShape
    Return New MyCustomShape()
End Function
Public Overrides Function CreateConnection() As RadDiagramConnection
    Return New MyCustomRadDiagramConnection()
End Function
Class

````

{{endregion}} 
 
# See Also

* [Custom shapes]({%slug winforms/diagram/custom-shapes%})
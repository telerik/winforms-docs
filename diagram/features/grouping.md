---
title: Grouping
page_title: Grouping | UI for WinForms Documentation
description: Grouping
slug: winforms/diagram/features/grouping
tags: grouping
published: True
position: 7
---

# Grouping



Grouping in the __RadDiagram__ is a way of organizing shapes and connections in logical groups. Groups are non-visual, logical collections of shapes and/or connections and/or other groups which can be created in code behind or with Commands.
      

## Grouping API

__IGroup__, __IShape__ and __IConnection__ implement the __IGroupable__ interface.
        

__IGroup__ provides a collection of __IGroupable__ Items. This practically means that you can have groups of shapes, connections and other groups. This allows you to have unlimited levels of nested logical groups.
        

The __IGroupable__ interface has two members:
        

* __ParentGroup__- of type IGroup.
            

* __ParentGroupChanged__ event- of type EventHandler.
            

The __IGroup__ has the following members

* __IsSelected__ - of type boolean.
            

* __Items__- IList.
            

* __Name__- string.
            

* __ItemsChanged__- of type NotifyCollectionChangedEventHandler.
            

* __SelectionChanged__- of type EventHandler.
            

The __RadDiagram__ provides the following "grouping" members:
        

* __Group__([string groupName], params IGroupable[] items)) - creates an IGroup from a given Array of IGroupable items.
            

* __Ungroup__(params IGroup[] items)- removes the logical groups previously created.
            

* __Groups__- IEnumerable. The list of root-level Groups created in the RadDiagram.
            

* __GroupsChanged__- of type EventHandler. Fires when grouping or ungrouping is performed. Does not fire when an Item's ParentGroup is changed.
            

* __GroupStyle__- Style that applies to the Selection Rectangle around the logical groups.
            

The __DiagramCommands__ class has __Group__ and __Ungroup__ which are both __RoutedUICommands__. The Group Command groups the selected IGroupable-s and the Ungroup command ungroups the selected IGroups.

## Grouping In Code Behind

In the next example we will create 20 shapes with contents - "1", "2",... "20" and we will group them by their parity.

Let's first create some random shapes: 

{{source=..\SamplesCS\Diagram\DiagramGrouping.cs region=AddShapes}} 
{{source=..\SamplesVB\Diagram\DiagramGrouping.vb region=AddShapes}} 

````C#
            
Random random = new Random();
for (int i = 0; i < 21; i++)
{
    RadDiagramShape s = new RadDiagramShape() { Width = 30, Height = 30, Content = i };
    s.Shape = new Telerik.WinControls.RoundRectShape(5);
    s.BackColor = System.Drawing.Color.CadetBlue;
    s.Position = new Telerik.Windows.Diagrams.Core.Point(random.Next(0, 900), random.Next(0, 200));
    this.radDiagram1.Items.Add(s);
}

````
````VB.NET
Dim random As New Random()
For i As Integer = 0 To 20
    Dim s As New RadDiagramShape() With { _
        .Width = 30, _
        .Height = 30, _
        .Content = i _
    }
    s.Shape = New Telerik.WinControls.RoundRectShape(5)
    s.BackColor = Color.CadetBlue
    s.Position = New Telerik.Windows.Diagrams.Core.Point(random.[Next](0, 900), random.[Next](0, 200))
    Me.RadDiagram1.Items.Add(s)
Next

````

{{endregion}} 
 

Now let's implement some grouping logic: 

{{source=..\SamplesCS\Diagram\DiagramGrouping.cs region=Group}} 
{{source=..\SamplesVB\Diagram\DiagramGrouping.vb region=Group}} 

````C#
            
IShape[] evenShapes = this.radDiagram1.Shapes.Where(x => int.Parse(x.Content.ToString()) % 2 == 0).ToArray<IShape>();
IShape[] oddShapes = this.radDiagram1.Shapes.Where(x => int.Parse(x.Content.ToString()) % 2 == 1).ToArray<IShape>();
this.radDiagram1.Group("Even", evenShapes);
this.radDiagram1.Group("Odd", oddShapes);

````
````VB.NET
Dim evenShapes As IShape() = Me.RadDiagram1.Shapes.Where(Function(x) Integer.Parse(x.Content.ToString()) Mod 2 = 0).ToArray()
Dim oddShapes As IShape() = Me.RadDiagram1.Shapes.Where(Function(x) Integer.Parse(x.Content.ToString()) Mod 2 = 1).ToArray()
Me.RadDiagram1.Group("Even", evenShapes)
Me.RadDiagram1.Group("Odd", oddShapes)

````

{{endregion}} 




Below you can see how the grouping works:
>caption Fig.1 Grouping shapes

![diagram-features-grouping 001](images/diagram-features-grouping001.gif)

>note The shapes' positions are not changed after grouping. If you click shape 3, this selects every odd shape. Dragging a single shape from group, drags the whole group.
>


Now let's play with grouping and upgrouping. Below are some code examples and the result of the code execution: 

{{source=..\SamplesCS\Diagram\DiagramGrouping.cs region=NewGroups}} 
{{source=..\SamplesVB\Diagram\DiagramGrouping.vb region=NewGroups}} 

````C#
            
this.radDiagram1.Group("123", this.radDiagram1.Shapes[1], this.radDiagram1.Shapes[2], this.radDiagram1.Shapes[3]);
this.radDiagram1.Group("345", this.radDiagram1.Shapes[3], this.radDiagram1.Shapes[4], this.radDiagram1.Shapes[5]);

````
````VB.NET
        
Me.RadDiagram1.Group("123", Me.RadDiagram1.Shapes(1), Me.RadDiagram1.Shapes(2), Me.RadDiagram1.Shapes(3))
Me.RadDiagram1.Group("345", Me.RadDiagram1.Shapes(3), Me.RadDiagram1.Shapes(4), Me.RadDiagram1.Shapes(5))

````

{{endregion}} 
 

This makes group "123" with items {Shapes[1],Shapes[2]} and "345" with items {Shapes[3], Shapes[4], Shapes[5]}. The creation of the second group excludes Shapes[3] from group "123".
        

Alternatively if we use one name in the method: 

{{source=..\SamplesCS\Diagram\DiagramGrouping.cs region=ReplaceGroup}} 
{{source=..\SamplesVB\Diagram\DiagramGrouping.vb region=ReplaceGroup}} 

````C#
            
this.radDiagram1.Group("123", this.radDiagram1.Shapes[1], this.radDiagram1.Shapes[2], this.radDiagram1.Shapes[3]);
this.radDiagram1.Group("123", this.radDiagram1.Shapes[3], this.radDiagram1.Shapes[4], this.radDiagram1.Shapes[5]);

````
````VB.NET
Me.RadDiagram1.Group("123", Me.RadDiagram1.Shapes(1), Me.RadDiagram1.Shapes(2), Me.RadDiagram1.Shapes(3))
Me.RadDiagram1.Group("123", Me.RadDiagram1.Shapes(3), Me.RadDiagram1.Shapes(4), Me.RadDiagram1.Shapes(5))

````

{{endregion}} 
 

This produces a single group "123" with the 5 elements Shapes[1]-Shapes[5].

__How To Create SubGroups__

Subgrouping must be done from subgroups to parent groups. In other words, creating a parent group, then creating its subgroup is not possible.

Below is an example of creating a subgroups and a parent group. 

{{source=..\SamplesCS\Diagram\DiagramGrouping.cs region=Subgroups}} 
{{source=..\SamplesVB\Diagram\DiagramGrouping.vb region=Subgroups}} 

````C#
            
IGroup groupA = this.radDiagram1.Group("1-2", this.radDiagram1.Shapes[1], this.radDiagram1.Shapes[2]);
IGroup groupB = this.radDiagram1.Group("3-4", this.radDiagram1.Shapes[3], this.radDiagram1.Shapes[4]);
IGroup parentGroup = this.radDiagram1.Group("1-2-3-4", groupA, groupB);

````
````VB.NET
        
Dim groupA As IGroup = Me.RadDiagram1.Group("1-2", Me.RadDiagram1.Shapes(1), Me.RadDiagram1.Shapes(2))
Dim groupB As IGroup = Me.RadDiagram1.Group("3-4", Me.RadDiagram1.Shapes(3), Me.RadDiagram1.Shapes(4))
Dim parentGroup As IGroup = Me.RadDiagram1.Group("1-2-3-4", groupA, groupB)

````

{{endregion}} 



>caption Fig.2 Sub groups

![diagram-features-grouping 002](images/diagram-features-grouping002.gif)

Below you can see how consecutive clicks on a shape reflects the selection of groups. First click selects the outermost (the biggest group), second click selects the smaller group and the third selects only the shape.The forth click will select the biggest group and so on.
        

>note If you need to select particular items without selecting the whole group, you can use Rectangular Selection.
>


What will happen if we try to create parent group then create subgroups? 

{{source=..\SamplesCS\Diagram\DiagramGrouping.cs region=ParentToSubgroups}} 
{{source=..\SamplesVB\Diagram\DiagramGrouping.vb region=ParentToSubgroups}} 

````C#
            
this.radDiagram1.Group("1-2-3-4", this.radDiagram1.Shapes[1], this.radDiagram1.Shapes[2], this.radDiagram1.Shapes[3], this.radDiagram1.Shapes[4]);
this.radDiagram1.Group("1-2", this.radDiagram1.Shapes[1], this.radDiagram1.Shapes[2]);

````
````VB.NET
Me.RadDiagram1.Group("1-2-3-4", Me.RadDiagram1.Shapes(1), Me.RadDiagram1.Shapes(2), Me.RadDiagram1.Shapes(3), Me.RadDiagram1.Shapes(4))
Me.RadDiagram1.Group("1-2", Me.RadDiagram1.Shapes(1), Me.RadDiagram1.Shapes(2))

````

{{endregion}} 
 
This will create two separate groups - "1-2-3-4" with items {Shapes[3], Shapes[4]} and "1-2" with items {Shapes[1], Shapes[2]}.

>note Creating a parent group then creating its subgroup is not possible.
>


__Ungrouping__

You can Ungroup one or several groups with the __Ungroup__ method of __RadDiagram__: 

{{source=..\SamplesCS\Diagram\DiagramGrouping.cs region=Ungroup}} 
{{source=..\SamplesVB\Diagram\DiagramGrouping.vb region=Ungroup}} 

````C#
            
this.radDiagram1.Ungroup(groupA, groupB);
this.radDiagram1.Ungroup(this.radDiagram1.Groups.ToArray());

````
````VB.NET
Me.RadDiagram1.Ungroup(groupA, groupB)
Me.RadDiagram1.Ungroup(Me.RadDiagram1.Groups.ToArray())

````

{{endregion}} 
 

## Grouping With Commands

Using the DiagramCommands __Group__ and __Ungroup__ is straightforward. __Group__ applies to the selected __IGroupables__ and __Ungroup__ applies to the selected __IGroups__. 

{{source=..\SamplesCS\Diagram\DiagramGrouping.cs region=CommandsGrouping}} 
{{source=..\SamplesVB\Diagram\DiagramGrouping.vb region=CommandsGrouping}} 

````C#
this.radDiagram1.DiagramElement.ServiceLocator.GetService<ISelectionService<IDiagramItem>>().SelectItem(this.radDiagram1.Shapes[1],true);
this.radDiagram1.DiagramElement.ServiceLocator.GetService<ISelectionService<IDiagramItem>>().SelectItem(this.radDiagram1.Shapes[5],true);
this.radDiagram1.DiagramElement.TryExecuteCommand(Telerik.WinControls.UI.Diagrams.DiagramCommands.Group);

````
````VB.NET
Me.RadDiagram1.DiagramElement.ServiceLocator.GetService(Of ISelectionService(Of IDiagramItem))().SelectItem(Me.RadDiagram1.Shapes(1), True)
Me.RadDiagram1.DiagramElement.ServiceLocator.GetService(Of ISelectionService(Of IDiagramItem))().SelectItem(Me.RadDiagram1.Shapes(5), True)
Me.RadDiagram1.DiagramElement.TryExecuteCommand(Telerik.WinControls.UI.Diagrams.DiagramCommands.Group)

````

{{endregion}} 




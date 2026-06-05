---
title: Grouping
page_title: Grouping - RadDiagram
description: RadDiagram offers flexible and interactive diagramming layouts for your rich data-visualization applications.
slug: winforms/diagram/features/grouping
tags: grouping
published: True
position: 7
previous_url: diagram-features-grouping
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

<snippet id='diagram-grouping-addshapes-cs'/>
<snippet id='diagram-grouping-addshapes-vb'/>

 
 

Now let's implement some grouping logic: 

<snippet id='diagram-grouping-group-cs'/>
<snippet id='diagram-grouping-group-vb'/>

 




Below you can see how the grouping works:
>caption Figure 1: Grouping shapes

![WinForms RadDiagram Grouping shapes](images/diagram-features-grouping001.gif)

>note The shapes' positions are not changed after grouping. If you click shape 3, this selects every odd shape. Dragging a single shape from group, drags the whole group.
>


Now let's play with grouping and upgrouping. Below are some code examples and the result of the code execution: 

<snippet id='diagram-grouping-newgroups-cs'/>
<snippet id='diagram-grouping-newgroups-vb'/>

 
 

This makes group "123" with items {Shapes[1],Shapes[2]} and "345" with items {Shapes[3], Shapes[4], Shapes[5]}. The creation of the second group excludes Shapes[3] from group "123".
        

Alternatively if we use one name in the method: 

<snippet id='diagram-grouping-replacegroup-cs'/>
<snippet id='diagram-grouping-replacegroup-vb'/>

 
 

This produces a single group "123" with the 5 elements Shapes[1]-Shapes[5].

__How To Create SubGroups__

Subgrouping must be done from subgroups to parent groups. In other words, creating a parent group, then creating its subgroup is not possible.

Below is an example of creating a subgroups and a parent group. 

<snippet id='diagram-grouping-subgroups-cs'/>
<snippet id='diagram-grouping-subgroups-vb'/>

 



>caption Figure 2: Sub groups

![WinForms RadDiagram Sub groups](images/diagram-features-grouping002.gif)

Below you can see how consecutive clicks on a shape reflects the selection of groups. First click selects the outermost (the biggest group), second click selects the smaller group and the third selects only the shape.The forth click will select the biggest group and so on.
        

>note If you need to select particular items without selecting the whole group, you can use Rectangular Selection.
>


What will happen if we try to create parent group then create subgroups? 

<snippet id='diagram-grouping-parenttosubgroups-cs'/>
<snippet id='diagram-grouping-parenttosubgroups-vb'/>

 
 
This will create two separate groups - "1-2-3-4" with items {Shapes[3], Shapes[4]} and "1-2" with items {Shapes[1], Shapes[2]}.

>note Creating a parent group then creating its subgroup is not possible.
>


__Ungrouping__

You can Ungroup one or several groups with the __Ungroup__ method of __RadDiagram__: 

<snippet id='diagram-grouping-ungroup-cs'/>
<snippet id='diagram-grouping-ungroup-vb'/>

 
 

## Grouping With Commands

Using the DiagramCommands __Group__ and __Ungroup__ is straightforward. __Group__ applies to the selected __IGroupables__ and __Ungroup__ applies to the selected __IGroups__. 

<snippet id='diagram-grouping-commandsgrouping-cs'/>
<snippet id='diagram-grouping-commandsgrouping-vb'/>

 




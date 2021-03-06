---
title: Events
page_title: Events - WinForms TreeView Control
description: WinForms TreeView provides a large set of events which allows you to respond to node interactions. 
slug: winforms/treeview/working-with-nodes/events
tags: events
published: True
position: 7
previous_url: treeview-working-with-nodes-events
---

# Events

__RadTreeView__ provides a large set of events which allows you to respond to node interactions. 

* __NodeAdded/NodeAdding__ - the events occur before and after node is added.

* __NodeRemoved/NodeRemoving__- the events occur before and after node is removed.

* __NodeExpandedChanged/NodeExpandedChanging__ - the events occur before and after node is expanded or collapsed.

* __NodeMouseClick/NodeMouseDoubleClick__ - the events occur when a node is clicked or double clicked. 

>note Since __R3 2020__ the __NodeMouseClick/NodeMouseDoubleClick__  events offer one additional parameter which allows access the original MouseEventArgs. It is neccessary to cast the event arguments to __RadTreeViewMouseEventArgs__.

{{source=..\SamplesCS\TreeView\WorkingWithNodes\WorkingWithNodes1.cs region=NodeMouseClick}} 
{{source=..\SamplesVB\TreeView\WorkingWithNodes\WorkingWithNodes1.vb region=NodeMouseClick}} 

````C#
private void RadTreeView1_NodeMouseClick(object sender, RadTreeViewEventArgs e)
{
    RadTreeViewMouseEventArgs args = e as RadTreeViewMouseEventArgs;
    if (args.OriginalEventArgs.Button == MouseButtons.Right)
    {
        //TO DO
    }
}

````
````VB.NET
Private Sub RadTreeView1_NodeMouseClick(ByVal sender As Object, ByVal e As RadTreeViewEventArgs)
    Dim args As RadTreeViewMouseEventArgs = TryCast(e, RadTreeViewMouseEventArgs)

    If args.OriginalEventArgs.Button = MouseButtons.Right Then
    ' TO DO
    End If
End Sub

````

The above events are using __RadTreeViewEventArgs__ and __RadTreeViewCancelEventArgs__ objects to provide you with useful information inside the events. The main difference is that you can cancel the interaction in the second case. These objects are exposing the following information:
        

| Parameter | Description |
| ------ | ------ |
| __Action__ |Indicates how the node was changed. Can have the following values: ByKeyboard; ByMouse; Unknown.|
| __Node__ |The node that has been changed.|
| __TreeElement__ |Gives the main TreeView element the node belongs to.|
| __TreeView__ |Returns the TreeView control that holds the current node.|
| __Cancel__ |Allows you to cancel the change.(Only available in the RadTreeViewCancelEventArgs object)|

# See Also
* [Adding and Removing Nodes]({%slug winforms/treeview/working-with-nodes/adding-and-removing-nodes%})

* [Bring a Node into View]({%slug winforms/treeview/working-with-nodes/bring-a-node-into-view%})

* [Custom Filtering]({%slug winforms/treeview/working-with-nodes/custom-filtering%})

* [Custom Nodes]({%slug winforms/treeview/working-with-nodes/custom-nodes%})

* [Custom Sorting]({%slug winforms/treeview/working-with-nodes/custom-sorting%})

* [Filtering Nodes]({%slug winforms/treeview/working-with-nodes/filtering-nodes%})


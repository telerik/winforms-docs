---
title: Events
page_title: Events | UI for WinForms Documentation
description: Events
slug: winforms/treeview/working-with-nodes/events
tags: events
published: True
position: 6
previous_url: treeview-working-with-nodes-events
---

# Events

__RadTreeView__ provides a large set of events which allows you to respond to node interactions. 

* NodeAdded/NodeAdding - the events occur before and after node is added.

* NodeRemoved/NodeRemoving- the events occur before and after node is removed.

* NodeMouseClick/NodeMouseDoubleClick - the events occur when a node is clicked or double clicked.

* NodeExpandedChanged/NodeExpandedChanging - the events occur before and after node is expanded or collapsed.

The above events are using __RadTreeViewEventArgs__ and __RadTreeViewCancelEventArgs__ objects to provide you with useful information inside the events. The main difference is that you can cancel the interaction in the second case. These objects are exposing the following information:
        


| Parameter | Description |
| ------ | ------ |
| __Action__ |Indicates how the node was changed. Can have the following values: ByKeyboard; ByMouse; Unknown.|
| __Node__ |The node that has been changed.|
| __TreeElement__ |Gives the main TreeView element the node belongs to.|
| __TreeView__ |Returns the TreeView control that holds the current node.|
| __Cancel__ |Allows you to cancel the change.(Only available in the RadTreeViewCancelEventArgs object)|

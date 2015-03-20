---
title: Events
page_title: Events
description: Events
slug: treeview-working-with-nodes-events
tags: events
published: True
position: 6
---

# Events



## 

__RadTreeView__ provides a large set of events which allows you to respond to node interactions. 

* NodeAdded/NodeAdding - the events occur before and after node is added.

* NodeRemoved/NodeRemoving- the events occur before and after node is removed.

* NodeMouseClick/NodeMouseDoubleClick - the events occur when a node is clicked or double clicked.

* NodeExpandedChanged/NodeExpandedChanging - the events occur before and after node is expanded or collapsed.

The above events are using __RadTreeViewEventArgs__ and __RadTreeViewCancelEventArgs__ objects to provide you with useful information inside the events.
          The main difference is that you can cancel the interaction in the second case. These objects are exposing the following information:
        
<table><th><tr><td>

Parameter</td><td>

Description</td></tr></th><tr><td>

<b>Action</b></td><td>

Indicates how the node was changed. Can have the following values: ByKeyboard; ByMouse; Unknown.
              </td></tr><tr><td>

<b>Node</b></td><td>

The node that has been changed.
              </td></tr><tr><td>

<b>TreeElement</b></td><td>

Gives the main TreeView element the node belongs to.
              </td></tr><tr><td>

<b>TreeView</b></td><td>

Returns the TreeView control that holds the current node.
              </td></tr><tr><td>

<b>Cancel</b></td><td>

Allows you to cancel the change.(Only available in the RadTreeViewCancelEventArgs object)
              </td></tr></table>

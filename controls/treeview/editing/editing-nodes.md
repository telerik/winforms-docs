---
title: Editing Nodes
page_title: Editing Nodes | RadTreeView
description: This article describes how one can edit the text or value of the nodes in RadTreeView.
slug: winforms/treeview/editing/editing-nodes
tags: editing,nodes
published: True
position: 0
previous_url: treeview-editing-editing-nodes
---

# Editing Nodes

By default __RadTreeView__ does not allow node editing. If the __AllowEditing__ property is set to true, the user may select a node and press F2 to initiate editing. By default a text editor is invoked and allows the editing of the node label. When the edit process ends the entered value is assigned to the node __Text__ property, or the field specified by the __ValueMember__ property. If the user cancels editing by pressing __Escape__ the value is not persisted. Editing can also be initiated and canceled programmatically.

* Use the __BeginEdit()__ method to initiate editing on the selected node

* Use the __EndEdit()__ method to conclude editing. EndEdit() takes a single boolean parameter "cancelEdit", if this parameter is set to true the changes are not persisted. 

The sample code below shows how to start editing using the API:

{{source=..\SamplesCS\TreeView\WorkingWithNodes\WorkingWithNodes1.cs region=editing}} 
{{source=..\SamplesVB\TreeView\WorkingWithNodes\WorkingWithNodes1.vb region=editing}} 

````C#
radTreeView1.AllowEdit = true;
// set the SelectedNode - this node will be edited  
radTreeView1.SelectedNode = radTreeView1.Nodes[0];
// this will start edit on selected node
radTreeView1.BeginEdit();

````
````VB.NET
RadTreeView1.AllowEdit = True
' set the SelectedNode - this node will be edited  
RadTreeView1.SelectedNode = RadTreeView1.Nodes(0)
' this will start edit on selected node
RadTreeView1.BeginEdit()

````

{{endregion}} 

## The Editing Lifecycle

1\. __A node enters edit mode__

* A node that is being displayed by the __RadTreeView__ control is selected and the user presses the F2 key to bring the node into edit mode.

* The RadTreeView control calls the __BeginEdit()__ method and a new editor instance is initialized. It is available publicly through the __ActiveEditor__ property and is associated with the node that is about to be edited.

* The editor fires its __Editing__ event, which in turn triggers the firing of the RadTreeView __Editing__ event. If either event is canceled, no further action takes place.

* A text box based editor appears for input. 

2\. __A node is brought out of edit mode__

- The editor determines if it wants to handle the keystroke.

- The editor instance performs the action it has defined for the Enter key. Typically this indicates that edit mode should be exited and any changes made during the edit session should be applied.

- In response to the action described in the previous step the __EndEdit()__ method is called and the __ValueChanged__ event is fired.

- The RadTreeView fires the __ValueValidating__ event which allows the user to hook up custom logic for verification. If the __ValueValidating__ event does not succeed (e.Cancel is true), __ValidationError__ event is fired to notify all listeners that the validation has failed.

- The RadTreeView control sets the node __Text__ property to the string representation of the editor __Value__ property.

## EditMode

By default, when __RadTreeView__ is in unbound mode, modifying the __Text__ or the __Value__ of a node will automatically update the other one. This behavior can be controlled via the __EditMode__ property of the __TreeViewElement__.

The property has the following values:

* __Value:__ When the user performs edit, the Value will be edited.

* __Text:__ When the user performs edit, the Text will be edited.

* __TextAndValue:__ When the user performs edit, both the Text and the Value will be changed.

>note When __EditMode__ is set to __TextAndValue__ , editing either of the properties programmatically will result in changing both of them.
>


# See Also
* [Custom Editors]({%slug winforms/treeview/editing/custom-editors%})


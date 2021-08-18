---
title: Text and Value
page_title: Text and Value - WinForms TreeView Control
description: Text and Value store different information in bound and unbound mode for RadTreeView.
slug: treenode-text-value
tags: treeview, nodes, text, value
published: True
position: 0 
---

# Text and Value for RadTreeNode

**RadTreeNode** offers **Text** and **Value** properties which can store different information when **RadTreeView** is used in [unbound]({%slug winforms/treeview/data-binding/unbound-mode%}) and bound mode.

### Specifying Text and Value in unbound mode

It is possible to set directly the values to the **Text** and **Value** properties. Then the TreeViewElement.**EditMode** property indicates whether the **Text** or the **Value** to be updated during the edit operation.

By default, when **RadTreeView** is in unbound mode, modifying the **Text** or the **Value** of a node will automatically update the other one. This behavior can be controlled via the **EditMode** property of the **TreeViewElement**.

The property has the following values:

* **Value**: When the user performs edit, the Value will be edited.

* **Text**: When the user performs edit, the Text will be edited.

* **TextAndValue**: When the user performs edit, both the Text and the Value will be changed.


{{source=..\SamplesCS\TreeView\WorkingWithNodes\WorkingWithNodes1.cs region=UnboundTextValue}} 
{{source=..\SamplesVB\TreeView\WorkingWithNodes\WorkingWithNodes1.vb region=UnboundTextValue}} 

````C#

RadTreeNode node = new RadTreeNode();
node.Text = "Text";
node.Value = "Value";
this.radTreeView1.Nodes.Add(node);

this.radTreeView1.AllowEdit = true;
this.radTreeView1.TreeViewElement.EditMode = TreeNodeEditMode.Value;


````
````VB.NET
Dim node As RadTreeNode = New RadTreeNode()
node.Text = "Text"
node.Value = "Value"
Me.RadTreeView1.Nodes.Add(node)
Me.RadTreeView1.AllowEdit = True
Me.RadTreeView1.TreeViewElement.EditMode = TreeNodeEditMode.Value


````

{{endregion}} 

### Specifying Text and Value in bound mode

When **RadTreeView** is used in bound mode, along with the **DataSource** property, two other properties are specified:

* **DisplayMember** - controls the **Text** that will be displayed in the nodes.
* **ValueMember** - controls the **Value** that will be stored in the nodes.

No matter bound or unbound mode is used, RadTreeNode offers **Tag** property. It is useful for storing any information.


# See Also
* [Bring a Node into View]({%slug winforms/treeview/working-with-nodes/bring-a-node-into-view%})

* [Custom Filtering]({%slug winforms/treeview/working-with-nodes/custom-filtering%})

* [Custom Nodes]({%slug winforms/treeview/working-with-nodes/custom-nodes%})

* [Custom Sorting]({%slug winforms/treeview/working-with-nodes/custom-sorting%})

* [Events]({%slug winforms/treeview/working-with-nodes/events%})

* [Filtering Nodes]({%slug winforms/treeview/working-with-nodes/filtering-nodes%})


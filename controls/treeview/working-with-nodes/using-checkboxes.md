---
title: Using Checkboxes
page_title: Using Checkboxes - RadTreeView
description: RadTreeView can display CheckBox in each node. This article shows how you enable this functionality.
slug: winforms/treeview/working-with-nodes/using-checkboxes
tags: using,checkboxes
published: True
position: 6
previous_url: treeview-working-with-nodes-using-checkboxes
---

# Using Checkboxes

Enable the check boxes by setting the __CheckBoxes__ property to *true*. By default all nodes display check boxes when the __CheckBoxes__ property is *true*. To suppress showing a checkbox next to a particular RadTreeNode set the node __CheckType__ property to *None*. To check a node programmatically, use the __Checked__ or __CheckState__ properties of RadTreeNode. When the user clicks a checkbox the __NodeCheckChanged__ event fires passing a RadTreeViewEventArgs object that contains the checked Node.

## Tri-State CheckBoxes

Tri-state check boxes in addition to checked and unchecked states also have a "indeterminate" state. To enable this feature set the __TriStateMode__ property to *true*. The screen shot below shows that "Node1" is in __Indeterminate__ state to indicate that its children are not all checked.

![WinForms RadTreeView Tri-State CheckBoxes](images/treeview-working-with-nodes-using-checkboxes001.png)

>note When __TriStateMode__ is set to true, the __CheckBoxes__ property is also set to true automatically.
>


To programmatically set the state when __TriStateMode__ is true assign the __CheckState__ property one of the __ToggleState__ enumeration values.

![WinForms RadTreeView ToggleState](images/treeview-working-with-nodes-using-checkboxes002.png)

## Option Tree Support

__RadTreeView__ the supports option trees that allows radio buttons and check boxes to be mixed in order to form an arbitrary complex option tree. The only limitation is that all sibling nodes must have either check boxes or radio buttons. Check boxes and radio buttons can be mixed in a single __RadTreeNodeCollection__. The __RadTreeNode__ property that control the type of option element to be shown (check box or radio button) is __CheckType:__

![WinForms RadTreeView Option Tree Support](images/treeview-working-with-nodes-using-checkboxes003.png)

<snippet id='treeview-workingwithnodes1-optionlist-cs' />
<snippet id='treeview-workingwithnodes1-optionlist-vb' />



# See Also
* [Adding and Removing Nodes]({%slug winforms/treeview/working-with-nodes/adding-and-removing-nodes%})

* [Bring a Node into View]({%slug winforms/treeview/working-with-nodes/bring-a-node-into-view%})

* [Custom Filtering]({%slug winforms/treeview/working-with-nodes/custom-filtering%})

* [Custom Nodes]({%slug winforms/treeview/working-with-nodes/custom-nodes%})

* [Custom Sorting]({%slug winforms/treeview/working-with-nodes/custom-sorting%})

* [Events]({%slug winforms/treeview/working-with-nodes/events%})


---
title: Property Builder
page_title: Property Builder | RadTreeView
description: This article shows how one can use the Property Builder to crete the hierarchy at design time.
slug: winforms/treeview/design-time/property-builder
tags: property,builder
published: True
position: 1
previous_url: treeview-design-time-property-builder
---

# Property Builder

To quickly create and arrange node structure and appearance invoke the `Property Builder` from the context menu or the [Smart Tag]({%slug winforms/treeview/design-time/smart-tag%}).

>caption Figure 1: TreeView PropertyBuilder

![treeview-design-time-property-builder 001](images/treeview-design-time-property-builder001.png)

## Node Properties Tab

>caption Figure 2: Node Properties
![treeview-design-time-property-builder 003](images/treeview-design-time-property-builder003.png)

By default you will see an empty tree view where the command buttons allow you to add and arrange nodes. The buttons perform the following actions (in order from left to right): 

- Add a new root node.

- Add a child node.

- Delete the selected node.

- Make the selected child node a sibling of its parent.

- Make the selected node a child of the previous node in the list.

- Move the selected node up in the list.

- Move the selected node down in the list.

### Settings Pane

The __Settings__ pane contains the most commonly used properties for each node (Text, Name, Font, ForeColor and others). 

>caption Figure 3: The Settings tab

![treeview-design-time-property-builder 001](images/treeview-design-time-property-builder001.png)

The __Advanced__ tab contains more properties for each node:

>caption Figure 4: The Advanced tab

![treeview-design-time-property-builder 004](images/treeview-design-time-property-builder004.png)

The *Advanced* tab allows you to set various properties for each node (BackColor, ForeColor, Height).

## RadTreeView Properties Tab

This tab on the right side of the dialog allows you to quickly edit significant properties. 

The available items are:

* __Line Style:__ Controls the style of the line that connects the nodes. The possible values are: Dot, Dash, Solid, DotDash, and DotDashDot. You can set the color of the line by using the __ColorSelector__ button.

* __Item Height:__ Controls the height of all items.

* __Tree Indent:__ Controls the step between the parent and child nodes.

* __TreeView Features:__ Lets enable *Drag & Drop*, *Checkboxes*, *TriState Checkboxes* editing and others.

* __Save tree to XML__ allows you to save the already configured tree into an XML file.

* __Load tree from XML__ allows you to load tree nodes from an XML file.

>caption Figure 5. The RadTreeViewProperties

![treeview-design-time-property-builder 002](images/treeview-design-time-property-builder002.png)
 

### The Advanced tab

>caption Figure 6. The RadTreeViewProperties

![treeview-design-time-property-builder 006](images/treeview-design-time-property-builder006.png)

The *Advanced* tab displays all the properties of the RadTreeView as you would see them in the `Properties` window. The Advanced tab provides the best control over the RadTreeView characteristics but it may take longer to find the relevant properties.

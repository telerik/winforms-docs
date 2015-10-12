---
title: Property Builder
page_title: Property Builder | UI for WinForms Documentation
description: Property Builder
slug: winforms/treeview/design-time/property-builder
tags: property,builder
published: True
position: 1
---

# Property Builder

To quickly create and arrange node structure and appearance invoke the RadTreeView Property Builder from the context menu or the [Smart Tag]({%slug winforms/treeview/design-time/smart-tag%}).

![treeview-design-time-property-builder 001](images/treeview-design-time-property-builder001.png)

__Node Commands__: The left panel of the dialog contains a button bar with commands to add, delete and arrange nodes. In order from left to right: 

* Add a new root node.

* Add a child node.

* Delete the selected node.

* Make the selected child node a sibling of its parent.

* Make the selected node a child of the previous node in the list.

* Move the selected node up in the list.

* Move the selected node down in the list.

__Preview__: This area shows how the RadTreeView will look and act at run time. This includes styled behaviors such as mouse over effects. 

__Structure tab__: The Structure tab on the right side of the dialog allows you to quickly edit significant properties. The properties correspond to the currently selected node or RadTreeView in the Preview area. 

The basic properties for RadTreeView are: 

* __Item Height__ in pixels.

* __Tree Indentation__ in pixels

* __Context Menu__ can be associated with the RadTreeView as a whole. Any RadDropDownMenu components on the form will be displayed in the drop down list for selection. 

* __TreeView Features__ lets you allow Drag & Drop, Load on Demand, Checkboxes, TriState Checkboxes and Label Editing.

* __Save tree to XML__ allows you to save the already configured tree into an XML file.
              

* __Load tree from XML__ allows you to load tree nodes from an XML file.

![treeview-design-time-property-builder 002](images/treeview-design-time-property-builder002.png)

The basic properties for each of the selected nodes in the preview are:

* __Text__ for the node.

* __Font__ that the node will be displayed in. Use the __Select Font__ button to set the font, font style, size, font effects and font script.

* __Context Menu__ can be associated with each node in the RadTreeView. Any RadDropDownMenu controls on the form will be displayed in the drop down list for selection.

* __Image Index__ or __Image Key__ are used to select images from a  standard Windows forms ImageList component. To use these properties add a ImageList component from the "All Windows Forms" area of the Toolbox and add to the Images collection.

__Appearance tab__: This tab lets you set the visual style of the RadTreeView as a whole. The tab lets you choose the __Theme__. You can select the __Show Lines__ checkbox to display the lines that connect the nodes and set the line style and color.

__Expert Mode / Basic Mode__: Expert mode displays all the properties of the RadTreeView or nodes as you would see them in the Properties window. The Expert mode provides the best control over the RadTreeView characteristics but it may take longer to find the relevant properties.

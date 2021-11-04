---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - WinForms TreeView Control
description: This article list the most commonly used methods, properties and events of RadTreeView.
slug: winforms/treeview/properties-methods-events
tags: treeview,properties,methods,events
published: True
position: 5
---

# Properties

|__Properties__|__Description__|
|---|---|
|__EnableKineticScrolling__|Gets or sets a value indicating whether the kinetic scrolling function is enabled.|
|__LazyMode__|Gets or sets a value indicating whether the TreeView load child Nodes collection in NodesNeeded event only when Parent nodes expanded.|
|__DropHintColor__|Gets or sets the color of the drop hint.|
|__ShowDropHint__| Gets or sets a value indicating whether the drop hint should be visible.|
|__ShowDragHint__|Gets or sets a value indicating whether the drag hint should be visible.|
|__RelationBindings__|Contains data binding settings for related data.|
|__ExpandAnimation__|Gets or sets the type of expand animation.|
|__PlusMinusAnimationStep__|Gets or sets the animation step for expand/collapse animation.|
|__AllowPlusMinusAnimation__|Gets or sets a value indicating whether animation of collapse/expand images is enabled.|
|__ImageIndex__|The default image index for nodes.|
|__ImageKey__|The default image key for nodes.|
|__TriStateMode__|Gets or sets a value indicating whether the check boxes will have three states.|
|__ToggleMode__|Gets or sets the toggle mode.|
|__DragDropService__|Gets or sets the drag drop service used when dragging nodes within RadTreeView or between different instances of RadTreeView.|
|__LastNode__|Gets the last node.|
|__AllowDragDrop__| Gets or sets a value indicating whether built in drag drop functionality is enabled.|
|__MultiSelect__|Gets or set a value indicating whether the multi selection is enabled.|
|__ShowExpandCollapse__|Gets or sets a value indicating whether the expander is visible.|
|__SelectedNodes__|Gets the selected nodes.|
|__CheckedNodes__|Gets the checked nodes.|
|__CheckBoxes__|Gets or sets a value indicating whether the check boxes are visible.|
|__HideSelection__|Gets or sets a value indicating whether the selection is enabled.|
|__HotTracking__|Gets or sets a value indicating whether hot tracking is enabled.|
|__ItemHeight__|Gets or sets the height of the item.|
|__ActiveEditor__|Gets the active editor.|
|__AllowEdit__|Gets or sets a value indicating whether editing nodes is allowed.|
|__EditMode__|Gets or sets the default RadTreeNode edit mode.|
|__AllowAdd__|Gets or sets a value indicating whether one ca add nodes form the context menu.|
|__AllowRemove__|Gets or sets a value indicating whether one ca add nodes form the context menu.|
|__SelectedNode__|Gets or sets the selected node.|
|__ShowLines__|Gets or sets a value indicating whether the lines that connect the nodes are visible.|
|__ShowRootLines__|Gets or sets a value indicating whether the root lines are visible.|
|__TopNode__|Gets the first visible tree node in the tree view.|
|__LineColor__|Gets or sets the color of the lines connecting the nodes in the tree view.|
|__LineStyle__|Gets or sets the line style.|
|__LineWidth__|Gets or sets a value determining the width of the link lines.|
|__VisibleCount__| Gets the number of tree nodes that are visible in the tree view.|
|__Nodes__|Gets the nodes collection.|
|__TreeIndent__|Gets or sets the indent of nodes, applied to each tree level|
|__Filter__|Gets or sets the filter string.|
|__SortOrder__|Gets or sets the sort order of Nodes.|
|__ExpandImage__| Gets or sets the expand image.|
|__CollapseImage__|Gets or sets the expand image.|
|__AllowArbitraryItemHeight__|Gets or sets a value indicating whether nodes can have different height.|
|__FullRowSelect__|Gets or sets a value indicating whether to select the full row.|
|__NodeSpacing__|Gets or sets the vertical spacing among nodes.|
|__AlternatingRowColor__|Gets or sets the alternating row color.|
|__AllowAlternatingRowColor__| Gets or sets a value indicating whether to show rows with alternating row colors.|
|__FirstVisibleIndex__|Gets the index of the first visible node.|
|__KeyboardSearchEnabled__| Gets or sets a value that determines whether the user can navigate to an item by typing when RadTreeViewElement is focused.|
|__KeyboardSearchResetInterval__|Gets or sets a value that specifies how long the user must wait before searching with the keyboard is reset.|

# Methods

|Method|Description|
|---|---|
|__GetNodeByName__|Gets a node with the specified name.|
|__BeginEdit__|Puts the current node in edit mode.|
|__EndEdit__|Commits any changes and ends the edit operation on the current node.|
|__CancelEdit__|Close the currently active editor and discard changes.|
|__CollapseAll__|Collapses all nodes.|
|__ExpandAll__|Expands all nodes.|
|__GetNodes__|Gets an enumerator which enumerates all nodes in the tree.|
|__Find(string Text)__|Find a node with specified text.|
|__EnsureVisible(RadTreeNode node)__|Ensures that the specified tree node is visible within the tree view element, scrolling the contents of the element if necessary.|
|__ClearSelection__|Clears the selected nodes.|
|__SelectAll__|Selects all nodes.|

# Events

|Event|Description|
|---|---|
|__SelectedNodeChanging__|Occurs before a tree node is selected.|
|__SelectedNodeChanged__|Occurs after the tree node is selected.|
|__SelectedNodesChanged__|Occurs when SelectedNodes collection has been changed.|
|__NodeMouseDown__| Occurs when the user presses a mouse button over a RadTreeNode.|
|__NodeMouseUp__|Occurs when the user releases a mouse button over a RadTreeNode.|
|__NodeMouseClick__|Occurs when a mouse button is clicked inside a node|
|__NodeMouseDoubleClick__|Occurs when a mouse button is double clicked inside a TreeNodeElement.|
|__NodeCheckedChanging__|Occurs when the value of the Checked property of a RadTreeNode is changing.|
|__NodeCheckedChanged__|Occurs when the value of the Checked property of a RadTreeNode is changed.|
|__NodeExpandedChanging__|Occurs before the value of the Expanded property of a tree node is changed.|
|__NodeExpandedChanged__|Occurs after the value of the Expanded property of a tree node is changed.|
|__ContextMenuOpening__|Occurs when opening the context menu.|
|__NodeRemoved__|Occurs after a node is removed.|
|__NodeRemoving__|Occurs before a node is removed.|
|__NodeAdded__|Occurs after a node is being added.|
|__NodeAdding__|Occurs before a node is being added.|
|**NodeFormatting**|Occurs when the node changes its state and needs to be formatted.|

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radtreeview.html#properties)

* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radtreeview.html#methods)

* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radtreeview.html#events)



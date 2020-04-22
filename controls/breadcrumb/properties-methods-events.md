---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | RadBreadCrumb
description:   
slug: breadcrumb-properties-methods-events
tags: breadcrumb
published: True
position: 3
---

## Properties

|**Property**|**Description**|
|----|----|
|**BreadCrumbElement**|Gets the breadCrumb element.|
|**PinnedItemsPosition**|Gets or sets the position of **PinnedHeaderItems** in the **HeaderDropDownButtonElement**. The available options are MenuItemsPosition.*Top* and MenuItemsPosition.*Bottom*|
|**PinnedHeaderItems**|Gets the pinned menu items collection in the **HeaderDropDownButtonElement**. The pinned items are **AssociatedMenuItems** and allow the user to have shortcuts for faster and easier navigation to predefined paths.|
|**IsAutoCompleteEnabled**|Gets or sets a value indicating, whether the AutoComplete is enabled in EditMode. By default this property is True.|
|**IsTextModeEnabled**|A property of type bool, which controls whether the text mode of the breadcrumb is enabled. By default this property is True.|
|**IsHistoryEnabled**|A property of type bool, which specifies whether history of visited paths should be kept. By default this property is False.|
|**PathSeparator**|Gets or sets the path separator symbol.|
|**UseMnemonic**|Gets or sets a value indicating whether the control interprets an ampersand character (&#38;) in the control's Text property to be an access key prefix character - *true* if the label doesn't display the ampersand character and underlines the character after the ampersand in its displayed text and treats the underlined character as an access key; otherwise, *false* if the ampersand character is displayed in the text of the control. The default is true.|
|**DefaultTreeView**|Gets or sets a TreeView associated to the bread crumb.|
|**SelectTreeNodeOnClick**|Determines whether a tree node will be selected upon clicking on the action part of the split button element. Default value is [true], if [false] click on the action part will result in opening the popup with the menu items.|
|**DataMember**|Gets or sets the name of the list or table in the data source. Note that this property is ignored when **DefaultTreeView** is set.|
|**DataSource**|Gets or sets the data source.Note that this property is ignored when **DefaultTreeView** is set.|
|**DisplayMember**|Gets or sets the display member.Note that this property is ignored when **DefaultTreeView** is set.|
|**ValueMember**|Gets or sets the value member. Note that this property is ignored when **DefaultTreeView** is set.|
|**ChildMember**|Gets or sets the child member. Note that this property is ignored when **DefaultTreeView** is set.|
|**ParentMember**|Gets or sets the parent member. Note that this property is ignored when **DefaultTreeView** is set.|
|**RelationBindings**|Contains data binding settings for related data. Note that this property is ignored when **DefaultTreeView** is set.|
|**Nodes**|Gets the collection of tree nodes that are assigned to the bread crumb control. A System.Windows.Forms.TreeNodeCollection that represents the tree nodes assigned to the tree view control.|
|**ShowHiddenNodes**|Gets or sets a value indicating whether to display a hidden tree node. A hidden node is a node which **Visible** property is set to *false*. Default value is *false*.|
|**Path**|Get or sets the path to a **RadTreeNode** and selects it. Different elements in the node hierarchy must be separated by the **PathSeparator**.|

## RadBreadCrumbElement's Properties

|Property|Description|
|----|----|
|**Items**| Gets the collection of **RadSplitButtonElements**, which represents the path to the selected **RadTreeNode**.|
|**MainStack**|Returns the **StackLayoutPanel** that holds all **Items**.|
|**LeftElementsStack**|Returns the panel that contain the elements on the left.|
|**RightElementsStack**|Returns the panel that contain the elements on the right.|
|**ImageElement**|Returns the **LightVisualElement** that is used to display the image of selected node.|
|**HeaderDropDownButtonElement**|Returns the button that contains all collapsed and default items.|
|**HistoryDropDownButtonElement**|Returns the history button.|
|**TextBoxEditorElement**|Returns the **RadTextBoxElement**.|
|**DefaultHeight**|Gets or sets the height of the breadcrumb element.|
|**SpacingBetweenItems**|Gets or sets the spacing between the items in the breadcrumb.|
|**SelectTreeNodeOnClick**|Determines whether a tree node will be selected upon clicking on the action part of the split button element. Default value is [true], if [false] click on the action part will result in opening the pop up with the menu items.|
|**DefaultTreeViewElement**|Associates a **RadTreeViewElement** to the bread crumb.|
|**InternalTreeViewElement**|Gets the internal **TreeViewElement** used in the bread crumb. Note that when **DefaultTreeViewElement** property is set, this property will be ignored.|

## RadBreadCrumbElement's Methods

|Method|Description|
|----|----|
|**GetNodesCount**| Returns the number of nodes.|
|**BeginEdit**|Enters edit mode and displays the **RadTextBoxEditorElement**.|
|**EndEdit**|Ends the editor operation. The boolean parameter controls whether to parse the entered path or not.|
|**GetNodePath**|Returns the path to the specified **RadTreeNode**.|
|**Parse**|Navigates to a **RadTreeNode** and selects it by given text(path). Different elements in the node hierarchy must be separated by the **PathSeparator**.|
|**ParseCore**|Retrieves a node by given path. The out parameter returns *true* if the whole path is valid and *false* if only part of the path(sequence of text elements separated by the PathSeparator) is valid or none element is valid.</param> |

## Events

|Event|Description|
|----|----|
|**RootNodesRequested**|Occurs when the root nodes of the associated or internal tree view are requested during the Parse operation. In this event handler the user can modify the default root nodes(add, remove, replace).|
|**HistoryItemCreated**|Occurs when the user navigates to a new Path. In this event handler the user can modify the AssociatedMenuItem or set Cancel=true to prevent the item from being added to the history.|
|**CollapsedItemsCreated**|Occurs when there is not enough space to fit all items and all collapsed items have their corresponding menu items created. In this event handler the user can add, remove, reorder the items in that will appear as collapsed.|
|**CollapsedItemCreated**|Occurs when there is not enough space to fit all items. For each collapsed item anAssociatedMenuItem is created and this event is raised. In this event handler the user can replace the AssociatedMenuItem with a custom one, modify some of the properties of the existing one or set Cancel=true to prevent the item from being added to the collapsed items.|
|**SplitButtonCreated**|Occurs when the Path is changed. For each node in the path hierarchy a SplitButtonElement is created. In this event handler the users can set button properties, modify one or more items of the SplitButton.Items collection or modify the collection(add, remove, replace items).|
|**SplitButtonCreating**|Occurs when a RadSplitButtonElement is being created.In this event handler the users can replace the button with a custom one or cancel creating RadSplitButtonElement for the associated RadTreeNode.|
|**AutoCompleteItemsCreated**|Occurs when auto complete items are created. In this event handler the user can modify the auto complete items and/or modify the collection(add, remove, move or replace items).|
|**AutoCompleteItemsCreating**|In this event handler the user can change the text used by the internal logic to generate the autocomplete items. Suitable for cases when you have shortcuts.|
|**PathParsed**|Occurs when a path has been evaluated and a RadTreeNode is about to be selected in the BreadCrumb. In this event handler the user can change selected RadTreeNode. Note that if parsed path is not valid selected node will be null.|
|**PathParsing**|Occurs when a path is about to be parsed. In this event handler the user can modify the path(for example if key/shortcut words are used), or cancel the parse operation.|

## See Also
* [Getting Started]({%slug breadcrumb-getting-started%})  


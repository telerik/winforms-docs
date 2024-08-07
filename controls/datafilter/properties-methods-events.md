---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - RadDataFilter
description: This article show what RadDataFilter represents and its key features. 
slug: winforms/datafilter/properties-methods-events
tags: data, filter
published: True
position: 8
---

# Properties

|Property|Description|
|----|----|
|**AutoGenerateDescriptorItems**|Gets or sets a value indicating whether descriptor items are created automatically when the DataSource is set.|
|**Descriptors**|A collection of descriptor items used to identify the property names and their corresponding types.|
|**DataSource**|Gets or set the source collection.|
|**DataFilterElement**|Gets the main RadDataFilter's element.|
|**Expression**|Gets or sets the filter expression.|
|**SortFieldNames**|Gets or sets a value indicating whether the field names  will be sorted in the filter criterion's drop down.|
|**Nodes**|Gets the collection of filter nodes that are assigned to the data filter control.|
|**AllowDragDrop**| Gets or sets a value indicating whether drag and drop operation with RadDataFilter nodes is enabled.|
|**AllowAdd**|Gets or sets a value indicating whether adding new nodes is allowed.|
|**AllowRemove**|Gets or sets a value indicating whether removing nodes is allowed.|
|**AllowEdit**|Gets or sets a value indicating whether editing is allowed.|
|**ItemHeight**|Gets or sets the height of the item.|
|**ShowLines**|Gets or sets a value indicating whether the nodes lines are shown.|
|**LineColor**|Gets or sets the color of the line.|
|**LineStyle**|Gets or sets the line style.|
|**ToggleMode**|Gets or sets a value indicating the default tree view toggle mode.|
|**SortFieldNames**|Gets or sets a value indicating whether the names of the fields in the drop down should be sorted.|
|**FieldNamesSortStyle**|Gets or sets a value indicating how the field names are sorted when SortFieldNames is true.|

The **DataFilterCriteriaElement** class also defines three static properties responsible for defining the default sizes of its inner elements:
* DataFilterCriteriaElement.**DefaultFieldWidth**: default width of the field element.  
* DataFilterCriteriaElement.**DefaultOperatorWidth**: default width of the operator element. 
* DataFilterCriteriaElement.**DefaultValueWidth**: default width of the value element.

# Methods

|Method|Description|
|----|----|
|**ApplyFilter**|Forces the filter to be applied to the source collection.|

# RadDataFilterElement's Methods

|Method|Description|
|----|----|
|**AddChildNodes**|Adds a filter condition with the specified **FilterDescriptor** and node.|
|**RemoveChildNode(RadTreeNode nodeToRemove)**|Removes the specified node.|
|**RemoveChildNode(RadTreeNode node, RadTreeNode childNode)**|Removes the specified node by the given parent node.|
|**ClearChildNodes**|Clears the filter nodes.|
|**ValidateAddNewNode**|Returns whether it is possible to add new filter nodes.|
|**GetFieldNames**|Returns a collection of the field names.|
|**GetEditorType(Type valueType)**|Returns the relevant editor by the specified type.|
|**GetFieldType(string propertyName)**|Returns the relevant editor for the specified field.|

# Events

|Event|Description|
|----|----|
|**EditorRequired**|Fires when a specific filter node's element is about to be edited and the editor for it is required.|
|**Editing**|Occurs when initializing the active editor. If the event is canceled, no further action takes place.|
|**EditorInitialized**|Fires when the editor has already been initialized. Here is the appropriate place if you need to customize the editor.|
|**Edited**|Occurs after the filter node is edited.|
|**NodeFormatting**|Occurs when the filter node changes its state and needs to be formatted.|
|**NodeAdded**|Occurs when a filter node is added.|
|**NodeAdding**|Occurs when a filter node is adding. It is cancelable.|
|**NodeRemoved**|Occurs when a filter node is removed.|
|**NodeRemoving**|Occurs when a filter node is being removed. It is cancelable.|
|**PropertyDisplayNameNeeded**|Occurs when a property text is about to be displayed on the screen. Allows the developer to substitute property names with user-friendly display strings.|


>note Note that **RadDataFilter** is a derivative of **RadTreeView**. Properties, methods and events relevant for **RadTreeView** can be used in **RadDataFilter** as well.

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.raddatafilter.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.raddatafilter.html#methods)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.raddatafilter.html#events)

 

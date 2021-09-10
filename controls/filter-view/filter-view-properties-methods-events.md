---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | Filter View
description: Get familiar with the public API of the WinForms FilterView control.  
slug: filter-view-changing-default-editors
tags: filter, view, editor, change
published: True
position: 5  
---

# Properties, Methods and Events for RadFilterView

## Properties

|Property|Description|
|----|----|
|**FilterViewElement**|Returns the main RadFilterViewElement|
|**AssociatedControl**|Gets or sets the control which will be filtered by the control|
|**DataSource**|Gets or sets the source collection which will be used for generating the category elements|
|**Categories**|Returns the available category elements|
|**FilteringMode**|Controls the filtering mode. The available options are two: **OnFilterChanged** (The associated control instance is instantly filtered, when the filter is changed) and Programmatically (Programmatically update the filter)|
|**Expression**|Gets the filter expression|
|**FilterDescriptors**|Returns the applied FilterDescriptorCollection|
|**CategoriesFactory**|Gets or sets the factory responsible for creating category elements|
|**RadContextMenu**|Gets or sets the context menu|
|**LoadCategoriesAsync**|Gets or sets a value indicating whether to generate the category elements asynchronously|
|**AutoGenerateCategories**|Gets or sets a value indicating whether to auto generate categories when the DataSource property is set|
|||

## RadFilterViewElement's Methods

|Method|Description|
|----|----|
|**ClearAllFilters**|Clears all generated category elements|

## Events

|Event|Description|
|----|----|
|**FilterChanged**|Occurs when the filter is changed|
|**CategoryCreating**|An event that occurs when a category is created and is about to be populated with items.This event is suitable to modify the values collection(sort/add/remove/reorder) or modify/replace the Category element|
|**CategoryCreated**|An event that occurs when a category is created and populated with items.This event is suitable to modify properties of the Category element|
|**ContextMenuItemClick**|Occurs when an item in the context menu is clicked|
|**ContextMenuOpening**|Occurs when the context menu is opening|
|**ContextMenuClosing**|Occurs when the context menu is closing|
|**ContextMenuOpened**|Occurs when the context menu is opened|
|**ContextMenuClosed**|Occurs when the context menu is closed|
 
# See Also

* [Getting Started]({%slug filter-view-getting-started%})
* [Structure]({%slug filter-view-structure%})
 
        

---
title: Properties, Methods and Events
page_title: Properties, Methods, Events - RadPropertyGrid
description: RadPropertyGrid for WinForms displays the properties of a given object in a user-friendly way allowing the end-user to edit these properties using our editors..
slug: winforms/propertygrid/properties-methods-and-events
tags: propertygrid, properties, methods, events
published: True
position: 7
---

# Properties

|Property|Description|
|------|------|
|**EnableKineticScrolling**|Gets or sets a value indicating whether the kinetic scrolling function is enabled.|
|**EnableCustomGrouping**|Gets or sets a value indicating whether the data can be grouped programmatically.|
|**IsEditing**|Gets a value indicating whether there are currently open editors.|
|**ReadOnly**|Gets or sets a value indicating whether the user is allowed to edit the values of the properties.|
|**ActiveEditor**|Gets the active editor.|
|**BeginEditMode**|Gets or sets a value indicating how user begins editing a cell.|
|**AutoExpandGroups**|Gets or sets a value indicating whether the groups will be expanded or collapsed upon creation.|
|**RadContextMenu**|Gets or sets the shortcut menu associated with the control.|
|**AllowDefaultContextMenu**|Gets or sets a value indicating whether the default context menu is enabled.|
|**KeyboardSearchEnabled**|Gets or sets a value that determines whether the user can navigate to an item by typing when RadPropertyGrid is focused.|
|**KeyboardSearchResetInterval**|Gets or sets a value that specifies how long the user must wait before searching with the keyboard is reset.|
|**FindStringComparer**|Gets or sets the string comparer used by the keyboard navigation functionality.|
|**SelectedGridItem**|Gets or sets the selected item.|
|**SelectedObject**|Gets or sets the object which properties the is displaying.|
|**SelectedObjects**|Gets or sets the objects which properties the is displaying.|
|**Items**|Gets the Items collection.|
|**Groups**|Gets the Groups collection.|
|**EnableGrouping**|Gets or sets a value indicating whether grouping is enabled.|
|**EnableSorting**|Gets or sets a value indicating whether sorting is enabled.|
|**EnableFiltering**|Gets or sets a value indicating whether filtering is enabled.|
|**GroupDescriptors**|Gets the group descriptors.|
|**FilterDescriptors**|Gets the filter descriptors.|
|**SortDescriptors**|Gets the sort descriptors.|
|**SortOrder**|Gets or sets the sort order of items.|
|**PropertySort**|Gets or sets the mode in which the properties will be displayed in the .|
|**HelpVisible**|Gets or sets a value indicating whether the is visible.|
|**HelpBarHeight**|Gets or sets the height of the .|
|**ToolbarVisible**|Gets or sets a value indicating whether the search box of the should be visible|
|**PropertyGridElement**|Gets the of this control.|
|**ItemHeight**|Gets or sets the height of the items.|
|**ItemSpacing**|Gets or sets the distance between items of the RadPropertyGridElement.|
|**ItemIndent**|Gets or sets the width of the indentation of sub items.|
|**BackColor**|RadPropertyGrid consists of multiple visual elements and separate settings are provided to customize their appearance. Current BackColor property might be ignored.|
|**ForeColor**|RadPropertyGrid consists of multiple visual elements and separate settings are provided to customize their appearance. Current ForeColor property might be ignored.|

## Methods

|Method|Description|
|------|------|
|**BestFit**|Uses a mechanism to maximize the visible strings in both columns of RadPropertyGrid.|
|**BestFit(PropertyGridBestFitMode mode)**|Best fits the column(s) of RadPropertyGrid using the given mode.|
|**ExpandAllGridItems**|Expands all categories.|
|**CollapseAllGridItems**|Collapses all categories.|
|**ResetSelectedProperty**|Resets the selected property to its default value.|
|**BeginEdit**|Puts the current item in edit mode.|
|**EndEdit**|Commits any changes and ends the edit operation on the current item.|
|**CancelEdit**|Close the currently active editor and discard changes.|

## Events

|Event|Description|
|------|------|
|**SelectedObjectChanging**|Occurs before the selected object is changed.|
|**SelectedObjectChanged**|Occurs after the selected object is changed.|
|**SelectedGridItemChanging**|Occurs before a property grid item is selected.|
|**SelectedGridItemChanged**|Occurs after the property item is selected. For more information about handling events, see also SelectedItemChanging.|
|**ContextMenuOpening**|Occurs when opening the context menu.|
|**CustomGrouping**|Fires for custom grouping operation.|
|**ItemMouseDown**|Occurs when the user presses a mouse button over a property grid item.|
|**ItemMouseMove**|Occurs when the user moves the mouse in the area of a property grid item.|
|**ItemMouseClick**|Occurs when a mouse button is clicked inside a|
|**ItemMouseDoubleClick**|Occurs when a mouse button is double clicked inside a|
|**ItemExpandedChanging**|Occurs before the value of the Expanded property of a property grid item is changed.|
|**ItemExpandedChanged**|Occurs after the value of the Expanded property of a property grid item is changed.|
|**ItemFormatting**|Occurs when the item changes its state and needs to be formatted.|
|**CreateItem**|Occurs when a new item element is going to be created.|
|**CreateItemElement**|Occurs when a new item element is going to be created.|
|**EditorRequired**|Occurs when editor is required.|
|**Editing**|Occurs when editing is started.|
|**EditorInitialized**|Occurs when editor is initialized.|
|**Edited**|Occurs when editing has been finished.|
|**PropertyValueChanging**|Occurs when item's value is changing.|
|**PropertyValueChanged**|Occurs when a property value changes.|
|**PropertyValidating**|Fires when a property value is validating.|
|**PropertyValidated**|Fires when a peoperty has finished validating.|
|**ValueChanging**|Fires before the value in an editor is being changed. The action can be canceled.|
|**ValueChanged**|Fires when the value of an editor changes.|

## See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radpropertygrid.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radpropertygrid.html#methods)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radpropertygrid.html#events)


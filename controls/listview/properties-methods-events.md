---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | RadListView
description: Telerik RadListView control is created as a result of the concord of the powerful data layer used by RadGridView and RadListControl, together with the outstanding Telerik Presentation Framework.
slug: winforms/listview/using-checkboxes
tags: listview
published: True
position: 10 
---

# Properties, Methods and Events

This article provides reference tables with the [Properties](#properties), [Methods](#methods) and [Events](#events) in RadListView.

## Properties

|Property|Description|
|----|----| 
|**CaseSensitiveColumnNames**|Gets or sets a value indicating whether column names which differ only in the casing are allowed.|
|**CheckBoxesPosition**|Gets or sets the position of the checkboxes when ShowCheckBoxes is true.|
|**CheckBoxesAlignment**|Gets or sets the position of the checkboxes when ShowCheckBoxes is true.|
|**SelectLastAddedItem**|Gets or sets a value indicating whether the last added item in the RadListView DataSource will be selected by the control.|
|**VerticalScrollState**|Gets or sets the display state of the vertical scrollbar.|
|**ThreeStateMode**|Gets or sets a value indicating whether the checkboxes should be in ThreeState mode.|
|**AllowDragDrop**|Gets or sets value indicating if the user can reorder items via drag and drop.|
|**ShowGridLines**|Gets or sets a value indicating whether items can be selected with mouse dragging.|
|**EnableLassoSelection**|Gets or sets a value indicating whether items can be selected with mouse dragging.|
|**EnableKineticScrolling**|Gets or sets a value indicating whether the kinetic scrolling function is enabled. Always false when lasso selection is enabled.|
|**HotTracking**|Gets or sets a value indicating whether items should react on mouse hover.|
|**EnableColumnSort**|Gets or sets a value indicating whether the items should be sorted when clicking on header cells.|
|**ItemSize**|Gets or sets the default item size.|
|**GroupItemSize**|Gets or sets the default item size.|
|**GroupIndent**|Gets or sets the indent of the items when they are displayed in a group.|
|**ItemSpacing**|Gets or sets the space between the items.|
|**FilterDescriptors**|Gets a collection of filter descriptors by which you can apply filter rules to the items.|
|**FilterPredicate**|Gets or sets the filter predicate used for filtering operation.|
|**IsDataBound**|Gets a value indicating whether the control is in bound mode.|
|**Groups**|Gets a collection containing the groups of the RadListView.|
|**ValueMember**|Gets or sets the value member.|
|**DisplayMember**|Gets or sets the display member.|
|**CheckedMember**|Gets or sets the checked member.|
|**EnableSorting**|Gets or sets a value indicating whether sorting is enabled.|
|**EnableFiltering**|Gets or sets a value indicating whether filtering is enabled.|
|**EnableGrouping**|Gets or sets a value indicating whether grouping is enabled.|
|**EnableCustomGrouping**|Gets or sets a value indicating whether custom grouping is enabled.|
|**SortDescriptors**|Gets a collection of SortDescriptor which are used to define sorting rules over the ListViewDataItemCollection.|
|**GroupDescriptors**|Gets a collection of GroupDescriptor which are used to define grouping rules over the ListViewDataItemCollection.|
|**DataSource**|Gets or sets the data source of a RadListView.|
|**DataMember**|Gets or sets the name of the list or table in the data source for which the RadListView is displaying data.|
|**SelectedItem**|Gets or sets the selected item.|
|**SelectedIndex**|Gets or sets the index of the selected item.|
|**CurrentItem**|Gets or sets the current item.|
|**CurrentColumn**|Gets or sets the current column in Details View.|
|**IsEditing**|Indicates whether there is an active editor.|
|**Columns**|Gets or sets a collection of ListViewDetailColumn object which represent the columns in DetailsView.|
|**Items**|Gets or sets a collection of ListViewDataItem object which represent the items in RadListView.|
|**ShowColumnHeaders**|Gets or sets a value indicating whether the column headers should be drawn.|
|**ShowGroups**|Gets or sets a value indicating whether the items should be shown in groups.|
|**SelectedItems**|Gets a collection containing the selected items.|
|**CheckedItems**|Gets a collection containing the checked items.|
|**ShowCheckBoxes**|Gets or sets value indicating whether checkboxes should be shown.|
|**AllowColumnResize**|Gets or sets value indicating if the user can resize the columns.|
|**AllowColumnReorder**|Gets or sets value indicating if the user can reorder columns via drag and drop.|
|**FullRowSelect**|Gets or sets a value indicating whether the full row should be selected.|
|**AllowArbitraryItemWidth**|Gets or sets a value indicating whether the items can have different width.|
|**AllowArbitraryItemHeight**|Gets or sets a value indicating whether the items can have different height.|
|**MultiSelect**|Gets or sets value indicating whether multi selection is enabled.|
|**AllowEdit**|Gets or sets value indicating whether editing is enabled.|
|**AllowRemove**|Gets or sets value indicating whether the user can remove items with the Delete key.|
|**ActiveEditor**|Gets the currently active editor.|
|**ViewType**|Gets or sets the type of the view.|
|**ListViewElement**|Gets the RadListViewElement of RadListView|
|**HeaderHeight**|Gets or sets the height of the header in Details View.|
|**KeyboardSearchResetInterval**|Gets or sets a value that specifies how long the user must wait before searching with the keyboard is reset.|
|**KeyboardSearchEnabled**|Gets or sets a value that determines whether the user can search for an item by typing characters when RadListControl is focused.|
|**FindStringComparer**|Gets or sets the string comparer used by the keyboard navigation functionality.|
|**CheckOnClickMode**|Gets or sets a value indicating whether the item's check state changes whenever the item is clicked.|

## Methods

|Method|Description|
|----|----| 
|**BeginUpdate**|Suspend any item change notifications until RadListView.**EndUpdate** is called.|
|**EndUpdate**|Resumes the item change notifications.|
|**FindItemByKey(object key)**|Finds an item with the specified key.|
|**FindItemByKey(object key, bool searchVisibleItems)**|Finds an item with the specified key. The boolean parameter indicates if the search should check only visible items.|
|**Select**|Selects a set of items.|
|**BeginEdit**|Begins an edit operation over the currently selected item.|
|**EndEdit**|Ends the current edit operations if such. Saves the changes.|
|**CancelEdit**|Ends the current edit operations if such. Discards the changes. Returns *true* if success, *false* otherwise.|
|**ExpandAll**|Expands all the groups in the control.|
|**CollapseAll**|Collapses all the groups in the control.|
|**CheckSelectedItems**|Checks the selected items.|
|**UncheckSelectedItems**|Unchecks the selected items.|
|**CheckAllItems**|Checks all of the items.|
|**UncheckAllItems**|Unchecks all of the items.|

## Events

|Event|Description|
|----|----| 
|**GroupExpanded**|Fires when a group has been expanded.|
|**GroupExpanding**|Fires when a group is about to expand. Cancelable.|
|**BindingContextChanged**|Occurs when the BindingContext has changed.|
|**BindingCompleted**|Occurs when the process of binding RadListViewElement to a data source has finished.|
|**SelectedItemChanging**|Occurs when a ListViewDataItem is about to be selected. Cancelable.|
|**SelectedItemsChanged**|Occurs when the content of the SelectedItems collection has changed.|
|**SelectedItemChanged**|Occurs when the selected item has changed.|
|**SelectedIndexChanged**|Occurs when the selected item has changed.|
|**ViewTypeChanged**|Occurs when the ViewType of RadListView is changed.|
|**ViewTypeChanging**|Occurs when the ViewType of RadListView is about to change. Cancelable.|
|**ItemMouseDown**|Occurs when the user presses a mouse button over a ListViewDataItem.|
|**ItemMouseUp**|Occurs when the user presses a mouse button over a ListViewDataItem.|
|**ItemMouseMove**|Occurs when the user moves the mouse over a ListViewDataItem.|
|**ItemMouseHover**|Occurs when the user hovers a ListViewDataItem.|
|**ItemMouseEnter**|Occurs when the mouse pointer enters a ListViewDataItem.|
|**ItemMouseLeave**|Occurs when the mouse pointer leaves a ListViewDataItem.|
|**ItemMouseClick**|Occurs when the user clicks a ListViewDataItem.|
|**ItemMouseDoubleClick**|Occurs when the user double-clicks a ListViewDataItem.|
|**ItemCheckedChanging**|Occurs when a ListViewDataItem is about to be checked. Cancelable.|
|**ItemCheckedChanged**|Occurs when a ListViewDataItem is checked.|
|**VisualItemFormatting**|Occurs when a ListViewDataItem changes its state and needs to be formatted.|
|**ItemCreating**|Occurs when a ListViewDataItem needs to be created.|
|**VisualItemCreating**|Occurs when a <see cref="BaseListViewVisualItem">BaseListViewVisualItem</see> needs to be created.|
|**CellFormatting**|Occurs when a DetailsView cell needs to be formatted.|
|**ItemDataBound**|Occurs when a data-bound item is being attached to a ListViewDataItem.|
|**CurrentItemChanged**|Occurs when the CurrentItem property is changed.|
|**CurrentItemChanging**|Occurs when the CurrentItem property is about to change. Cancelable.|
|**EditorRequired**|Occurs when an editor is required.|
|**ItemEditing**|Occurs when an edit operation is about to begin. Cancelable.|
|**EditorInitialized**|Occurs when an editor is initialized.|
|**ItemEdited**|Occurs when a ListViewDataItem is edited.|
|**ValidationError**|Fires when a validation error occurs.|
|**ItemValidating**|Occurs when an edit operation needs to be validated.|
|**ItemValueChanged**|Occurs when the value of a ListViewDataItem is changed.|
|**ItemValueChanging**|Occurs when the value of a ListViewDataItem is about to change. Cancelable.|
|**ColumnCreating**|Occurs when a ListViewDetailColumn needs to be created.|
|**CellCreating**|Occurs when a DetailListViewCellElement needs to be created.|
|**ItemRemoving**|Occurs when an item is about to be removed using the Delete key. Cancelable.|
|**ItemRemoved**|Occurs when an item is removed using the Delete key.|

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radlistview.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radlistview.html#methods)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radlistview.html#events)


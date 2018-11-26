---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | RadListControl
description: RadListControl is the an alternative to the Microsoft ListBox control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/properties-methods-events
tags: listcontrol, properties, methods, events
published: True
position: 5
---

# Properties

|Property|Description|
|----|----| 
|__EnableAlternatingItemColor__|Gets or sets a value indicating whether alternating item color is enabled.|
|__EnableKineticScrolling__|Gets or sets a value indicating whether the kinetic scrolling function is enabled.|
|__FitItemsToSize__|Gets or sets whether the RadListDataItem will fit to the available size.|
|__CaseSensitiveSort__|Gets or sets a value that indicates whether text case will be taken into account when sorting.|
|__ItemHeight__|Gets or sets the item height for the items. This property is disregarded when AutoSizeItems is set to true.|
|__KeyboardSearchResetInterval__|Gets or sets a value that specifies how long the user must wait before searching with the keyboard is reset.|
|__KeyboardSearchEnabled__|Gets or sets a value that determines whether the user can search for an item by typing characters when RadListControl is focused.|
|__Items__|Gets a collection representing the items contained in this RadListControl.|
|__SelectedItems__|Provides a read only interface to the selected items. In order to select an item, use its Selected property.|
|__SelectionMode__|Gets or sets the SelectionMode of RadListControl. This property has a similar effect to the SelectionMode of the standard Microsoft ListBox control.|
|__SelectedValue__|Gets or sets the SelectedValue. A linear search is performed to find a data item that has the same value in its Value property and SelectedItem and SelectedIndex are updated to it and its index respectively.|
|__ActiveItem__|Gets or sets the active item. The Active item is relevant only in MultiSimple SelectionMode or MultiExtended in combination with the control keyboard key.|
|__SelectedItem__|Gets or sets the currently selected item.|
|__SelectedIndex__|Gets or sets the currently selected index.|
|__DataSource__|Gets or sets the object that is responsible for providing data objects for the RadListElement. Setting this property throws an InvalidOperationException if Items is not empty and the data source is null.|
|__DataMember__|Gets or sets the name of the list or table in the data source for which the RadListControl is displaying data.|
|__DisplayMember__|Gets or sets a string which will be used to get a text string for each visual item. This property can not be set to null. Setting it to null will cause it to contain an empty string.|
|__ValueMember__|Gets or sets the string through which the SelectedValue property will be determined. This property can not be set to null. Setting it to null will cause it to contain an empty string.|
|__DescriptionTextMember__|Gets or sets the string through which the SelectedValue property will be determined. This property can not be set to null. Setting it to null will cause it to contain an empty string.|
|__SortStyle__|Gets or sets the sort style.|
|__ScrollMode__|Gets or set the scroll mode.|
|__FormatString__|Gets or sets a format string which will be used for visual formatting of the items text.|
|__FormattingEnabled__|Gets or sets a value that indicates whether the FormatString and FormatInfo properties will be used to format the items text. Setting this property to false may improve performance.|
|__AutoSizeItems__|Gets or sets a value that indicates whether items will be sized according to their content. If this property is true the user can set the Height property of each individual RadListDataItem in the Items collection in order to override the automatic sizing.|
|__Filter__|Gets or sets a predicate which filters which items can be visible.|
|__FilterExpression__|Gets or sets a filter expression which determines which items will be visible.|
|__IsFilterActive__|Gets a value indicating whether there is a Filter or FilterExpression set.|
|__FindStringComparer__|Gets or sets an object that implements IFindStringComparer. The value of this property is used in the FindString() method when searching for an item.|
|__ItemTextComparisonMode__|Gets or sets a value that determines whether the FindString() method searches via the text property set by the user or by the text provided by the data binding logic, that is, by DisplayMember.|
|__SuspendItemsChangeEvents__|Gets or sets a value that indicates if this RadListControl will stop firing the ItemsChanging and ItemsChanged events.|
|__SuspendSelectionEvents__|Gets or sets a value that determines whether to stop the selection events from firing. These are SelectedIndexChanged, SelectedIndexChanging and SelectedValueChanged.|

# Methods

|Method|Description|
|----|----| 
|__FindItemExact__|Finds the first item in the RadListControl that matches the specified string.|
|__Rebind__|Forces re-evaluation of the current data source (if any).|
|__BeginUpdate__|Suspends internal notifications and processing in order to improve performance.This method is cumulative, that is, if BeginUpdate is called N times, EndUpdate must also be called N times. Calling BeginUpdate will cause the ItemsChanged event to stop firing until EndUpdate is called.|
|__SelectAll__|Selects all items if the SelectionMode allows it. This method throws an InvalidOperationException if SelectionMode is One or None.|
|__SelectRange__|Clears the currently selected items and selects all items in the closed range [startIndex, endIndex].|
|__ScrollToItem__|Scrolls to the provided item so that the item will appear at the top of the view if it is before the currently visible items and at the bottom of the view if it is after the currently visible items.|
|__FindString(string s)__|Searches for an item related to the specified string. The relation is described by the object assigned to FindStringComparer property. By default this relation is the System.String.StartsWith(). This method starts searching from the beginning of the items.|
|__FindString(string s, int startIndex)__|Searches for an item related to the specified string. The relation is described by the object assigned to FindStringComparer property. By default this relation is the System.String.StartsWith(). This method starts searching from the specified index. If the algorithm reaches the end of the Items collection it wraps to the beginning and continues until one before the provided index.|
|__FindStringExact(string s)__|Searches for an item in the same manner as FindString() but matches an item only if its text is exactly equal to the provided string.|
|__FindStringExact(string s, int startIndex)__|Searches for an item in the same manner as FindString() but matches an item only if its text is exactly equal to the provided string.|
|__FindStringNonWrapping(string s)__|Searches for an item in the same manner as FindString() but does not start from the beginning when the end of the Items collection is reached.|
|__FindStringNonWrapping(string s, int startIndex)__|Searches for an item from a certain index in the same manner as FindString() but does not start from the beginning when the end of the Items collection is reached.|

# Events

|Event|Description|
|----|----| 
|__SelectedIndexChanged__|This event fires when the selected index property changes.|
|__SelectedIndexChanging__|This event fires before SelectedIndex changes. This event allows the operation to be canceled.|
|__SelectedValueChanged__|This event fires only if the SelectedValue has really changed. For example it will not fire if the previously selected item has the same value as the newly selected item.|
|__ItemDataBinding__|This event fires before a RadListDataItem is data bound. This happens when the DataSource property is assigned and the event fires for every item provided by the data source. This event allows a custom RadListDataItem to be provided by the user.|
|__ItemDataBound__|This event fires after a RadListDataItem is data bound. This happens when the DataSource property is assigned and the event is fired for every item provided by the data source.|
|__CreatingVisualListItem__|This event allows the user to create custom visual items. It is fired initially for all the visible items and when the control is resized afterwards.|
|__SortStyleChanged__|This event fires when the SortStyle property changes.|
|__VisualItemFormatting__|The VisualItemFormatting event fires whenever a property of a visible data item changes and whenever a visual item is associated with a new data item. During scrolling for example.|
|__SelectedItemsChanged__|This event fires when the SelectedItems collection changes.|
|__SelectedItemsChanging__|This event fires before the SelectedItems collection changes.|

# See Also

* [Properties](http://docs.telerik.com/devtools/winforms/api/html/Properties_T_Telerik_WinControls_UI_RadListControl.htm)
* [Methods](http://docs.telerik.com/devtools/winforms/api/html/Methods_T_Telerik_WinControls_UI_RadListControl.htm)
* [Events](http://docs.telerik.com/devtools/winforms/api/html/Events_T_Telerik_WinControls_UI_RadListControl.htm)
 
            
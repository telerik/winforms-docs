---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | RadDropDownList
description: RadDropDownList is an enhanced alternative to the standard Windows Forms combo box control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/properties-methods-events
tags: structure
published: True
position: 4 
---

# Properties

|Property|Description|
|----|----| 
|__EnableAlternatingItemColor__|Gets or sets a value indicating whether alternating item color is enabled.|
|__AllowShowFocusCues__|Indicates focus cues display, when available, based on the corresponding control type and the current UI state.|
|__EnableKineticScrolling__|Gets or sets a value indicating whether the kinetic scrolling function is enabled.|
|__ShowImageInEditorArea__|Gets or sets that RadListDataItem Image will be displayd in Editor Element when DropDownStyle is set to DropDownStyleList.|
|__FitItemsToSize__|Gets or sets whether the RadListDataItem will fit to the available size.|
|__Popup__|Gets a reference to the drop down form associated with this RadDropDownList.|
|__MaxDropDownItems__|Gets or sets the maximum number of items to be shown in the drop-down portion of the RadDropDownList.|
|__AutoSizeItems__|Gets or sets a value that indicates whether items will be sized according to their content. If this property is *true* the user can set the Height property of each individual RadListDataItem in the Items collection in order to override the automatic sizing.|
|__MaxLength__|Gets or sets the maximum number of characters the user can type or paste into the text box control.|
|__DropDownMinSize__|Gets or sets the drop down minimal size.|
|__DropDownSizingMode__|Gets or sets the drop down sizing mode. The mode can be: horizontal, vertical or a combination of them.|
|__CaseSensitive__|Gets or sets a value indicating whether string comparisons are case-sensitive.|
|__AutoCompleteMode__|Specifies the mode for the automatic completion feature used in the DropDownList and the TextBox controls.|
|__SelectNextOnDoubleClick__|Rotate items on double click in the edit box part.|
|__FormatInfo__|Gets or sets an object that implements the IFormatProvider interface. This object is used when formatting items. The default object is CultureInfo.CurrentCulture.|
|__FormatString__|Gets or sets a format string that will be used for visual item formatting if FormattingEnabled is set to true.|
|__SortStyle__|Gets or sets the sort style. It can be Ascending, Descending or None. Sorting is performed according to the property specified by DisplayMember.|
|__FormattingEnabled__|Gets or sets a value that determines whether text formatting is enabled for the visual items.|
|__DropDownAnimationEasing__|Gets or sets the easing type of the animation.|
|__DropDownAnimationEnabled__|Gets or sets a value indicating whether the RadDropDownList will be animated when displaying.|
|__DropDownAnimationFrames__|Gets or sets the number of frames that will be used when the DropDown is being animated.|
|__DropDownHeight__|Gets or sets the height in pixels of the drop-down portion of the RadDropDownList.|
|__DropDownStyle__|Gets or sets a value specifying the style of the RadDropDownList.|
|__DefaultItemsCountInDropDown__|DefaultItems count in drop-down portion of the RadDropDownList.|
|__DropDownMaxSize__|Gets or sets the drop down maximal size.|
|__DropDownListElement__|Represents the DropDownListElement element.|
|__ListElement__|Represents the List element.|
|__Items__|Gets a collection representing the items contained in this RadDropDownList.|
|__SelectedItems__|Provides a readonly interface to the currently selected items.|
|__SelectedValue__|Gets or sets the currently selected value. Setting the SelectedValue to a value that is shared between many items causes the first item to be selected. This property triggers the selection events.|
|__SelectedItem__|Gets or sets the selected logical list item. Setting this property will cause the selection events to fire.|
|__SelectedIndex__|Gets or sets the position of the selection.Setting this property will cause the SelectedIndexChanging and SelectedIndexChanged events to fire.|
|__AutoCompleteDataSource__|Gets or sets the object that is responsible for providing data objects for the AutoComplete suggest.|
|__AutoCompleteDisplayMember__|Gets or sets a string which will be used to get a text string for each visual item. This value can not be set to null. Setting it to null will cause it to contain an empty string.|
|__AutoCompleteValueMember__|Gets or sets the string through which the SelectedValue property will be determined. This property can not be set to null. Setting it to null will cause it to contain an empty string.|
|__DataSource__|Gets or sets the object that is responsible for providing data objects for the RadListElement.|
|__DataMember__|Gets or sets the name of the list or table in the data source for which the RadListControl is displaying data.|
|__DisplayMember__|Gets or sets a string which will be used to get a text string for each visual item. This value can not be set to null. Setting it to null will cause it to contain an empty string.|
|__ValueMember__|Gets or sets the string through which the SelectedValue property will be determined. This property can not be set to null. Setting it to null will cause it to contain an empty string.|
|__DescriptionTextMember__|Gets or sets a property name which will be used to extract a text for description text from the data items. The value of the property with this name will be available via the Value property of every RadListDataItem in the Items collection.|
|__EnableMouseWheel__|Indicates whether users can change the selected item by the mouse wheel.|
|__IsPopupVisible__|Indicating whether the Popup part of the control are displayed.|
|__Filter__|Gets or sets a predicate which filters which items can be visible.|
|__FilterExpression__|Gets or sets a filter expression which determines which items will be visible.|
|__IsFilterActive__|Gets a value indicating whether there is a Filter or FilterExpression set.|
|__ReadOnly__|Gets or sets a value indicating whether the drop down list is read only.|

# Methods

|Method|Description|
|----|----| 
|__FindItemExact__|Returns the RadListDataItem by a given text.|
|__FindString__|Searches for an item related to the specified string. The relation is described by the object assigned to FindStringComparer property.By default FindStringComparer uses the System.String.StartsWith() method.This method starts searching from zero based index. If the algorithm reaches the end of the Items collection it wraps to the beginning and continues until one before the provided index.|
|__FindStringExact__|Searches for an item in the same manner as FindString() but matches an item only if its text is exactly equal to the provided string.|
|__FindStringNonWrapping__|Searches for an item in the same manner as FindString() but does not start from the beginning when the end of the Items collection is reached.|
|__Rebind__|Forces re-evaluation of the current data source (if any).|
|__ShowDropDown__|Displays the pop-up on the screen.|
|__CloseDropDown__|Hides the popup from the screen.|
|__BeginUpdate__|Calls BeginUpdate at the beginning of a block that makes many modifications in the GUI|
|__EndUpdate__|Calls EndUpdate at the end of a block that makes many modifications in the GUI|

# Events

|Event|Description|
|----|----| 
|__DataBindingComplete__|Fires after data binding operation has finished.|
|__PopupOpening__|Fires when the pop-up form is about to be opened.|
|__PopupOpened__|Fires when the pop-up form is opened.|
|__PopupClosing__|Fires when the pop-up is about to be closed.|
|__PopupClosed__|Fires when the pop-up is closed.|
|__SelectedIndexChanged__|This event fires when the selected index property changes.|
|__SelectedIndexChanging__|This event fires before SelectedIndex changes. This event allows the operation to be canceled.|
|__SelectedValueChanged__|This event fires only if the SelectedValue has really changed. For example it will not fire if the previously selected item has the same value as the newly selected item.|
|__ItemDataBinding__|This event fires before a RadListDataItem is data bound. This happens when the DataSource property is assigned and the event fires for every item provided by the data source. This event allows a custom RadListDataItem to be provided by the user.|
|__ItemDataBound__|This event fires after a RadListDataItem is data bound. This happens when the DataSource property is assigned and the event is fired for every item provided by the data source.|
|__CreatingVisualListItem__|This event allows the user to create custom visual items. It is fired initially for all the visible items and when the control is resized afterwards.|
|__SortStyleChanged__|This event fires when the SortStyle property changes.|
|__VisualListItemFormatting__|The VisualItemFormatting event fires whenever a property of a visible data item changes and whenever a visual item is associated with a new data item. During scrolling for example.|

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.raddropdownlist.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.raddropdownlist.html#methods)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.raddropdownlist.html#events)


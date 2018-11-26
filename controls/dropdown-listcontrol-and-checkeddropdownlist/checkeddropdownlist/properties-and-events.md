---
title: Properties and Events
page_title: Properties and Events | RadCheckedDropDownList
description: RadCheckedDropDownList combines RadDropDownList and RadAutoCompleteBox in order to provide functionality to check items in the drop down area and tokenize them in the text area. 
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/properties-and-events
tags: properties,and,events
published: True
position: 6
previous_url: dropdown-and-listcontrol-checkedropdownlist-properties-and-events
---

# Properties and Events

## RadCheckedDropDownList

### Properties

|Property|Description|
|----|----|
|__AutoCompleteMode__|Specifies the mode for the automatic completion feature used in the DropDownList and the TextBox controls.|
|__MaxLength__|Gets or sets the maximum number of characters the user can type or paste into the text box control.|
|__CheckedDropDownListElement__|Gives you access to the __RadCheckedDropDownListElement__ instance.|
|__ReadOnly__|Gets or sets a value indicating whether the drop down list is read only.|
|__Items__|Gets a collection representing the items contained in this RadCheckedDropDownList.|
|__CheckedItems__|Gets a collection representing the checked items contained in this RadCheckedDropDownList.| 
|__CheckedMember__|Gets or sets a string which will be used to get a description text string for each visual item. This property can not be set to null. Setting it to null will cause it to contain an empty string.|
|__ShowCheckAllItems__|Show or Hide the *CheckAll* item.|
          
### Events

|Event|Description|
|----|----|
|__TokenValidating__|Occurs when text is validating as token|
|__TextBlockFormatting__|Occurs when text block is formatting.|
|__CreateTextBlock__|Occurs when an instance of __ITextBlock__ is created.|
|__ItemCheckedChanging__|Occurs when a __ListViewDataItem__ is about to be checked. Cancelable.|
|__ItemCheckedChanged__|Occurs when a __ListViewDataItem__ is checked.| 
|**CheckAllItemCheckedChanged**|Occurs when the CheckAllItem is checked.|
|**CheckAllItemCheckedChanging**|Occurs when the CheckAllItem is about to be checked. Cancelable.|
     

## RadCheckedListDataItem

|Property|Description|
|----|----|
|__Checked__|Sets the value indicates whether the item is checked. The value is reflected in the RadCheckedDropDownList and in the DataBoundItem if such exists and RadCheckedDropDownList has its CheckedMember set accordingly.|
|__Owner__|Gets the owner RadListElement.|
|__Selected__|Gets or sets a value that indicates if this item is selected. Setting this property will cause the selection events of the owner list control to fire if there is one.|

# See Also

* [Properties](http://docs.telerik.com/devtools/winforms/api/html/Properties_T_Telerik_WinControls_UI_RadCheckedDropDownList.htm)
* [Events](http://docs.telerik.com/devtools/winforms/api/html/Methods_T_Telerik_WinControls_UI_RadCheckedDropDownList.htm)
* [Properties | RadCheckedListDataItem ](http://docs.telerik.com/devtools/winforms/api/html/Properties_T_Telerik_WinControls_UI_RadCheckedListDataItem.htm)
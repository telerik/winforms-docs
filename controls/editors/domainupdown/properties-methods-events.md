---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | RadDomainUpDown
description: RadDomainUpDown is designed to display text inside an editor like a text-box and sets a text string from a list of choices. 
slug: winforms/editors/domainupdown/properties-methods-events
tags: domainupdown
published: True
position: 6 
---

## Properties

|Property|Description|
|----|----|
|**AutoComplete**|Gets or sets a value whether auto-complete is enabled. With an enabled auto-complete the matched item`s text will be appended to the input in the editor.|
|**Wrap**|Gets or sets a value indicating that selected item will revert to first item after reaching the last item and vice versa.|
|**ReadOnly**|Gets or sets a value indicating whether typing is enabled inside the text box.|
|**DomainUpDownElement**|Represents the DomainUpDownElement element.|
|RadDomainUpDownElement.**UpButtonElement**|Get the element representing the decrement button.|
|RadDomainUpDownElement.**DownButtonElement**|Get the element representing the increment button.|
|**SelectNextOnDoubleClick**| Indicates whether to rotate items on double click in the edit box part.|

## Methods 

|Method|Description|
|----|----|
|**MoveUp**|Selects the previous item in the list.|
|**MoveUp(bool wrap)**|Selects the previous item in the list. The wrap argument specifies whether the navigation will be wrapped.|
|**MoveDown**|Selects the next item in the list.|
|**MoveDown(bool wrap)**|Selects the next item in the list. The wrap argument specifies whether the navigation will be wrapped.|

## Events

|Event|Description|
|----|----|
|**SelectedIndexChanging**|This event fires before the **SelectedIndex** changes. This event allows the operation to be canceled.|
|**SelectedIndexChanged**|This event fires when the selected index property changes.|
|**SelectedValueChanged**|This event fires only if the **SelectedValue** has really changed. For example it will not fire if the previously selected item has the same value as the newly selected item.|
|**ItemDataBinding**|This event fires before a **RadListDataItem** is data bound. This happens when the **DataSource** property is assigned and the event fires for every item provided by the data source. This event allows a custom **RadListDataItem** to be provided by the user.|
|**ItemDataBound**|	This event fires after a **RadListDataItem** is data bound. This happens when the **DataSource** property is assigned and the event is fired for every item provided by the data source.|
|**DataBindingComplete**|Fires after data binding operation has finished.|


# See Also
* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.raddomainupdown.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.raddomainupdown.html#methods)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.raddomainupdown.html#events)
* [Getting Started]({%slug winforms/editors/domainupdown/getting-started%})
* [Features]({%slug winforms/editors/domainupdown/features%})
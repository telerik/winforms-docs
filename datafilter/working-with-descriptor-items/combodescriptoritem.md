---
title: Combo Descriptor Item
page_title: Combo Descriptor Item | RadDataFilter
description: RadDataFilter allows you to build complex filter expressions based on the data and collection type of the source fields. 
slug: winforms/datafilter/populating-with-data/combo-descriptor-item
tags: data, filter
published: True
position: 2
---

# DataFilterComboDescriptorItem

The __DataFilterComboDescriptorItem__ uses a RadDropDownList for edition the filter value and allows the user to choose from a predefined set of values. 

This item is auto-generated only if the data type of underling field is of type "enum". If you want to use such item for a other data field you need to add it manually. This can be achieved at design time or by adding the item in the code.

### Adding DataFilterComboDescriptorItem at design time

The *RadItem Collection Editor* that allows you to edit the items at design time can be shown either via the **Smart Tag** or by the **Descriptors** property in the *Properties* section in Visual Studio. It allows you add/remove/modify  the items. The DataFilterComboDescriptorItem has three properties that you need to set:

* __DataSoure:__ The source for the items displayed in the RadDropDownList.
* __DisplayMemeber:__ The field whose values should be displayed in the RadDropDownList.
* __ValueMember:__ The field whose value should be used for the filter expression.

>caption Figure 1: Adding DataFilterComboDescriptorItem at design time

![datafilter-combo-descriptor-item 001](images/datafilter-combo-descriptor-item001.png)

### Adding DataFilterComboDescriptorItem programmatically

The following snippet shows how you can add DataFilterComboDescriptorItem in the code:

{{source=..\SamplesCS\DataFilter\DataFilterEditing.cs region=AddComboItem}} 
{{source=..\SamplesVB\DataFilter\DataFilterEditing.vb region=AddComboItem}}


{{endregion}}

When this is done you can add new expression item and choose from the items:

>caption Figure 2: DataFilterComboDescriptorItem at runtime.

![datafilter-combo-descriptor-item 002](images/datafilter-combo-descriptor-item002.png)
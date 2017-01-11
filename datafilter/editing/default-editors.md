---
title: Default Editors
page_title: Default Editors | RadDataFilter
description: RadDataFilter allows you to build complex filter expressions based on the data and collection type of the source fields.  
slug: winforms/datafilter/editing/default-editors
tags: data, filter
published: True
position: 0
---

# Default Editors

After you populate **RadDataFilter** with descriptor items, you are ready to build a filter expression. For each new filter condition, a filter node is added. Each filter node is composed of a field name, a filter operator and a value. As soon as you click one of the filter node's elements, the editor for this element is activated.

![datafilter-default-editors 001](images/datafilter-default-editors001.png)

The default editor for the field name element and for the operator element is **TreeViewDropDownListEditor** because it offers you to select an option from a predefined list of available items. When you try to add a new filter node or modify an existing one, the appropriate editor is activated for the value element considering the DataFilterDescriptorItem.**DescriptorType**. You can find listed below the default editor types:

|Editor|Description|
|----|----|
|**TreeViewDropDownListEditor**|Relevant for the field name element and for the operator element.|
|**DataFilterCheckboxEditor**|Relevant for *Boolean* values.|
|**TreeViewDateTimeEditor**|Relevant for *DateTime* values.|
|**TreeViewSpinEditor**|Relevant for numeric values.|
|**TreeViewTextBoxEditor**|Default editor for the rest of the value types.|

# See Also

* [Events]({%slug winforms/datafilter/editing/events%})	
* [Custom Editors]({%slug winforms/datafilter/editing/custom-editors%})			

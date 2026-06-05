---
title: Handle Unsupported Values
page_title: Handle unsupported values - RadDataEntry
description: Handle unsupported values
slug: winforms/dataentry/how-to/handle-unsupported-values
tags: handle,unsupported,values
published: True
position: 0
previous_url: dataentry-how-to-handle-unsupported-values
---

# Handle Unsupported Values

There are cases where an editor might not support some values from your data source. A good example of this is if when you have a __DateTime__ field in your data and this field contains a record with *DBNull* value. __RadDataEntry__  will resolve the field type to __DateTime__ and will create a __RadDateTimePicker__ editor for it, however, since it does not support displaying *DBNull* value as data, it does not know how to handle it and the simple data binding will fail.

To handle this case, you need to tell the __RadDateTimePicker__, how to interpret this value. This can be done by using the [Format](http://msdn.microsoft.com/en-us/library/system.windows.forms.binding.format(v=vs.110).aspx) event of the binding.

The following example demonstrates how to do that:

1\. In the __BindingCreating__ event of the control you can tell which property to bind the field to. Here you should bind the "DateTime" field from the data source to the "NullableValue" property of __RadDateTimePicker__ (as it supports *null* values).

#### Map Nullable Property

<snippet id='dataentry-handle-unsupported-values-bindingcreating-cs'/>
<snippet id='dataentry-handle-unsupported-values-bindingcreating-vb'/>




2\. Then in the __BindingCreated__ event you will enable the binding formatting and will subscribe to its __Format__ event.  

#### Enable Formatting

<snippet id='dataentry-handle-unsupported-values-bindingcreated-cs'/>
<snippet id='dataentry-handle-unsupported-values-bindingcreated-vb'/>




3\. At the end we just need to interpret the *DBNull*  values as *null* values:

#### Evaluate DBNull

<snippet id='dataentry-handle-unsupported-values-format-cs'/>
<snippet id='dataentry-handle-unsupported-values-format-vb'/>



# See Also

 * [Structure]({%slug  winforms/dataentry/control-element-structure%})
 * [Getting Started]({%slug  winforms/dataentry/getting-started%})
 * [Properties, events and attributes]({%slug  winforms/dataentry/properties,-events-and-attributes%})
 * [Themes]({%slug winforms/dataentry/themes%})
 * [Change the editor to RadDropDownList]({%slug  winforms/dataentry/how-to/change-the-editor-to-a-bound-raddropdownlist%})
 * [How to Use RadSpinEditor for Nullable Numeric Fields in RadDataEntry]({%slug dataentry-nullable-fields%})


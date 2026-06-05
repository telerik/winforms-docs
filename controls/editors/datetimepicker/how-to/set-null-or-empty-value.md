---
title: Set null or empty value
page_title: Set null or empty value - RadDateTimePicker
description: This article shows how you can set the control value to null.
slug: winforms/editors/datetimepicker/how-to/set-null-or-empty-value
tags: set,null,or,empty,value
published: True
position: 0
previous_url: editors-datetimepicker-how-to-set-null-or-empty-value
---

# Set null or empty value

__RadDateTimePicker__ now has __NullableValue__ property which supports *null* value (The default __Value__ property is of type DateTime which is value type and it cannot be set to *null*). The __NullableValue__ property can be set to *null* as any other reference type, the built-in __SetToNullValue__ method can be used as well:

#### Set to null 

<snippet id='editors-datetimepicker1-settonullvalue-cs' />
<snippet id='editors-datetimepicker1-settonullvalue-vb' />



If you set the __NullText__ property, you can conditionally display a text based on the selected date. The null text will be displayed when the __NullableValue__ is null or when the __NullDate__ property value matches the current value.

#### Setting the NullText property of RadDateTimePicker 

<snippet id='editors-datetimepicker1-nulltext-cs' />
<snippet id='editors-datetimepicker1-nulltext-vb' />



When the __NullDate__ property value is equal to the control value no text will be displayed in the text box part (if the __NullText__ is set it will appear). The default value of the property is __MinDate__, which is *1/1/1900*. Below is the code snippet for setting __NullDate__ to a specific date (*01-01-2000*):

#### Setting the NullDate property of RadDateTimePicker 

<snippet id='editors-datetimepicker1-nulldate-cs' />
<snippet id='editors-datetimepicker1-nulldate-vb' />



# See Also

[Design Time]({%slug winforms/editors/datetimepicker/designtime%})
[Free Form Date Time Parsing]({%slug winforms/editors/datetimepicker/free-form-date-time-parsing%})
[MaskDateTimeProvider]({%slug winforms/editors/maskeddatetimeprovider%})
[Properties]({%slug winforms/editors/datetimepicker/raddatetimepicker-properties%})
[Structure]({%slug winforms/editors/datetimepicker%})

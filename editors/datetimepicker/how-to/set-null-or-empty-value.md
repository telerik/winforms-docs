---
title: Set null or empty value
page_title: Set null or empty value | UI for WinForms Documentation
description: Set null or empty value
slug: winforms/editors/datetimepicker/how-to/set-null-or-empty-value
tags: set,null,or,empty,value
published: True
position: 0
---

# Set null or empty value
 
## 

__RadDateTimePicker__ now has __NullableValue__ property which supports *null* value (The default Value property is of type DateTime which is value type and it cannot be set to *null*). The __NullableValue__ property can be set to *null* as any other reference type, the built-in __SetToNullValue__ method can be used as well:

#### Set to null 

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=SetToNullValue}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=SetToNullValue}} 

````C#
this.radDateTimePicker1.NullableValue = null;
this.radDateTimePicker1.SetToNullValue();

````
````VB.NET
Me.RadDateTimePicker1.NullableValue = Nothing
Me.RadDateTimePicker1.DateTimePickerElement.SetToNullValue()

````

{{endregion}} 
 
If you set the __NullText__ property, you can conditionally display a text based on the selected date. The null text will be displayed when the __NullableValue__ is null or when the __NullDate__ property value matches the current value.

#### Setting the NullText property of RadDateTimePicker 

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=NullText}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=NullText}} 

````C#
this.radDateTimePicker1.NullText = "No date selected";

````
````VB.NET
Me.RadDateTimePicker1.NullText = "No date selected"

````

{{endregion}} 
 
When the __NullDate__ property value is equal to the control value no text will be displayed in the text box part (if the NullText is set it will appear). The default value of the property is __MinDate__, which is *1/1/1900*. Below is the code snippet for setting __NullDate__ to a specific date (*01-01-2000*):

#### Setting the NullDate property of RadDateTimePicker 

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=NullDate}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=NullDate}} 

````C#
this.radDateTimePicker1.DateTimePickerElement.NullDate = new DateTime(2000, 01, 01);

````
````VB.NET
Me.RadDateTimePicker1.DateTimePickerElement.NullDate = New DateTime(2000, 1, 1)

````

{{endregion}} 




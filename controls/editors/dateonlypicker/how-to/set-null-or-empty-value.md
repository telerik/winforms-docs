---
title: Set null or empty value
page_title: Set null or empty value - RadDateOnlyPicker
description: This article shows how you can set the control value to null.
slug: editors-dateonlypicker-how-to-set-null-or-empty-value
tags: set,null,or,empty,value, netcore
published: True
position: 0
---

# Set null or empty value

__RadDateOnlyPicker__ has __NullableValue__ property which supports *null* value (The default __Value__ property is of type DateOnly which is value type and it cannot be set to *null*). The __NullableValue__ property can be set to *null* as any other reference type, the built-in __SetToNullValue__ method can be used as well:

#### Set to null 

{{source=..\SamplesCS\Editors\DateOnlyPicker.cs region=SetToNullValue}} 
{{source=..\SamplesVB\Editors\DateOnlyPicker.vb region=SetToNullValue}} 

````C#
this.radDateOnlyPicker1.NullableValue = null;
this.radDateOnlyPicker1.SetToNullValue();

````
````VB.NET
Me.RadDateOnlyPicker1.NullableValue = Nothing
Me.RadDateOnlyPicker1.SetToNullValue()

````

{{endregion}} 
 
If you set the __NullText__ property, you can conditionally display a text based on the selected date. The null text will be displayed when the __NullableValue__ is null or when the __NullDate__ property value matches the current value.

#### Setting the NullText property of RadDateOnlyPicker

{{source=..\SamplesCS\Editors\DateOnlyPicker.cs region=NullText}} 
{{source=..\SamplesVB\Editors\DateOnlyPicker.vb region=NullText}} 

````C#
this.radDateOnlyPicker1.NullText = "No date selected";

````
````VB.NET
Me.RadDateOnlyPicker1.NullText = "No date selected"

````

{{endregion}} 
 
When the __NullDate__ property value is equal to the control value no text will be displayed in the text box part (if the __NullText__ is set it will appear). The default value of the property is __MinDate__, which is *1/1/1*. Below is the code snippet for setting __NullDate__ to a specific date (*01-01-2024*):

#### Setting the NullDate property of RadDateOnlyPicker

{{source=..\SamplesCS\Editors\DateOnlyPicker.cs region=NullDate}} 
{{source=..\SamplesVB\Editors\DateOnlyPicker.vb region=NullDate}} 

````C#
this.radDateOnlyPicker1.DateOnlyPickerElement.NullDate = new DateOnly(2024, 01, 01);

````
````VB.NET
Me.RadDateOnlyPicker1.DateOnlyPickerElement.NullDate = New DateOnly(2024, 1, 1)

````

{{endregion}} 


## See Also

[Design Time]({%slug editors-dateonlypicker-design-time%})
[MaskDateOnlyProvider]({%slug editors-features-maskdateonlyprovider%})
[Properties]({%slug editors-dateonlypicker-properties%})
[Structure]({%slug editors-dateonlypicker-structure%})

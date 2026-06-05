---
title: Properties and Events
page_title: Properties and Events - WinForms DateOnlyPicker Control
description: Learn the significant properties for WinForms RadDateOnlyPicker.
slug: editors-dateonlypicker-properties
tags: raddateonlypicker,properties, netcore
published: True
position: 4
---

# Properties

The significant properties for __RadDateOnlyPicker__ are:        

* __Value:__ This is the date selected from the picker and can be set in code or from the drop down calendar in the `Properties` window.

#### Setting the value of RadDateOnlyPicker 

<snippet id='editors-dateonlypicker-value-cs' />
<snippet id='editors-dateonlypicker-value-vb' />



* __MinDate, MaxDate:__ These two __DateOnly__ type properties form the bounds that dates can be selected from in the picker. Attempts to select outside these bounds are ignored.

#### Setting the MinDate property of RadDateOnlyPicker 

<snippet id='editors-dateonlypicker-minmaxdate-cs' />
<snippet id='editors-dateonlypicker-minmaxdate-vb' />



* __NullableValue__ is same as the __Value__ property, but the __NullableValue__ property is of type *Nullable DateOnly*. It can be *null* – in this case if **RadDateOnlyPicker** is not selected, it will show its __NullText__. In case **RadDateOnlyPicker** is selected, it will show the last entered date – this allows the end-user to enter and edit the date.

#### Setting the NullableValue property of RadDateOnlyPicker 

<snippet id='editors-dateonlypicker-nullablevalue-cs' />
<snippet id='editors-dateonlypicker-nullablevalue-vb' />



__NullableValue__ can be bound to a business object that exposes a property of type nullable DateOnly. The code below demonstrates how to do this:
           
#### Bind the NullableValue to a business object. 

<snippet id='editors-dateonlypicker-nullablebinding-cs' />
<snippet id='editors-dateonlypicker-nullablebinding-vb' />



* __NullText:__ This property defines the text that will be displayed in **RadDateOnlyPicker** when the __NullableValue__ property is set to *null* and **RadDateOnlyPicker** is not in focus. By default, __NullText__ is an empty string.

#### Setting the NullText property of RadDateOnlyPicker 

<snippet id='editors-dateonlypicker-nulltext-cs' />
<snippet id='editors-dateonlypicker-nulltext-vb' />



* __TextBoxElement__: Gets an instance of RadTextBoxElement.

* __ArrowButton__: Gets an instance of RadArrowButtonElement.

* __CheckBox__: Gets an instance of RadCheckBoxElement.

* __CurrentBehavior__: Gets an instance of RadDateOnlyPickerCalendar.

* __AutoSelectNextPart__: This property controls whether or not the next date part will be automatically selected when the user types.

* __ReadOnly__: Gets or sets a value indicating whether RadDateOnlyPicker is read-only.

* __ShowUpDown__: Indicates whether a spin box rather than a drop down calendar is displayed for editing the control's value.

* __Culture__: Determines the language that the drop down calendar and text box will display.  See the [Internationalization]({%slug editors-dateonlypicker-internationalization%}) and [Date Formats]({%slug editors-dateonlypicker-features-date-formats%}) topic for more information.   

* __NullDate__: The DateOnly value assigned to the date picker when the Value is null.

* __IsDropDownShown__: Gets if the dropdown is shown.

* __Checked__: When ShowCheckBox is true, determines that the user has selected a value.

* __CustomFormat:__ A format string that determines the display of the date in the picker edit. See the [Internationalization]({%slug editors-dateonlypicker-internationalization%}) and [Date Formats]({%slug editors-dateonlypicker-features-date-formats%}) topic for more information.
 
* __Format__: The __DateOnlyPickerFormat__ enumeration values are __Long__, __Short__, __Time__ and __Custom__. Set __Format__ to __Custom__ to enable the __CustomFormat__ property.

> The __Time__ option of the __DateTimePickerFormat__ enumeration is not applicable for the RadDateOnlyPicker control. The __Time__ option will be ignored when set to the RadDateOnlyPicker control Format property.         

* __ThemeName__: Sets the overall look of the control. Choose from a list of predefined themes or create your own using the __Visual Style Builder__ available from the RadDateOnlyPicker's __Smart Tag__.          

* __CalendarSize__: Gets or sets the size of the **RadCalendar** in the **RadDateOnlyPicker** drop-down.

* __CalendarLocation__: Gets or sets the location of the drop down showing the calendar.

* __Calendar__: Get nested RadCalendar in the popup part of the RadDateOnlyPicker.


## Events

|Event|Description|
|----|----|
|**MaskProviderCreated**|Occurs when MaskProvider has been created This event will be fired multiple times because the provider is created when some properties changed Properties are: Mask, Culture, MaskType and more.|
|**ValueChanged**|Occurs when the value of the control has changed.|
|**NullableValueChanged**|Occurs when the value of the control has changed.|
|**FormatChanged**|Occurs when the format of the control has changed.|
|**ValueChanging**|Occurs when the value of the control is changing.|
|**Opened**|Occurs when the drop down is opened.|
|**Opening**|Occurs when the drop down is opening.|
|**Closing**|Occurs when the drop down is closing.|
|**Closed**|Occurs when the drop down is closed.|
|**ToggleStateChanging**|Occurs before the CheckBox's state changes.|
|**ToggleStateChanged**|Occurs when the CheckBox's state changes.|
|**CheckedChanged**|Occurs when the value of the checkbox in the editor is changed|
          
## See Also

* [Design Time]({%slug editors-dateonlypicker-design-time%})
* [MaskDateTimeProvider]({%slug winforms/editors/maskeddatetimeprovider%})
* [Structure]({%slug editors-dateonlypicker-structure%})

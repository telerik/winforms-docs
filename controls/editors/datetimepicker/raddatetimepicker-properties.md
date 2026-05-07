---
title: Properties
page_title: Properties - WinForms DateTimePicker Control
description: Learn the significant properties for WinForms RadDateTimePicker.
slug: winforms/editors/datetimepicker/raddatetimepicker-properties
tags: raddatetimepicker,properties
published: True
position: 4
previous_url: editors-datetimepicker-basics-raddatetimepicker-properties
---

## Properties

The significant properties for __RadDateTimePicker__ are:        

* __Value:__ This is the date selected from the picker and can be set in code or from the drop down calendar in the `Properties` window.

#### Setting the value of RadDateTimePicker 

<snippet id='editors-datetimepicker1-value-cs' />
<snippet id='editors-datetimepicker1-value-vb' />

* __MinDate, MaxDate:__ These two dates form the bounds that dates can be selected from in the picker. Attempts to select outside these bounds are ignored. The example below sets the __MinDate__ property to be the first day of the current month.

#### Setting the MinDate property of RadDateTimePicker 

<snippet id='editors-datetimepicker1-mindate-cs' />
<snippet id='editors-datetimepicker1-mindate-vb' />

* __NullText:__ This property defines the text that will be displayed in **RadDateTimePicker** when the __NullableValue__ property is set to *null* and **RadDateTimePicker** is not in focus. By default, __NullText__ is an empty string.

#### Setting the NullText property of RadDateTimePicker  
 
* __ShowTimePicker:__ Gets or sets a value indicating whether the time picker is displayed alongside the calendar in the drop-down popup of __RadDateTimePicker__. The default value is *false*. When set to *true*, selecting a date in the calendar does not auto-close the popup, allowing the user to also select a time. 
 
<snippet id='editors-datetimepicker1-nulltext-cs' />
<snippet id='editors-datetimepicker1-nulltext-vb' />

* __ShowTimePicker:__ this property determines the display of __TimePicker__ in popup element of __RadDateTimePicker__. 

<snippet id='editors-datetimepicker2-showtimepicker1-cs' />
<snippet id='editors-datetimepicker2-showtimepicker1-vb' />

* __Format:__ The __DateTimePickerFormat__ enumeration values are __Long__, __Short__, __Time__ and __Custom__. Set __Format__ to __Custom__ to enable the __CustomFormat__ property.
          

* __CustomFormat:__ A format string that determines the display of the date in the picker edit. See the [Internationalization]({%slug winforms/editors/datetimepicker/internationalization/internationalization%}) and [Date Formats]({%slug winforms/editors/datetimepicker/internationalization/date-formats%}) topic for more information.
          

* __Culture:__ Determines the language that the drop down calendar and text box will display.  See the [Internationalization]({%slug winforms/editors/datetimepicker/internationalization/internationalization%}) and [Date Formats]({%slug winforms/editors/datetimepicker/internationalization/date-formats%}) topic for more information.
          

* __ThemeName:__ Sets the overall look of the control. Choose from a list of predefined themes or create your own using the __Visual Style Builder__ available from the RadDateTimePicker's __Smart Tag__.
          

* __CalendarSize:__ Gets or sets the size of the drop-down popup in __RadDateTimePicker__. The default value is *new Size(100, 156)* which applies automatic sizing. Setting a custom value overrides the calculated drop-down dimensions.

#### Setting the CalendarSize property of RadDateTimePicker

````C#
this.radDateTimePicker1.DateTimePickerElement.CalendarSize = new Size(300, 300);

````
````VB.NET
Me.radDateTimePicker1.DateTimePickerElement.CalendarSize = New Size(300, 300)

````
          

* __NullableValue__ is same as the __Value__ property, but the __NullableValue__ property is of type *Nullable DateTime*. It can be *null* – in this case if **RadDateTimePicker** is not selected, it will show its __NullText__. In case **RadDateTimePicker** is selected, it will show the last entered date – this allows the end-user to enter and edit the date.

#### Setting the NullableValue property of RadDateTimePicker 

<snippet id='editors-datetimepicker1-nullablevalue-cs' />
<snippet id='editors-datetimepicker1-nullablevalue-vb' />

__NullableValue__ can be bound to a business object that exposes a property of type nullable DateTime. The code below demonstrates how to do this:
           
#### Bind the NullableValue to a business object. 

<snippet id='editors-datetimepicker1-nullablebinding-cs' />
<snippet id='editors-datetimepicker1-nullablebinding-vb' />

* __Editing Time in RadDateTimePicker__

To use **RadDateTimePicker** as date and time editor you need to enable the embedded __TimePicker__ and set the desired mask that shows the time parts. 

#### Enable the time picker.

<snippet id='editors-datetimepicker2-showtimepicker2-cs' />
<snippet id='editors-datetimepicker2-showtimepicker2-vb' />

# See Also

* [Design Time]({%slug winforms/editors/datetimepicker/designtime%})
* [Free Form Date Time Parsing]({%slug winforms/editors/datetimepicker/free-form-date-time-parsing%})
* [MaskDateTimeProvider]({%slug winforms/editors/maskeddatetimeprovider%})
* [Structure]({%slug winforms/editors/datetimepicker%})
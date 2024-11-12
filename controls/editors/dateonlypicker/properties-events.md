---
title: Properties and Events
page_title: Properties and Events - WinForms DateOnlyPicker Control
description: Learn the significant properties for WinForms RadDateOnlyPicker.
slug: editors-dateonlypicker-properties
tags: raddateonlypicker,properties, netcore
published: True
position: 4
---

## Properties

The significant properties for __RadDateOnlyPicker__ are:        

* __Value:__ This is the date selected from the picker and can be set in code or from the drop down calendar in the `Properties` window.

#### Setting the value of RadDateOnlyPicker 

{{source=..\SamplesCS\Editors\DateOnlyPicker.cs region=Value}} 
{{source=..\SamplesVB\Editors\DateOnlyPicker.vb region=Value}} 

````C#
this.radDateOnlyPicker1.Value = new DateOnly(2024,1,1);

````
````VB.NET
Me.RadDateOnlyPicker1.Value = New DateOnly(2024,1,1)

````

{{endregion}} 
 
* __MinDate, MaxDate:__ These two __DateOnly__ type properties form the bounds that dates can be selected from in the picker. Attempts to select outside these bounds are ignored.

#### Setting the MinDate property of RadDateOnlyPicker 

{{source=..\SamplesCS\Editors\DateOnlyPicker.cs region=MinMaxDate}} 
{{source=..\SamplesVB\Editors\DateOnlyPicker.vb region=MinMaxDate}} 

````C#
this.radDateOnlyPicker1.MinDate = new DateOnly(2024,10,1);
this.radDateOnlyPicker1.MaxDate = new DateOnly(2024,10,31);

````
````VB.NET
Me.RadDateOnlyPicker1.MinDate = New DateOnly(2024,10,1)
Me.RadDateOnlyPicker1.MaxDate = New DateOnly(2024,10,31)

````

{{endregion}} 
 
* __NullableValue__ is same as the __Value__ property, but the __NullableValue__ property is of type *Nullable DateOnly*. It can be *null* – in this case if **RadDateOnlyPicker** is not selected, it will show its __NullText__. In case **RadDateOnlyPicker** is selected, it will show the last entered date – this allows the end-user to enter and edit the date.

#### Setting the NullableValue property of RadDateOnlyPicker 

{{source=..\SamplesCS\Editors\DateOnlyPicker.cs region=NullableValue}} 
{{source=..\SamplesVB\Editors\DateOnlyPicker.vb region=NullableValue}} 

````C#
this.radDateOnlyPicker1.NullableValue = null;

````
````VB.NET
Me.RadDateOnlyPicker1.NullableValue = Nothing

````

{{endregion}} 
  
__NullableValue__ can be bound to a business object that exposes a property of type nullable DateOnly. The code below demonstrates how to do this:
           
#### Bind the NullableValue to a business object. 

{{source=..\SamplesCS\Editors\DateOnlyPicker.cs region=NullableBinding}} 
{{source=..\SamplesVB\Editors\DateOnlyPicker.vb region=NullableBinding}} 

````C#
public class MyObject
{
    public MyObject(DateOnly? _endTime)
    {
        this._endTime = _endTime;
    }
    private DateOnly? _endTime;
    public DateOnly? EndTime
    {
        get { return _endTime; }
        set { _endTime = value; }
    }
}

protected override void OnLoad(EventArgs e)
{
    base.OnLoad(e);
    MyObject myObject = new MyObject(DateOnly.FromDateTime(DateTime.Now.AddDays(1)));
    this.radDateOnlyPicker1.DataBindings.Add(new Binding("NullableValue", myObject, "EndTime", true, DataSourceUpdateMode.OnPropertyChanged));
}

````
````VB.NET
Public Class MyObject
    Public Sub New(ByVal _endTime? As DateOnly)
        Me._endTime = _endTime
    End Sub
    Private _endTime? As DateOnly
    Public Property EndTime() As DateOnly?
        Get
            Return _endTime
        End Get
        Set(ByVal value? As DateOnly)
            _endTime = value
        End Set
    End Property
End Class

Protected Overrides Sub OnLoad(ByVal e As EventArgs)
    MyBase.OnLoad(e)
    Dim myObject As MyObject = New MyObject(DateOnly.FromDateTime(DateTime.Now.AddDays(1)))
    Me.radDateOnlyPicker1.DataBindings.Add(New Binding("NullableValue", myObject, "EndTime", True, DataSourceUpdateMode.OnPropertyChanged))
End Sub

````

{{endregion}} 
 
* __NullText:__ This property defines the text that will be displayed in **RadDateOnlyPicker** when the __NullableValue__ property is set to *null* and **RadDateOnlyPicker** is not in focus. By default, __NullText__ is an empty string.

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
 
* __TextBoxElement__: Gets an instance of RadTextBoxElement.

* __ArrowButton__: Gets an instance of RadArrowButtonElement.

*__CheckBox__: Gets an instance of RadCheckBoxElement.

*__CurrentBehavior__: Gets an instance of RadDateOnlyPickerCalendar.

*__AutoSelectNextPart__: This property controls whether or not the next date part will be automatically selected when the user types.

*__ReadOnly__: Gets or sets a value indicating whether RadDateOnlyPicker is read-only.

*__ShowUpDown__: Indicates whether a spin box rather than a drop down calendar is displayed for editing the control's value.

* __Culture:__ Determines the language that the drop down calendar and text box will display.  See the [Internationalization]({%slug editors-dateonlypicker-internationalization%}) and [Date Formats]({%slug editors-dateonlypicker-features-date-formats%}) topic for more information.   

*__NullDate__: The DateOnly value assigned to the date picker when the Value is null.

*__IsDropDownShown__: Gets if the dropdown is shown.

*__Checked__: When ShowCheckBox is true, determines that the user has selected a value.

*__CustomFormat:__ A format string that determines the display of the date in the picker edit. See the [Internationalization]({%slug editors-dateonlypicker-internationalization%}) and [Date Formats]({%slug editors-dateonlypicker-features-date-formats%}) topic for more information.
 
* __Format:__ The __DateOnlyPickerFormat__ enumeration values are __Long__, __Short__, __Time__ and __Custom__. Set __Format__ to __Custom__ to enable the __CustomFormat__ property.

> The __Time__ option of the __DateTimePickerFormat__ enumeration is not applicable for the RadDateOnlyPicker control. The __Time__ option will be ignored when set to the RadDateOnlyPicker control Format property.         

* __ThemeName:__ Sets the overall look of the control. Choose from a list of predefined themes or create your own using the __Visual Style Builder__ available from the RadDateOnlyPicker's __Smart Tag__.          

* __CalendarSize:__ Gets or sets the size of the **RadCalendar** in the **RadDateOnlyPicker** drop-down.

* __CalendarLocation:__ Gets or sets the location of the drop down showing the calendar.

* __Calendar:__ Get nested RadCalendar in the popup part of the RadDateOnlyPicker.


## RadNotifyIcon's Events

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
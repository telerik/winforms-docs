---
title: Properties
page_title: Properties - RadDateTimePicker
description: This article describes the significant properties for RadDateTimePicker.
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

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=Value}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=Value}} 

````C#
this.radDateTimePicker1.Value = DateTime.Today.AddDays(1);

````
````VB.NET
Me.RadDateTimePicker1.Value = DateTime.Now.AddDays(1)

````

{{endregion}} 
 

* __MinDate, MaxDate:__ These two dates form the bounds that dates can be selected from in the picker. Attempts to select outside these bounds are ignored. The example below sets the __MinDate__ to be the first day of the current month.

#### Setting the MinDate property of RadDateTimePicker 

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=MinDate}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=MinDate}} 

````C#
this.radDateTimePicker1.MinDate = DateTime.Today.AddDays(-DateTime.Today.Day);

````
````VB.NET
Me.RadDateTimePicker1.MinDate = DateTime.Today.AddDays(-DateTime.Today.Day)

````

{{endregion}} 
 
* __NullText:__ This property defines the text that will be displayed in RadDateTimePicker when the __NullableValue__ property is set to null and RadDateTimePicker is not in focus. By default, __NullText__ is an empty string.

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
 
* __ShowTimePicker:__ this properties determines the display of __TimePicker__ in popup element of __RadDateTimePicker__. 

{{source=..\SamplesCS\Editors\DateTimePicker2.cs region=ShowTimePicker1}} 
{{source=..\SamplesVB\Editors\DateTimePicker2.vb region=ShowTimePicker1}} 

````C#
this.radDateTimePicker1.DateTimePickerElement.ShowTimePicker = true;

````
````VB.NET
Me.radDateTimePicker1.DateTimePickerElement.ShowTimePicker = True

````

{{endregion}} 
 
* __Format:__ The __DateTimePickerFormat__ enumeration values are __Long__, __Short__, __Time__ and __Custom__. Set __Format__ to __Custom__ to enable the __CustomFormat__ property.
          

* __CustomFormat:__ A format string that determines the display of the date in the picker edit. See the [Internationalization]({%slug winforms/editors/datetimepicker/internationalization/internationalization%}) and [Date Formats]({%slug winforms/editors/datetimepicker/internationalization/date-formats%}) topic for more information.
          

* __Culture:__ Determines the language that the drop down calendar and text box will display.  See the [Internationalization]({%slug winforms/editors/datetimepicker/internationalization/internationalization%}) and [Date Formats]({%slug winforms/editors/datetimepicker/internationalization/date-formats%}) topic for more information.
          

* __ThemeName:__ Sets the overall look of the control. Choose from a list of predefined themes or create your own using the __Visual Style Builder__ available from the __RadDateTimePicker Smart Tag__.
          

* __CalendarSize:__ Gets or sets the size of the RadCalendar in the RadDateTimePicker drop-down.
          

* __NullableValue__ is same as the __Value__ property, but the __NullableValue__ property is of type *Nullable DateTime*. It can be null – in this case if RadDateTimePicker is not selected it will show its __NullText__. In case RadDateTimePicker is selected, it will show the last entered date – this allows the end-user to enter and edit the date.

#### Setting the NullableValue property of RadDateTimePicker 

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=NullableValue}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=NullableValue}} 

````C#
this.radDateTimePicker1.NullableValue = null;

````
````VB.NET
Me.RadDateTimePicker1.NullableValue = Nothing

````

{{endregion}} 
  
__NullableValue__ can be bound to a business object that exposes a property of type nullable DateTime. The code below demonstrates how to do this:
           
#### Bind the NullableValue to a business object. 

{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=NullableBinding}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=NullableBinding}} 

````C#
public class MyObject
{
    public MyObject(DateTime? _endTime)
    {
        this._endTime = _endTime;
    }
    private DateTime? _endTime;
    public DateTime? EndTime
    {
        get { return _endTime; }
        set { _endTime = value; }
    }
}
private BindingList<MyObject> myList;
protected override void OnLoad(EventArgs e)
{
    base.OnLoad(e);
    myList = new BindingList<MyObject>();
    myList.Add(new MyObject(null));
    myList.Add(new MyObject(DateTime.Now));
    myList.RaiseListChangedEvents = true;
    this.radDateTimePicker1.DataBindings.Add(new Binding("NullableValue", this.myList, "EndTime", true, DataSourceUpdateMode.OnPropertyChanged));
}

````
````VB.NET
Public Class MyObject
    Public Sub New(ByVal _endTime? As Date)
        Me._endTime = _endTime
    End Sub
    Private _endTime? As Date
    Public Property EndTime() As Date?
        Get
            Return _endTime
        End Get
        Set(ByVal value? As Date)
            _endTime = value
        End Set
    End Property
End Class
Private myList As BindingList(Of MyObject)
Protected Overrides Sub OnLoad(ByVal e As EventArgs)
    MyBase.OnLoad(e)
    myList = New BindingList(Of MyObject)()
    myList.Add(New MyObject(Nothing))
    myList.Add(New MyObject(Date.Now))
    myList.RaiseListChangedEvents = True
    Me.RadDateTimePicker1.DataBindings.Add(New Binding("NullableValue", Me.myList, "EndTime", True, DataSourceUpdateMode.OnPropertyChanged))
End Sub

````

{{endregion}} 
 
* __Editing Time in RadDateTimePicker.__

To use RadDateTimePicker as date and time editor you need to enable the embedded __TimePicker__ and set the desired mask that shows the time parts. 

#### Enable the time picker.

{{source=..\SamplesCS\Editors\DateTimePicker2.cs region=ShowTimePicker2}} 
{{source=..\SamplesVB\Editors\DateTimePicker2.vb region=ShowTimePicker2}} 

````C#
this.radDateTimePicker1.DateTimePickerElement.ShowTimePicker = true;
this.radDateTimePicker1.Format = DateTimePickerFormat.Custom;
this.radDateTimePicker1.CustomFormat = "MMM - dd - yyyy hh:mm tt";
(this.radDateTimePicker1.DateTimePickerElement.CurrentBehavior as RadDateTimePickerCalendar).DropDownMinSize = new System.Drawing.Size(330, 250);

````
````VB.NET
Me.radDateTimePicker1.DateTimePickerElement.ShowTimePicker = True
Me.radDateTimePicker1.Format = DateTimePickerFormat.[Custom]
Me.radDateTimePicker1.CustomFormat = "MMM - dd - yyyy hh:mm tt"
TryCast(Me.radDateTimePicker1.DateTimePickerElement.CurrentBehavior, RadDateTimePickerCalendar).DropDownMinSize = New System.Drawing.Size(330, 250)

````

{{endregion}} 
 

# See Also

* [Design Time]({%slug winforms/editors/datetimepicker/designtime%})
* [Free Form Date Time Parsing]({%slug winforms/editors/datetimepicker/free-form-date-time-parsing%})
* [MaskDateTimeProvider]({%slug winforms/editors/maskeddatetimeprovider%})
* [Structure]({%slug winforms/editors/datetimepicker%})
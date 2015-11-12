---
title: RadDateTimePicker Properties
page_title: RadDateTimePicker Properties | UI for WinForms Documentation
description: RadDateTimePicker Properties
slug: winforms/editors/datetimepicker/raddatetimepicker-properties
tags: raddatetimepicker,properties
published: True
position: 2
---

# RadDateTimePicker Properties
 

## Properties

The significant properties for __RadDateTimePicker__ are:
        

* __Value__: This is the date selected from the picker and can be set in code or from the drop down calendar in the Properties window.

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
 

* __MinDate, MaxDate__: These two dates form the bounds that dates can be selected from in the picker. Attempts to select outside these bounds are ignored. The example below sets the MinDate to be the first day of the current month.

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
 
* __NullText__: This property defines the text that will be displayed in RadDateTimePicker when the NullableValue property is set to null and RadDateTimePicker is not in focus. By default, __NullText__ is an empty string.

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
 
* __ShowTimePicker__: this properties determines the display of __TimePicker__ in popup element of __RadDateTimePicker__. 

{{source=..\SamplesCS\Editors\DateTimePicker2.cs region=ShowTimePicker1}} 
{{source=..\SamplesVB\Editors\DateTimePicker2.vb region=ShowTimePicker1}} 

````C#
this.radDateTimePicker1.DateTimePickerElement.ShowTimePicker = true;

````
````VB.NET
Me.radDateTimePicker1.DateTimePickerElement.ShowTimePicker = True

````

{{endregion}} 
 
* __Format__: The __DateTimePickerFormat__ enumeration values are __Long__, __Short__, __Time__ and __Custom__. Set __Format__ to __Custom__ to enable the __CustomFormat__ property.
          

* __CustomFormat__:A format string that determines the display of the date in the picker edit. See the [Internationalization]({%slug winforms/editors/datetimepicker/internationalization/internationalization%}) and [Date Formats]({%slug winforms/editors/datetimepicker/internationalization/date-formats%}) topic for more information.
          

* Culture determines the language that the drop down calendar and edit will display in.  See the [Internationalization]({%slug winforms/editors/datetimepicker/internationalization/internationalization%}) and [Date Formats]({%slug winforms/editors/datetimepicker/internationalization/date-formats%}) topic for more information.
          

* __ThemeName__ sets the overall look of the control. Choose from a list of predefined themes or create your own using the __Visual Style Builder__ available from the __RadDateTimePicker Smart Tag__.
          

* __CalendarSize__ gets or sets the size of the RadCalendar in the RadDateTimePicker drop-down.
          

* __NullableValue__ is same as the Value property, but the __NullableValue__ property is of type *Nullable DateTime*. It can be null – in this case if RadDateTimePicker is not selected it will show its NullText. In case RadDateTimePicker is selected, it will show the last entered date – this allows the end-user to enter and edit the date.

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
 
__Simple databinding__
 
__NullableValue__ can be bound to a business object that exposes a property of type nullable DateTime. The code below demonstrates how to do this:
           

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
'#End Region
'#Region "initialization"
Private initialDateTime As Date
Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
    initialDateTime = Me.RadDateTimePicker1.Value
    AddHandler RadDateTimePicker1.ValueChanged, AddressOf radDateTimePicker1_ValueChanged
End Sub
'#End Region
'#region valueChanged
Private suspendValueChanged As Boolean = False
Private Sub radDateTimePicker1_ValueChanged(ByVal sender As Object, ByVal e As EventArgs)
    Dim dt As Date = Me.RadDateTimePicker1.Value
    Dim sp As TimeSpan = dt.Subtract(initialDateTime)
    If Not suspendValueChanged Then
        Dim provider As MaskDateTimeProvider = (TryCast(Me.RadDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider, MaskDateTimeProvider))
        If provider.List(provider.SelectedItemIndex).type = PartTypes.Minutes Then
            suspendValueChanged = True
            If sp.Ticks < 0 Then
                For i As Integer = 0 To 3
                    Me.RadDateTimePicker1.DateTimePickerElement.TextBoxElement.Down()
                Next i
            End If
            If sp.Ticks > 0 Then
                For i As Integer = 0 To 3
                    Me.RadDateTimePicker1.DateTimePickerElement.TextBoxElement.Up()
                Next i
            End If
            initialDateTime = Me.RadDateTimePicker1.Value
            suspendValueChanged = False
        End If
    End If
End Sub

````

{{endregion}} 
 
* __Editing Date and Time in RadDateTimePicker.__


To use RadDateTimePicker as date and time editor you need to enable embedded __TimePicker__ and set the desired mask that shows the time parts. 

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
 

## Accessing the MaskDateTimeProvider

The MaskDateTimeProvider can be accessed by casting to that appropriate class. This provider contains useful properties and methods that can help you to navigate trough the date parts.
        

* The __AutoSelectNextPart__ property controls whether or not the next date part will be automatically selected when the user types.
            

* The __SelectedItemIndex__ property can be used to retrieve the current selected part of the date.
            

* The __SelectFirstItem__ method just selects the first part of the date.
            

* The __SelectNextItem__ method just selects the last part of the date.

The following code spinet demonstrates how one can access and use the provider:     

{{source=..\SamplesCS\Editors\DateTimePicker2.cs region=provider}} 
{{source=..\SamplesVB\Editors\DateTimePicker2.vb region=provider}} 

````C#
MaskDateTimeProvider provider = this.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider as MaskDateTimeProvider;
provider.AutoSelectNextPart = true;

````
````VB.NET
Dim provider As MaskDateTimeProvider = TryCast(Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider, MaskDateTimeProvider)
provider.AutoSelectNextPart = True

````

{{endregion}} 




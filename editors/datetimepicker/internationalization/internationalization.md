---
title: Internationalization
page_title: Internationalization | UI for WinForms Documentation
description: Internationalization
slug: winforms/editors/datetimepicker/internationalization/internationalization
tags: internationalization
published: True
position: 0
---

# Internationalization



## 

RadCalendar provides built in internationalization support to build world-ready applications including: 

* The __Culture__ property can be set using the drop down list in the Properties Window or set in code. The screenshot below shows the __Culture__ property set to "German(Germany)".
            #_[C#]_

	



{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=culture}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=culture}} 

````C#
            this.radDateTimePicker1.Culture = new System.Globalization.CultureInfo("de-DE");
````
````VB.NET
        Me.RadDateTimePicker1.Culture = New System.Globalization.CultureInfo("de-DE")
        '#End Region

        '#Region "rightNo"
        Me.RadDateTimePicker1.RightToLeft = RightToLeft.No
        '#End Region

        '#Region "rightYes"
        Me.RadDateTimePicker1.RightToLeft = RightToLeft.Yes
        '#End Region

        '#Region "customFormat"
        Me.RadDateTimePicker1.Format = DateTimePickerFormat.Custom
        Me.RadDateTimePicker1.CustomFormat = "MMM - dd - yyyy"
        '#End Region
    End Sub

    '#Region "nullableBinding"
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
    '
````

{{endregion}} 


![editors-datetimepicker-internationalization 001](images/editors-datetimepicker-internationalization001.png)

* Right-to-Left support:          
            

* 
            Right-to-Left = No (default value)
             #_[C#]_

	



{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=rightNo}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=rightNo}} 

````C#
            this.radDateTimePicker1.RightToLeft = RightToLeft.No;
````
````VB.NET
        Me.RadDateTimePicker1.RightToLeft = RightToLeft.No
        '#End Region

        '#Region "rightYes"
        Me.RadDateTimePicker1.RightToLeft = RightToLeft.Yes
        '#End Region

        '#Region "customFormat"
        Me.RadDateTimePicker1.Format = DateTimePickerFormat.Custom
        Me.RadDateTimePicker1.CustomFormat = "MMM - dd - yyyy"
        '#End Region
    End Sub

    '#Region "nullableBinding"
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
    '
````

{{endregion}} 


![editors-datetimepicker-internationalization 002](images/editors-datetimepicker-internationalization002.png)

* 
           Right-to-Left = Yes
          #_[C#]_

	



{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=rightYes}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=rightYes}} 

````C#
            this.radDateTimePicker1.RightToLeft = RightToLeft.Yes;
````
````VB.NET
        Me.RadDateTimePicker1.RightToLeft = RightToLeft.Yes
        '#End Region

        '#Region "customFormat"
        Me.RadDateTimePicker1.Format = DateTimePickerFormat.Custom
        Me.RadDateTimePicker1.CustomFormat = "MMM - dd - yyyy"
        '#End Region
    End Sub

    '#Region "nullableBinding"
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
    '
````

{{endregion}} 


![editors-datetimepicker-internationalization 003](images/editors-datetimepicker-internationalization003.png)

* [Date Format Pattern]({%slug winforms/editors/datetimepicker/internationalization/date-formats%}): The __Format__ property has valid values of __Short__, __Long__, __Time__ and __Custom__. The __Custom__enables the __CustomFormat__ property.             
            #_[C#]_

	



{{source=..\SamplesCS\Editors\DateTimePicker1.cs region=customFormat}} 
{{source=..\SamplesVB\Editors\DateTimePicker1.vb region=customFormat}} 

````C#
            this.radDateTimePicker1.Format = DateTimePickerFormat.Custom;
            this.radDateTimePicker1.CustomFormat = "MMM - dd - yyyy";
````
````VB.NET
        Me.RadDateTimePicker1.Format = DateTimePickerFormat.Custom
        Me.RadDateTimePicker1.CustomFormat = "MMM - dd - yyyy"
        '#End Region
    End Sub

    '#Region "nullableBinding"
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
    '
````

{{endregion}} 


![editors-datetimepicker-internationalization 004](images/editors-datetimepicker-internationalization004.png)

See the article [Introduction to International Applications Based on .NET Framework](http://msdn2.microsoft.com/en-us/library/t18274tk(vs.80).aspx) for an overview of internationalization in general. 

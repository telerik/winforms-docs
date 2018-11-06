---
title: Using a Data Provider
page_title: Using a Data Provider | RadScheduler
description: RadScheduler uses the Provider Design Pattern to allow for easy integration into existing applications. This allows to connect to various data sources. 
slug: winforms/scheduler/data-binding/using-a-data-provider
tags: using,a,data,provider
published: True
position: 4
previous_url: scheduler-data-binding-using-a-data-provider
---

# Using a Data Provider

__RadScheduler__ uses the Provider Design Pattern to allow for easy integration into existing applications. This allows to connect to various data sources. 

You can use one of the scheduler data source components supplied with __RadScheduler__ or implement your own if you have more specific data binding needs. Each scheduler data source inherits from the __SchedulerDataSource__ abstract class and contains two providers – one for the appointment data and one for the resource data. To bind __RadScheduler__ to a provider, set its DataSource property to e specific scheduler data source. 

## Example

This example shows how to bind __RadScheduler__ to a collection of custom objects that contain appointment data using the __SchedulerBindingDataSource__ component. This data source component allows binding to a collection of objects and can be used to bind __RadScheduler__ not only to a collection of business objects, but to a ADO.NET DataTable ot the results of a LINQ query. First we have code out custom class that will contain the appointment data:

#### Custom Appointment Class

{{source=..\SamplesCS\Scheduler\DataBinding\MyAppointment.cs region=myAppointment}} 
{{source=..\SamplesVB\Scheduler\DataBinding\MyAppointment.vb region=myAppointment}} 

````C#
public class MyAppointment : INotifyPropertyChanged
{
    private DateTime start = DateTime.Now;
    private DateTime end = DateTime.Now;
    private string subject = string.Empty;
    private string description = string.Empty;
    private string location = string.Empty;
    private Guid id = Guid.NewGuid();
    public MyAppointment()
    {
    }
    public MyAppointment(DateTime start, DateTime end, string subject, string description, string location)
    {
        this.start = start;
        this.end = end;
        this.subject = subject;
        this.description = description;
        this.location = location;
    }
    public Guid Id
    {
        get
        {
            return this.id;
        }
        set
        {
            if (this.id != value)
            {
                this.id = value;
                this.OnPropertyChanged("Id");
            }
        }
    }
    public DateTime Start
    {
        get
        {
            return this.start;
        }
        set
        {
            if (this.start != value)
            {
                this.start = value;
                this.OnPropertyChanged("Start");
            }
        }
    }
    public DateTime End
    {
        get
        {
            return this.end;
        }
        set
        {
            if (this.end != value)
            {
                this.end = value;
                this.OnPropertyChanged("End");
            }
        }
    }
    public string Subject
    {
        get
        {
            return this.subject;
        }
        set
        {
            if (this.subject != value)
            {
                this.subject = value;
                this.OnPropertyChanged("Subject");
            }
        }
    }
    public string Description
    {
        get
        {
            return this.description;
        }
        set
        {
            if (this.description != value)
            {
                this.description = value;
                this.OnPropertyChanged("Description");
            }
        }
    }
    public string Location
    {
        get
        {
            return this.location;
        }
        set
        {
            if (this.location != value)
            {
                this.location = value;
                this.OnPropertyChanged("Location");
            }
        }
    }
    public event PropertyChangedEventHandler PropertyChanged;
    protected virtual void OnPropertyChanged(string propertyName)
    {
        if (this.PropertyChanged != null)
        {
            this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}

````
````VB.NET
Public Class MyAppointment
    Implements INotifyPropertyChanged
    Private _start As Date = Date.Now
    Private _end As Date = Date.Now
    Private _subject As String = String.Empty
    Private _description As String = String.Empty
    Private _location As String = String.Empty
    Private _id As Guid = Guid.NewGuid()
    Public Sub New()
    End Sub
    Public Sub New(ByVal start As Date, ByVal [end] As Date, ByVal subject As String, ByVal description As String, ByVal location As String)
        Me._start = start
        Me._end = [end]
        Me._subject = subject
        Me._description = description
        Me._location = location
    End Sub
    Public Property Id() As Guid
        Get
            Return Me._id
        End Get
        Set(ByVal value As Guid)
            If Me._id <> value Then
                Me._id = value
                Me.OnPropertyChanged("Id")
            End If
        End Set
    End Property
    Public Property Start() As Date
        Get
            Return Me._start
        End Get
        Set(ByVal value As Date)
            If Me._start <> value Then
                Me._start = value
                Me.OnPropertyChanged("Start")
            End If
        End Set
    End Property
    Public Property [End]() As Date
        Get
            Return Me._end
        End Get
        Set(ByVal value As Date)
            If Me._end <> value Then
                Me._end = value
                Me.OnPropertyChanged("End")
            End If
        End Set
    End Property
    Public Property Subject() As String
        Get
            Return Me._subject
        End Get
        Set(ByVal value As String)
            If Me._subject <> value Then
                Me._subject = value
                Me.OnPropertyChanged("Subject")
            End If
        End Set
    End Property
    Public Property Description() As String
        Get
            Return Me._description
        End Get
        Set(ByVal value As String)
            If Me._description <> value Then
                Me._description = value
                Me.OnPropertyChanged("Description")
            End If
        End Set
    End Property
    Public Property Location() As String
        Get
            Return Me._location
        End Get
        Set(ByVal value As String)
            If Me._location <> value Then
                Me._location = value
                Me.OnPropertyChanged("Location")
            End If
        End Set
    End Property
    Public Event PropertyChanged As PropertyChangedEventHandler Implements INotifyPropertyChanged.PropertyChanged
    Protected Overridable Sub OnPropertyChanged(ByVal propertyName As String)
        If Me.PropertyChangedEvent IsNot Nothing Then
            RaiseEvent PropertyChanged(Me, New PropertyChangedEventArgs(propertyName))
        End If
    End Sub
End Class

````

{{endregion}} 

We will use a list to store our appointment data. For the purpose of this example we will populate the appointments collection with some dummy data in the OnLoad override of our form:

#### Create Appointments

{{source=..\SamplesCS\Scheduler\DataBinding\UsingDataProvider.cs region=creatingAppointment}} 
{{source=..\SamplesVB\Scheduler\DataBinding\UsingDataProvider.vb region=creatingAppointment}} 

````C#
private List<MyAppointment> appointments = new List<MyAppointment>();
protected override void OnLoad(EventArgs e)
{
    base.OnLoad(e);
    DateTime baseDate = DateTime.Today;
    DateTime[] start = new DateTime[] { baseDate.AddHours(14.0), baseDate.AddDays(1.0).AddHours(9.0), baseDate.AddDays(2.0).AddHours(13.0) };
    DateTime[] end = new DateTime[] { baseDate.AddHours(16.0), baseDate.AddDays(1.0).AddHours(15.0), baseDate.AddDays(2.0).AddHours(17.0) };
    string[] summaries = new string[] { "Mr. Brown", "Mr. White", "Mrs. Green" };
    string[] descriptions = new string[] { "", "", "" };
    string[] locations = new string[] { "City", "Out of town", "Service Center" };
    MyAppointment appointment = null;
    for (int i = 0; i < summaries.Length; i++)
    {
        appointment = new MyAppointment(start[i], end[i], summaries[i],
            descriptions[i], locations[i]);
        this.appointments.Add(appointment);
    }
}

````
````VB.NET
Private appointments As New List(Of MyAppointment)()
Protected Overrides Sub OnLoad(ByVal e As EventArgs)
    MyBase.OnLoad(e)
    Dim baseDate As Date = Date.Today
    Dim start() As Date = {baseDate.AddHours(14.0), baseDate.AddDays(1.0).AddHours(9.0), baseDate.AddDays(2.0).AddHours(13.0)}
    Dim [end]() As Date = {baseDate.AddHours(16.0), baseDate.AddDays(1.0).AddHours(15.0), baseDate.AddDays(2.0).AddHours(17.0)}
    Dim summaries() As String = {"Mr. Brown", "Mr. White", "Mrs. Green"}
    Dim descriptions() As String = {"", "", ""}
    Dim locations() As String = {"City", "Out of town", "Service Center"}
    Dim appointment As MyAppointment = Nothing
    For i As Integer = 0 To summaries.Length - 1
        appointment = New MyAppointment(start(i), [end](i), summaries(i), descriptions(i), locations(i))
        Me.appointments.Add(appointment)
    Next i
End Sub

````

{{endregion}} 

And finally we will bind our RadScheduler instance to tha collection in the Click event handler of a button:

{{source=..\SamplesCS\Scheduler\DataBinding\UsingDataProvider.cs region=bindClick}} 
{{source=..\SamplesVB\Scheduler\DataBinding\UsingDataProvider.vb region=bindClick}} 

````C#
private void btnBind_Click(object sender, EventArgs e)
{
    SchedulerBindingDataSource dataSource = new SchedulerBindingDataSource();
    AppointmentMappingInfo appointmentMappingInfo = new AppointmentMappingInfo();
    appointmentMappingInfo.Start = "Start";
    appointmentMappingInfo.End = "End";
    appointmentMappingInfo.Summary = "Subject";
    appointmentMappingInfo.Description = "Description";
    appointmentMappingInfo.Location = "Location";
    appointmentMappingInfo.UniqueId = "Id";
    SchedulerMapping idMapping = appointmentMappingInfo.FindByDataSourceProperty("Id");
    idMapping.ConvertToDataSource = new ConvertCallback(this.ConvertIdToDataSource);
    idMapping.ConvertToScheduler = new ConvertCallback(this.ConvertIdToScheduler);
    dataSource.EventProvider.Mapping = appointmentMappingInfo;
    dataSource.EventProvider.DataSource = this.appointments;
    this.radScheduler1.DataSource = dataSource;
}

````
````VB.NET
Private Sub btnBind_Click(ByVal sender As Object, ByVal e As EventArgs)
    Dim dataSource As New SchedulerBindingDataSource()
    Dim appointmentMappingInfo As New AppointmentMappingInfo()
    appointmentMappingInfo.Start = "Start"
    appointmentMappingInfo.End = "End"
    appointmentMappingInfo.Summary = "Subject"
    appointmentMappingInfo.Description = "Description"
    appointmentMappingInfo.Location = "Location"
    appointmentMappingInfo.UniqueId = "Id"
    Dim idMapping As SchedulerMapping = appointmentMappingInfo.FindByDataSourceProperty("Id")
    idMapping.ConvertToDataSource = New ConvertCallback(AddressOf Me.ConvertIdToDataSource)
    idMapping.ConvertToScheduler = New ConvertCallback(AddressOf Me.ConvertIdToScheduler)
    dataSource.EventProvider.Mapping = appointmentMappingInfo
    dataSource.EventProvider.DataSource = Me.appointments
    Me.RadScheduler1.DataSource = dataSource
End Sub

````

{{endregion}}

In the above code we create a __SchedulerBindingDataSource__ component. Then create a __AppointmentMappingInfo__ in order to “tell” the appointment provider how the properties of objects from the data source (in our case the appointments collection) corresponds to properties of the __IEvent__ interface.

Note how the __SchedulerMapping__ class which is responsible for mapping a single property from the data source to a scheduler property (in our case property from the __IEvent__ interface) allows you to specify convert callback methods in order to convert values to and from the data source if needed.
		

Finally, we set the Mapping and DataSource properties of the __EventProvider__ contained in the __SchedulerBindingDataSource__ and set the data source to our __RadScheduler__ instance and we are done.

# See Also

* [Design Time]({%slug winforms/scheduler/design-time/smart-tag%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Scheduler Mapping]({%slug winforms/scheduler/data-binding/scheduler-mapping%})
* [Working with Resources]({%slug winforms/scheduler/data-binding/working-with-resources%})
* [setting Appointments and Resources Relations]({%slug winforms/scheduler/data-binding/setting-appointment-and-resource-relations%})


		

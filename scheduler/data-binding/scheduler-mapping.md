---
title: Scheduler Mapping
page_title: Scheduler Mapping | RadScheduler
description: Scheduler Mapping
slug: winforms/scheduler/data-binding/scheduler-mapping
tags: scheduler,mapping
published: True
position: 11
previous_url: scheduler-data-binding-scheduler-mapping
---

# Scheduler Mapping

The __SchedulerMapping__ class is responsible for mapping a single property from the data source to a scheduler property, which allows you to specify convert callback methods in order to convert values to and from the data source if needed.
      
## Overview

To associate a field with a different type than the scheduler type, for example, a background id that is written as a string in the database:

1\. Create two methods with the following signatures:

{{source=..\SamplesCS\Scheduler\DataBinding\SchedulerMapping1.cs region=backgroundCallback}} 
{{source=..\SamplesVB\Scheduler\DataBinding\SchedulerMapping1.vb region=backgroundCallback}} 

````C#
object ConvertBackgrounIdToScheduler(object obj)
{
    if (!(obj is DBNull))
    {
        string appointmentBackground = (string)obj;
        switch (appointmentBackground)
        {
            case "Business":
                return AppointmentBackground.Business;
            case "Important":
                return AppointmentBackground.Important;
            case "MustAttend":
                return AppointmentBackground.MustAttend;
            case "PhoneCall":
                return AppointmentBackground.PhoneCall;
            //TO DO other backgrounds
        }
    }
    return AppointmentBackground.None;
}
object ConvertBackgrounIdToDataSource(object obj)
{
    AppointmentBackground appointmentBackground = (AppointmentBackground)obj;
    switch (appointmentBackground)
    {
        case AppointmentBackground.Business:
            return "Business";
        case AppointmentBackground.Important:
            return "Important";
        case AppointmentBackground.MustAttend:
            return "MustAttend";
        case AppointmentBackground.PhoneCall:
            return "PhoneCall";
        //TO DO other backgrounds
    }
    return "None";
}

````
````VB.NET
Private Function ConvertBackgrounIdToScheduler(ByVal obj As Object) As Object
    If Not (TypeOf obj Is DBNull) Then
        Dim appointmentBackground As String = CStr(obj)
        Select Case appointmentBackground
            Case "Business"
                Return Telerik.WinControls.UI.AppointmentBackground.Business
            Case "Important"
                Return Telerik.WinControls.UI.AppointmentBackground.Important
            Case "MustAttend"
                Return Telerik.WinControls.UI.AppointmentBackground.MustAttend
            Case "PhoneCall"
                Return Telerik.WinControls.UI.AppointmentBackground.PhoneCall
                'TO DO other backgrounds
        End Select
    End If
    Return AppointmentBackground.None
End Function
Private Function ConvertBackgrounIdToDataSource(ByVal obj As Object) As Object
    Dim appointmentBackground As AppointmentBackground = CType(obj, AppointmentBackground)
    Select Case appointmentBackground
        Case appointmentBackground.Business
            Return "Business"
        Case appointmentBackground.Important
            Return "Important"
        Case appointmentBackground.MustAttend
            Return "MustAttend"
        Case appointmentBackground.PhoneCall
            Return "PhoneCall"
            'TO DO other backgrounds
    End Select
    Return "None"
End Function

````

{{endregion}} 

2\. Apply settings of the __BackgroundId__ mapping in the __AppointmentMappingInfo__:

{{source=..\SamplesCS\Scheduler\DataBinding\SchedulerMapping1.cs region=background}} 
{{source=..\SamplesVB\Scheduler\DataBinding\SchedulerMapping1.vb region=background}} 

````C#
SchedulerMapping backgroundIdSchedulerMapping = appointmentMappingInfo.FindBySchedulerProperty("BackgroundId");
backgroundIdSchedulerMapping.ConvertToScheduler = new ConvertCallback(this.ConvertBackgrounIdToScheduler);
backgroundIdSchedulerMapping.ConvertToDataSource = new ConvertCallback(this.ConvertBackgrounIdToDataSource);

````
````VB.NET
Dim backgroundIdSchedulerMapping As SchedulerMapping = appointmentMappingInfo.FindBySchedulerProperty("BackgroundId")
backgroundIdSchedulerMapping.ConvertToScheduler = New ConvertCallback(AddressOf Me.ConvertBackgrounIdToScheduler)
backgroundIdSchedulerMapping.ConvertToDataSource = New ConvertCallback(AddressOf Me.ConvertBackgrounIdToDataSource)

````

{{endregion}} 

## Null Fields in the Data Base

If the database has fields that can be Null then you need to add converters for those fields. For example, let's suppose that the database has a field "Location", which is a string and you wish to check whether its value is DBNull. If it is DBNull you would want to convert it to null. Here are the steps:
        
1\. Create a conversion method with the following signature: 

{{source=..\SamplesCS\Scheduler\DataBinding\SchedulerMapping1.cs region=locationCallback}} 
{{source=..\SamplesVB\Scheduler\DataBinding\SchedulerMapping1.vb region=locationCallback}} 

````C#
object ConvertLocationToScheduler(object obj)
{
    if (obj is DBNull)
    {
        return null;
    }
    return obj;
}

````
````VB.NET
Private Function ConvertLocationToScheduler(ByVal obj As Object) As Object
    If TypeOf obj Is DBNull Then
        Return Nothing
    End If
    Return obj
End Function

````

{{endregion}} 

2\. Apply the Location mapping settings in the AppointmentMappingInfo: 

{{source=..\SamplesCS\Scheduler\DataBinding\SchedulerMapping1.cs region=location}} 
{{source=..\SamplesVB\Scheduler\DataBinding\SchedulerMapping1.vb region=location}} 

````C#
AppointmentMappingInfo appointmentMappingInfo = new AppointmentMappingInfo();
appointmentMappingInfo.Location = "Location";
SchedulerMapping locationSchedulerMapping = appointmentMappingInfo.FindBySchedulerProperty("Location");
locationSchedulerMapping.ConvertToScheduler = new ConvertCallback(this.ConvertLocationToScheduler);

````
````VB.NET
Dim appointmentMappingInfo As New AppointmentMappingInfo()
appointmentMappingInfo.Location = "Location"
Dim locationSchedulerMapping As SchedulerMapping = appointmentMappingInfo.FindBySchedulerProperty("Location")
locationSchedulerMapping.ConvertToScheduler = New ConvertCallback(AddressOf Me.ConvertLocationToScheduler)

````

{{endregion}} 

## Not Read-Only Id Field Other than Guid

If the Id field type is different than a Guid, and/or it is not read only in the data table, then you will need to add a converter to convert the type to a Guid. This case holds true for __Resources__ and __Appointments__.

If Id is read only in the data set, then the Scheduler will rely on the way the data set handles read only Id's.

1\. Create a methods with the following signatures

{{source=..\SamplesCS\Scheduler\DataBinding\SchedulerMapping1.cs region=NullFieldsInTheDataBase}} 
{{source=..\SamplesVB\Scheduler\DataBinding\SchedulerMapping1.vb region=NullFieldsInTheDataBase}} 

````C#
object ConvertUniqueIdToScheduler(object obj)
{
    return new EventId(obj);
}
object ConvertUniqueIdToDataSource(object obj)
{
    EventId eventId = obj as EventId;
    //if the appointment is added from the scheduler the eventId.KeyValue is Guid
    if (eventId.KeyValue is Guid)
    {
        //return the value that is in your object/dataset
    }
    //if the appointment is loaded from an object/dataset the eventId.KeyValue is its representation in the object/datase
    return eventId.KeyValue;
}

````
````VB.NET
Private Function ConvertUniqueIdToScheduler(ByVal obj As Object) As Object
    Return New EventId(obj)
End Function
Private Function ConvertUniqueIdToDataSource(ByVal obj As Object) As Object
    Dim eventId As EventId = TryCast(obj, EventId)
    'if the appointment is added from the scheduler the eventId.KeyValue is Guid
    If TypeOf eventId.KeyValue Is Guid Then
        'return the value that is in your object/dataset
    End If
    'if the appointment is loaded from an object/dataset the eventId.KeyValue is its representation in the object/datase
    Return eventId.KeyValue
End Function

````

{{endregion}} 

2\. Apply the settings of the UniqueId mapping in the AppointmentMappingInfo:

{{source=..\SamplesCS\Scheduler\DataBinding\SchedulerMapping1.cs region=ApplyUniqueId}} 
{{source=..\SamplesVB\Scheduler\DataBinding\SchedulerMapping1.vb region=ApplyUniqueId}} 

````C#
SchedulerMapping uniqueIdSchedulerMapping = appointmentMappingInfo.FindBySchedulerProperty("UniqueId");
uniqueIdSchedulerMapping.ConvertToScheduler = new ConvertCallback(this.ConvertUniqueIdToScheduler);
uniqueIdSchedulerMapping.ConvertToDataSource = new ConvertCallback(this.ConvertUniqueIdToDataSource);

````
````VB.NET
Dim uniqueIdSchedulerMapping As SchedulerMapping = appointmentMappingInfo.FindBySchedulerProperty("UniqueId")
uniqueIdSchedulerMapping.ConvertToScheduler = New ConvertCallback(AddressOf Me.ConvertUniqueIdToScheduler)
uniqueIdSchedulerMapping.ConvertToDataSource = New ConvertCallback(AddressOf Me.ConvertUniqueIdToDataSource)

````

{{endregion}} 

# See Also

* [Design Time]({%slug winforms/scheduler/design-time/smart-tag%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Scheduler Mapping]({%slug winforms/scheduler/data-binding/scheduler-mapping%})
* [Working with Resources]({%slug winforms/scheduler/data-binding/working-with-resources%})
* [Setting Appointments and Resources Relations]({%slug winforms/scheduler/data-binding/setting-appointment-and-resource-relations%})

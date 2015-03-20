---
title: Scheduler Mapping
page_title: Scheduler Mapping
description: Scheduler Mapping
slug: scheduler-data-binding-scheduler-mapping
tags: scheduler,mapping
published: True
position: 11
---

# Scheduler Mapping



The __SchedulerMapping__ class is responsible for mapping a single property from the data source to a
        scheduler property, which allows you to specify convert callback methods in order to convert values to and from the data source if needed.
      

## Overview

To associate a field with a different type then the scheduler type, for example, a Background ID that is written as a string in the database:

1. Create two methods with the following signatures:

#### __[C#]__

{{region backgroundCallback}}
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
	{{endregion}}



#### __[VB.NET]__

{{region backgroundCallback}}
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
	{{endregion}}



1. Apply settings of the BackgroundId mapping in the AppointmentMappingInfo:

#### __[C#]__

{{region background}}
	            SchedulerMapping backgroundIdSchedulerMapping = appointmentMappingInfo.FindBySchedulerProperty("BackgroundId");
	            backgroundIdSchedulerMapping.ConvertToScheduler = new ConvertCallback(this.ConvertBackgrounIdToScheduler);
	            backgroundIdSchedulerMapping.ConvertToDataSource = new ConvertCallback(this.ConvertBackgrounIdToDataSource);
	{{endregion}}



#### __[VB.NET]__

{{region background}}
	        Dim backgroundIdSchedulerMapping As SchedulerMapping = appointmentMappingInfo.FindBySchedulerProperty("BackgroundId")
	        backgroundIdSchedulerMapping.ConvertToScheduler = New ConvertCallback(AddressOf Me.ConvertBackgrounIdToScheduler)
	        backgroundIdSchedulerMapping.ConvertToDataSource = New ConvertCallback(AddressOf Me.ConvertBackgrounIdToDataSource)
	{{endregion}}



## Null Fields in the Data Base

If the database has fields that can be Null then you need to add converters for those fields. For example, let's
          suppose that the database has a field "Location", which is a string and you wish to check whether its value is DBNull.
          If it is DBNull you would want to convert it to null. Here are the steps:
        

1. Create a conversion method with the following signature:

#### __[C#]__

{{region locationCallback}}
	        object ConvertLocationToScheduler(object obj)
	        {
	            if (obj is DBNull)
	            {
	                return null;
	            }
	            return obj;
	        }
	{{endregion}}



#### __[VB.NET]__

{{region locationCallback}}
	    Private Function ConvertLocationToScheduler(ByVal obj As Object) As Object
	        If TypeOf obj Is DBNull Then
	            Return Nothing
	        End If
	        Return obj
	    End Function
	{{endregion}}



1. Apply the Location mapping settings in the AppointmentMappingInfo:

#### __[C#]__

{{region location}}
	            AppointmentMappingInfo appointmentMappingInfo = new AppointmentMappingInfo();
	            appointmentMappingInfo.Location = "Location";
	            SchedulerMapping locationSchedulerMapping = appointmentMappingInfo.FindBySchedulerProperty("Location");
	            locationSchedulerMapping.ConvertToScheduler = new ConvertCallback(this.ConvertLocationToScheduler);
	{{endregion}}



#### __[VB.NET]__

{{region location}}
	        Dim appointmentMappingInfo As New AppointmentMappingInfo()
	        appointmentMappingInfo.Location = "Location"
	        Dim locationSchedulerMapping As SchedulerMapping = appointmentMappingInfo.FindBySchedulerProperty("Location")
	        locationSchedulerMapping.ConvertToScheduler = New ConvertCallback(AddressOf Me.ConvertLocationToScheduler)
	{{endregion}}


             
          

## The ID field is not a Guid, or is not read only in the Data base

If the Id field type is different than a Guid, and/or it is not read only in the data table, then you will need to
          add a converter to convert the type to a Guid. This case holds true for __Resources__ and
          __Appointments__.
        

If Id is read only in the data set, then the Scheduler will rely on the way the data set handles read only Id's.

1. Create a methods with the following signatures

#### __[C#]__

{{region NullFieldsInTheDataBase}}
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
	{{endregion}}



#### __[VB.NET]__

{{region NullFieldsInTheDataBase}}
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
	{{endregion}}



1. Apply the settings of the UniqueId mapping in the AppointmentMappingInfo: 

#### __[C#]__

{{region ApplyUniqueId}}
	            SchedulerMapping uniqueIdSchedulerMapping = appointmentMappingInfo.FindBySchedulerProperty("UniqueId");
	            uniqueIdSchedulerMapping.ConvertToScheduler = new ConvertCallback(this.ConvertUniqueIdToScheduler);
	            uniqueIdSchedulerMapping.ConvertToDataSource = new ConvertCallback(this.ConvertUniqueIdToDataSource);
	{{endregion}}



#### __[VB.NET]__

{{region ApplyUniqueId}}
	        Dim uniqueIdSchedulerMapping As SchedulerMapping = appointmentMappingInfo.FindBySchedulerProperty("UniqueId")
	        uniqueIdSchedulerMapping.ConvertToScheduler = New ConvertCallback(AddressOf Me.ConvertUniqueIdToScheduler)
	        uniqueIdSchedulerMapping.ConvertToDataSource = New ConvertCallback(AddressOf Me.ConvertUniqueIdToDataSource)
	{{endregion}}



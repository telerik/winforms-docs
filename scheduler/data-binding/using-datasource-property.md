---
title: Using DataSource property
page_title: Using DataSource property
description: Using DataSource property
slug: scheduler-data-binding-using-datasource-property
tags: using,datasource,property
published: True
position: 3
---

# Using DataSource property



## 

RadScheduler's __DataSource__ property lets you bind to objects that inherit the base abstract __SchedulerDataSource__ class. The __SchedulerBindingDataSource__ implementation of SchedulerdataSource binds traditional data stores like lists of business objects and database tables. You can find the SchedulerBindingDataSource component in the Toolbox.
        

The __SchedulerBindingDataSource__ class has two properties: __EventProvider__ and __ResourceProvider__ that correspond to the provider instances of type __EventBindingProvider__ and __ResourceBindingProvider__. The __EventBindingProvider__ class is used to handle CRUD operations against an events data store, while __ResourceBindingProvider__ class is used to handle the same against a resources data store. Both provider implementations are nested types to the SchedulerBindingDataSource class and are public. Also the base abstract class for binding providers - the __BindingProviderBase<T>__ is available (public) as well, so it can aid the process of creating scheduler data sources. There are also two methods that return base type implementations of the providers: __ISchedulerProvider<IEvent> GetEventProvider()__ and __ISchedulerProvider<IResource> GetResourceProvider()__.
        

An integral and vital part of the providers logic is the __Mapping__ property that requires instance implementing IMappingInfo interface. The __IMappingInfo__ handles the property mappings. Property names from the data store are mapped to corresponding property names of the classes that RadScheduler uses to operate internally. For example a database field name from the table that handles the appointments information is mapped to the corresponding property of a object representing appointment inside the scheduler.
        

To have the data source make any sense to the SchedulerBindingDataSource you also need to define mappings that link the expected information to columns in a database table or business object. There are two mapping objects that need to be loaded up and assigned, the __AppointmentMappingInfo__ and __ResourceMappingInfo__. AppointmentMappingInfo has a series of string properties that point to all appointment related data such as start date/time, end date/time, a description, etc. The ResourcesMappingInfo object has a Name and Image.
        

Here's a dataset design view for the SchedulerData.mdf database file that ships with Telerik UI for WinForms. You can see all the fields that can be defined for appointments and resources. Also notice a "join table" named "TransientAppointmentsResources" that assigns a particular resource to an appointment.

>Notice that while the database structure allows for multiple resources, the built-in scheduler dialog only allows a single resource to be selected at a time.![scheduler-data-binding-using-datasource-property 001](images/scheduler-data-binding-using-datasource-property001.png)

The foreign key relationship between "TransientAppointmentsResources" and the "Appointments" table will also be defined in the AppointmentMappingInfo object.![scheduler-data-binding-using-datasource-property 002](images/scheduler-data-binding-using-datasource-property002.png)

>You can find SchedulerData.mdb (Access) in the installation directory under \Examples\QuickStart\DataSources.
            You can find SchedulerData.mdf (MS SQL database file)
            [here](http://www.telerik.com/docs/default-source/ui-for-winforms/schedulerdatasql.zip)

Here's some example code that demonstrates loading the AppointmentMappingInfo fields with column names in a database table. The __Resources__ property is assigned the name of the foreign key that joins the Appointments and the "join table' that sits between the appointments and resources table. The __ResourceID__ property is assigned to the column in the "join table" of a unique resource identifier.
        

RadScheduler works from a provider model so that in the future, custom appointment and resource providers can be plugged in to replace the built-in providers. The AppointmentMappingInfo is assigned to the __Mapping__ property of the schedulers datasource event provider. Review the code below to see how this is done when binding to a database tables.
        

>The __Exceptions__ and __Resources__ properties in the __AppointmentMappingInfo__ should be set to the names of the relations that are represented in the dataset.
          

#### __[C#]__

{{region creatingAppointment}}
	            AppointmentMappingInfo appointmentMappingInfo = new AppointmentMappingInfo();
	            appointmentMappingInfo.Start = "Start";
	            appointmentMappingInfo.End = "End";
	            appointmentMappingInfo.Summary = "Summary";
	            appointmentMappingInfo.Description = "Description";
	            appointmentMappingInfo.Location = "Location";
	            appointmentMappingInfo.BackgroundId = "BackgroundID";
	            appointmentMappingInfo.StatusId = "StatusID";
	            appointmentMappingInfo.RecurrenceRule = "RecurrenceRule";
	            appointmentMappingInfo.Resources = "Appointments_AppointmentsResources";
	            appointmentMappingInfo.ResourceId = "ResourceID";
	            appointmentMappingInfo.Exceptions = "Appointments_Appointments";
	            appointmentMappingInfo.MasterEventId = "ParentID";
	            schedulerBindingDataSource1.EventProvider.Mapping = appointmentMappingInfo;
	{{endregion}}



#### __[VB.NET]__

{{region creatingAppointment}}
	        Dim appointmentMappingInfo As New AppointmentMappingInfo()
	        appointmentMappingInfo.Start = "Start"
	        appointmentMappingInfo.End = "End"
	        appointmentMappingInfo.Summary = "Summary"
	        appointmentMappingInfo.Description = "Description"
	        appointmentMappingInfo.Location = "Location"
	        appointmentMappingInfo.BackgroundId = "BackgroundID"
	        appointmentMappingInfo.StatusId = "StatusID"
	        appointmentMappingInfo.RecurrenceRule = "RecurrenceRule"
	        appointmentMappingInfo.Resources = "Appointments_AppointmentsResources"
	        appointmentMappingInfo.ResourceId = "ResourceID"
	        appointmentMappingInfo.Exceptions = "Appointments_Appointments"
	        appointmentMappingInfo.MasterEventId = "ParentID"
	        SchedulerBindingDataSource1.EventProvider.Mapping = appointmentMappingInfo
	{{endregion}}



The resource mapping has fewer columns and doesn't need any information about joining to the appointments table.

#### __[C#]__

{{region creatingResource}}
	            ResourceMappingInfo resourceMappingInfo = new ResourceMappingInfo();
	            resourceMappingInfo.Id = "ID";
	            resourceMappingInfo.Name = "ResourceName";
	            schedulerBindingDataSource1.ResourceProvider.Mapping = resourceMappingInfo;
	            schedulerBindingDataSource1.EventProvider.DataSource = this.schedulerDataDataSet.Appointments;
	            schedulerBindingDataSource1.ResourceProvider.DataSource = this.schedulerDataDataSet.Resources;
	{{endregion}}



#### __[VB.NET]__

{{region creatingResource}}
	        Dim resourceMappingInfo As New ResourceMappingInfo()
	        resourceMappingInfo.Id = "ID"
	        resourceMappingInfo.Name = "ResourceName"
	        SchedulerBindingDataSource1.ResourceProvider.Mapping = resourceMappingInfo
	        SchedulerBindingDataSource1.EventProvider.DataSource = Me.schedulerDataDataSet.Appointments
	        SchedulerBindingDataSource1.ResourceProvider.DataSource = Me.schedulerDataDataSet.Resources
	{{endregion}}



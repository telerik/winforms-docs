---
title: Using a Data Provider
page_title: Using a Data Provider - RadScheduler
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

<snippet id='scheduler-myappointment-myappointment-cs' />
<snippet id='scheduler-myappointment-myappointment-vb' />



We will use a list to store our appointment data. For the purpose of this example we will populate the appointments collection with some dummy data in the OnLoad override of our form:

#### Create Appointments

<snippet id='scheduler-usingdataprovider-creatingappointment-cs' />
<snippet id='scheduler-usingdataprovider-creatingappointment-vb' />



And finally we will bind our RadScheduler instance to tha collection in the Click event handler of a button:

<snippet id='scheduler-usingdataprovider-bindclick-cs' />
<snippet id='scheduler-usingdataprovider-bindclick-vb' />



In the above code we create a __SchedulerBindingDataSource__ component. Then create a __AppointmentMappingInfo__ in order to “tell” the appointment provider how the properties of objects from the data source (in our case the appointments collection) corresponds to properties of the __IEvent__ interface.

Note how the __SchedulerMapping__ class which is responsible for mapping a single property from the data source to a scheduler property (in our case property from the __IEvent__ interface) allows you to specify convert callback methods in order to convert values to and from the data source if needed.
		

Finally, we set the Mapping and DataSource properties of the __EventProvider__ contained in the __SchedulerBindingDataSource__ and set the data source to our __RadScheduler__ instance and we are done.

# See Also

* [Design Time]({%slug winforms/scheduler/design-time/smart-tag%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Scheduler Mapping]({%slug winforms/scheduler/data-binding/scheduler-mapping%})
* [Working with Resources]({%slug winforms/scheduler/data-binding/working-with-resources%})
* [setting Appointments and Resources Relations]({%slug winforms/scheduler/data-binding/setting-appointment-and-resource-relations%})


		

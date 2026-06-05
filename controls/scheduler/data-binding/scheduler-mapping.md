---
title: Scheduler Mapping
page_title: Scheduler Mapping - WinForms Scheduler Control
description: WinForms SchedulerMapping class is responsible for mapping a single property from the data source to a scheduler property, which allows you to specify convert callback methods in order to convert values to and from the data source if needed.
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

<snippet id='scheduler-schedulermapping1-backgroundcallback-cs' />
<snippet id='scheduler-schedulermapping1-backgroundcallback-vb' />



2\. Apply settings of the __BackgroundId__ mapping in the __AppointmentMappingInfo__:

<snippet id='scheduler-schedulermapping1-background-cs' />
<snippet id='scheduler-schedulermapping1-background-vb' />



## Null Fields in the Data Base

If the database has fields that can be Null then you need to add converters for those fields. For example, let's suppose that the database has a field "Location", which is a string and you wish to check whether its value is DBNull. If it is DBNull you would want to convert it to null. Here are the steps:
        
1\. Create a conversion method with the following signature: 

<snippet id='scheduler-schedulermapping1-locationcallback-cs' />
<snippet id='scheduler-schedulermapping1-locationcallback-vb' />



2\. Apply the Location mapping settings in the AppointmentMappingInfo: 

<snippet id='scheduler-schedulermapping1-location-cs' />
<snippet id='scheduler-schedulermapping1-location-vb' />



## Not Read-Only Id Field Other than Guid

If the Id field type is different than a Guid, and/or it is not read only in the data table, then you will need to add a converter to convert the type to a Guid. This case holds true for __Resources__ and __Appointments__.

If Id is read only in the data set, then the Scheduler will rely on the way the data set handles read only Id's.

1\. Create a methods with the following signatures

<snippet id='scheduler-schedulermapping1-nullfieldsinthedatabase-cs' />
<snippet id='scheduler-schedulermapping1-nullfieldsinthedatabase-vb' />



2\. Apply the settings of the UniqueId mapping in the AppointmentMappingInfo:

<snippet id='scheduler-schedulermapping1-applyuniqueid-cs' />
<snippet id='scheduler-schedulermapping1-applyuniqueid-vb' />



## ConvertValueToScheduler and ConvertValueToDataSource Events

Similar to the **ConvertToScheduler** and **ConvertToDataSource** callbacks of the **SchedulerMapping**, in **R1 2018** we introduced the **ConvertValueToScheduler** and **ConvertValueToDataSource** events to handle the conversion from a value coming from the DataSource to the **RadScheduler**'s respective type and vice versa.

#### Conversion Events

<snippet id='scheduler-schedulermapping1-eventsmapping-cs' />
<snippet id='scheduler-schedulermapping1-eventsmapping-vb' />



# See Also

* [Design Time]({%slug winforms/scheduler/design-time/smart-tag%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Scheduler Mapping]({%slug winforms/scheduler/data-binding/scheduler-mapping%})
* [Working with Resources]({%slug winforms/scheduler/data-binding/working-with-resources%})
* [Setting Appointments and Resources Relations]({%slug winforms/scheduler/data-binding/setting-appointment-and-resource-relations%})

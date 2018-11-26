---
title: Binding to Access DB(Tips and Tricks)
page_title: Binding to Access DB(Tips and Tricks) | RadScheduler
description: Binding, updating and synchronization of data retrieved from Access DB(Tips and Tricks)
slug: winforms/scheduler/data-binding/binding-to-access-db(tips-and-tricks)
tags: binding,to,access,db(tips,and,tricks)
published: True
position: 7
previous_url: scheduler-data-binding-binding-to-access-db-(tips-and-tricks)
---

# Binding to Access DB(Tips and Tricks)

## Issue 1: Creating a DataSet from MS Access

When you create a dataset from the MS Access database, several properties of the auto number fields are wrongly set. Please, set these as in the right (correct) version below:

## Issue 2: Updating and Synchronization of DataSets

Access databases have to be treated slightly differently than SQL data bases, because the dataset is not created correctly when the data tables are created, which in turn will not update your data set correctly once a change in an appointment is done.

This is due to a synchronization problem between the database and the dataset, where the data adapter could not update correctly the Id of the added row. Please, review the following MSDN article on how to solve this limitation: [Retrieving Identity or Autonumber Values](http://msdn.microsoft.com/en-us/library/ks9f57t0%28VS.71%29.aspx)

# See Also

* [Design Time]({%slug winforms/scheduler/design-time/smart-tag%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Scheduler Mapping]({%slug winforms/scheduler/data-binding/scheduler-mapping%})
* [Working with Resources]({%slug winforms/scheduler/data-binding/working-with-resources%})
* [setting Appointments and Resources Relations]({%slug winforms/scheduler/data-binding/setting-appointment-and-resource-relations%})


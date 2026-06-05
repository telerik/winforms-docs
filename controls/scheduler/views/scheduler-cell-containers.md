---
title: Scheduler Cell Containers
page_title: Scheduler Cell Containers - RadScheduler
description: The cell containers in RadScheduler are the elements which contain cells and appointments. The cells and the appointments are dynamic elements which get recycled and updated under various conditions
slug: winforms/scheduler/views/scheduler-cell-containers
tags: scheduler,cell,containers
published: True
position: 12
previous_url: scheduler-views-scheduler-cell-containers
---

# Scheduler Cell Containers

The cell containers in __RadScheduler__ are the elements which contain cells and appointments. The cells and the appointments are dynamic elements which get recycled and updated under various conditions. The cell containers are responsible for handling this. All cell containers inherit from the abstract __SchedulerCellContainer__ class. Elements that implement this type are: __DayViewAllDayHeader__, __DayViewAppointmentsTable__, __DayViewHeader__, __MonthViewAreaElement__, __MonthViewHeader__, __MonthViewVerticalHeader__, __TimelineAppointmentsPresenter__, __TimelineHeader__.

## Initializing The Elements

The __InitializeCells__ and __InitializeAppointments__ methods are used to refresh the cell elements and appointment elements respectively. Both methods first remove the existing elements and add them to a cache so they can be reused later. After that new elements are either created or pulled out from the cache. The methods are called when the containers are being constructed and when a change that requires a refresh of the elements occurs (e.g. if you change the DayCount in day view). The __AppointmentsRefreshing__ and __CellsRefreshing__ events are fired by these methods before the refresh is performed. These event allow you to cancel the refresh. The __AppointmentRefreshed__ and __CellsRefreshed__ events are fired after the refresh is performed and allow you to do some custom operations over the newly created elements.

#### Initialize Elements

<snippet id='scheduler-schedulercellcontainers-initializeschedulerchildren-cs' />
<snippet id='scheduler-schedulercellcontainers-initializeschedulerchildren-vb' />



#### Handle Events

<snippet id='scheduler-schedulercellcontainers-cellcontainerevents-cs' />
<snippet id='scheduler-schedulercellcontainers-cellcontainerevents-vb' />



## Updating The Elements

The __UpdateCells__ and __UpdateAppointments__ are called to synchronize the existing elements with the information from the active view (e.g. when the start date of the view changes, the cells’ dates are synchronized). Unlike the Initialize methods, these methods leave the elements as they are and just update their properties. The Initialize methods call these methods when the new elements are created to update their properties. These methods cause the __CellFormatting__ and __AppointmentFormatting__ events respectively.

#### Update Elements

<snippet id='scheduler-schedulercellcontainers-updateschedulerchildren-cs' />
<snippet id='scheduler-schedulercellcontainers-updateschedulerchildren-vb' />



## Getting The Existing Elements

You can access the cell element and the appointment elements from a SchedulerCellContainer by using the __CellElements__ and the __AppointmentElements__ collections.

#### Access Elements

<snippet id='scheduler-schedulercellcontainers-cellcontainergetelements-cs' />
<snippet id='scheduler-schedulercellcontainers-cellcontainergetelements-vb' />



## Accessing The Containers From The ViewElement 

The __SchedulerViewElement__ base type provides means for accessing the containers in the current view. Using the __GetCellContainers__ method you can get all the containers in a list and perform for example an update operation over all of them:

#### Update Elements In The Container

<snippet id='scheduler-schedulercellcontainers-viewelementupdatecells-cs' />
<snippet id='scheduler-schedulercellcontainers-viewelementupdatecells-vb' />



For your convenience, there are the __InitializeCells__, __UpdateCells__,  __InitializeAppointmentElements__, __UpdateAppointmentElements__ methods of the view element which you can use to perform the same operation over all of the child SchedulerCellContainers:

#### Update Elements From The View Element

<snippet id='scheduler-schedulercellcontainers-viewelementupdatecellsdirect-cs' />
<snippet id='scheduler-schedulercellcontainers-viewelementupdatecellsdirect-vb' />



Additionally, there are the __GetCellEments__ and the __GetAppointmentElements__ methods  which return a list of all cell or appointment elements from all containers in the view.

#### Get Elements

<snippet id='scheduler-schedulercellcontainers-viewelementgetallelements-cs' />
<snippet id='scheduler-schedulercellcontainers-viewelementgetallelements-vb' />



# See Also

* [Common Visual Properties]({%slug winforms/scheduler/views/common-visual-properties%})
* [Working with Views]({%slug winforms/scheduler/views/working-with-views%})
* [Views Walkthrough]({%slug winforms/scheduler/views/views-walkthrough%})
* [Grouping by Resources]({%slug winforms/scheduler/views/grouping-by-resources%})
* [Exact Time Rendering]({%slug winforms/scheduler/views/exact-time-rendering%})

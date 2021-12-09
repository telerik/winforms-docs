---
title: AppointmentResizingBehavior
page_title: AppointmentResizingBehavior | RadScheduler
description: This article described the default resizing behavior as well as how this behavior can be altered by using a custom class.
slug: winforms/scheduler/fundamentals/scheduler-resizing
tags: scheduler,resize
published: True
position: 4 
---

# AppointmentResizingBehavior

**RadScheduler** supports appointments resizing by its **AppointmentResizingBehavior**. The **AllowAppointmentResize** property controls whether the resize operation is enabled.

The **AppointmentResizingBehavior** can be accessed by the **ResizeBehavior** property. It exposes the following public properties and methods:

|Property|Description|
|----|----|
|**AutoScrollDayViewOnResize**|Gets or sets a value indicating whether the appointment areas in DayView should be automatically scrolled when dragging off their bounds.|
|**CursorBoundsOffset**|Gets or sets the bounds offset which specifies the size of the sizing rectangles.|
|**ResizeMinutes**|Gets or sets the resize minutes.|
|**ActiveAppointment**|Gets or sets the active resizing appointment.|
|**IsResizing**|Gets or sets whether the user is currently resizing the active appointment. |

|Method|Description|
|----|----|
|**Resize(Point mousePosition)**|Resizes an appointment to a given position.|
|**Resize(Point mousePosition, IEvent appointment)**|Resizes an appointment to a given position.|
|**RequestResize(AppointmentElement appointment, SchedulerVisualElement newOwner)**|Requests a resize start.|
|**RequestResize(AppointmentElement appointment, SchedulerVisualElement newOwner, bool start)**|Requests a resize start.|
|**RequestResize(AppointmentElement appointment, SchedulerVisualElement newOwner, Point cursorPosition, ResizeOptions resizeOptions)**|Requests a resize start.|
|**RequestResize(AppointmentElement appointment, SchedulerVisualElement newOwner, Point cursorPosition, ResizeOptions resizeOptions, bool start)**|Requests a resize start.|
|**EndResize**|Terminates the resize operation.|
|**EndResize(IEvent appointment)**|Ends the appointment resizing.|
|**GetResizeInformation**|Gets the resizing information.|
|**UpdateResizeOptions**|Updates the resizing options.|

When the [SchedulerInputBehavior]({%slug winforms/scheduler/fundamentals/input-behavior%}) handles mouse moving (while the MouseButtons.Left is pressed), it determines whether to start  the [AppointmentDraggingBehavior]({%slug winforms/scheduler/drag-and-drop/appointmentdraggingbehavior%}) or the **AppointmentResizingBehavior**. If an ongoing resize operation is currently being processed, the mouse position is applied to the resize operation.

**RadScheduler** offers several events that allows you to track the different stages of the resize operation:

|Events|Description|
|----|----|
|**AppointmentResizeStart**|Occurs when the resize operation is starting. Cancelable.|
|**AppointmentResizing**|Occurs when the resize operation is starting. Cancelable.|
|**AppointmentResized**|Occurs when the appointment has been resized.|
|**AppointmentResizeEnd**|Occurs when the resize operation has ended.|

  
# See Also

* [How to Confirm Appointment's Resizing in RadScheduler]({%slug custom-resizing-behavior-in-radscheduler%})
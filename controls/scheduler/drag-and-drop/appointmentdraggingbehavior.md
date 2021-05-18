---
title: AppointmentDraggingBehavior
page_title: AppointmentDraggingBehavior - WinForms Scheduler Control
description: WinForms Scheduler supports drag and drop and it can be implemented so that appointments are dragged from another control, in our case a ListBox.
slug: winforms/scheduler/drag-and-drop/appointmentdraggingbehavior
tags: drag,and,drop,from,another,control
published: True
position: 0 
---

# AppointmentDraggingBehavior

**RadScheduler** handles the whole drag and drop operation by its **AppointmentDraggingBehavior**. It exposes the following public properties, methods and events:

## Properties

|Property|Description|
|----|----|
|**AutoScrollDayViewOnDrag**|Gets or sets a value indicating whether the appointment areas in DayView should be automatically scrolled when dragging off their bounds.|
|**ShowCreateExceptionDialog**|Gets or sets a value indicating whether a prompt dialog box should be shown when the user is about to create occurrence exception via drag and drop.|
|**DragNavigationOffset**|Gets or sets the offset from the bounds of the control in pixels after which the automatic view navigation will be triggered.|
|**DragNavigationInterval**|Gets or sets the minimum time interval between automatic view navigations.|
|**Scheduler**|The RadScheduler that owns the behaviors.|
|**IsDragging**|Indicates whether there is an active drag operation.|
|**ActiveOwner**|Gets the behavior's active owner.|
|**ActiveFeedback**|Gets the active feedback.|

## Methods

|Method|Description|
|----|----|
|**MoveFeedback**|Moves the active feedback to a new owner.|
|**DoDragOver**|Handles dragging the active feedback to a given point.|
|**IsRealDrag**|Gets whether this is a valid drag operation.|
|**IsElementOwner**|Gets whether the element is found in the owners collection.|
|**GetFeedback**|Gets a specific feedback.|
|**BeginDrag**|Request move operation.|
|**RemoveFeedback**|Removes the visual feedback. Cancels the drag operation.|
|**Drop**|Handles the Drop operation.|
|**Move**|Moves the feedback to a specific date in a specific resource.|
|**AddToOwnerCollection**|Adds the active feedback to the active owner.|
|**CreateFeedback**|Creates a new appointment feedback of a given appointment.|
 
## Events specific only for the AppointmentDraggingBehavior

|Event|Description|
|----|----|
|**FeedbackCreating**|Occurs when the feedback is creating.|
|**FeedbackInitialized**|Occurs when the feedback is initialized.|
|**AppointmentMoving**|Occurs when an appointment is moving.|
|**AppointmentMoved**|Occurs when an appointment is moved.|
|**AppointmentDropping**|Occurs when drag drop is finishing.|
|**AppointmentDropped**|Occurs when drag drop has finished.|

By default, **RadScheduler** allows you to reorder the **Appointments** into the view either in bound or unbound mode. It is accomplished by the **AppointmentDraggingBehavior**. If you need to customize the default drag and drop behavior you can handle the relevant events. As a descendant of [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%}), **AppointmentDraggingBehavior** handles the whole drag and drop operation. The **PreviewDragOver** event allows you to control on what targets the appointment being dragged can be dropped on. The **PreviewDragDrop** event allows you to get a handle on all the aspects of the drag and drop operation, the source (drag) **RadScheduler**, the destination (target) control, as well as the **AppointmentElement** being dragged. This is where we will initiate the actual physical move of the appointment(s) from one scheduler to the target control. A sample implementation is demonstrated in the [Drag and Drop Using RadDragDropService]({%slug winforms/scheduler/drag-and-drop/drag-and-drop-using-raddragdropservice%}) help article.

# See Also

* [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%})	
* [Drag and Drop Using RadDragDropService]({%slug winforms/scheduler/drag-and-drop/drag-and-drop-using-raddragdropservice%})
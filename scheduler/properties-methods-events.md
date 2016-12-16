---
title: Properties, Methods and Events
page_title: Properties, Methods, Events | RadScheduler
description: Telerik RadScheduler is a highly-customizable appointment presentation component that offers rich Outlook®-style functionality.
slug: winforms/scheduler/properties-methods-and-events
tags: radscheduler, properties, methods, events
published: True
position: 8
---

# Properties

|Property|Description|
|------|------|
|__AppointmentElementFactory__|Gets or sets a factory class that is used when creating appointment elements.|
|__SchedulerInputBehavior__|Gets or sets the which is responsible for handling the mouse and keyboard input. Be sure to dispose the old instance when replacing it with a new one.|
|__SelectionBehavior__|Gets or sets the which is responsible for handling the selection of cells and appointments in .|
|__ElementProvider__|Gets or sets the which is responsible for creating and recycling of most of RadScheduler's visual elements.|
|__SaveLoadRemindersBehavior__|Gets or sets the behavior responsible for saving and loading appointment reminders.|
|__AppointmentsComparer__|Gets or sets a comparer which will be used to determine the order of the appointments when they have the same Start and End dates.|
|__DragDropBehavior__|Gets or sets the which is responsible for performing the drag and drop of appointments in RadScheduler.|
|__ResizeBehavior__|Gets or sets the which is responsible for performing the resizing of appointments in RadScheduler.|
|__SystemTimeZone__|Gets or sets the selected time zone.|
|__DataSource__|Gets or sets the data source.|
|__SchedulerElement__|Gets the scheduler element.|
|__ViewElement__|Gets the view element.|
|__Statuses__|Gets the statuses.|
|__Resources__|Gets the resources.|
|__Backgrounds__|Gets the backgrounds.|
|__Reminders__|Gets the predefined reminder time intervals.|
|__ActiveViewType__|Gets or sets the type of the active view.|
|__Appointments__|Gets the appointments.|
|__AccessibleInterval__|Gets or sets the interval which is accessible to the user.|
|__ActiveView__|Gets or sets the active view.|
|__AppointmentFactory__|Gets or sets an which used to create objects which represent the appointments in RadScheduler.|
|__HighlightToday__|Gets or sets value whether to show the today visual state of scheduler cells|
|__AllowMouseWheelSupport__|Enables or disables mouse wheel support.|
|__AllowCopyPaste__|Allows or disallows the end user to copy, cut and paste appointments using the default combinations Ctrl+X, Ctrl+C and Ctrl+V.|
|__AllowViewNavigationOnDrag__|Enables automatic navigation to previous/next view when dragging an appointment outside the boundaries of the control.|
|__AllowAppointmentResize__|Enables or disables appointment resizing|
|__AllowAppointmentCreateInline__|Enables or disables creating appointments when typing in a cell.|
|__AllowAppointmentMove__|Enables or disables appointment moving.|
|__ShowAppointmentStatus__|Gets or sets a value indicating whether the appointment status should be displayed.|
|__ShowAllDayAppointmentStatus__|Gets or sets a value indicating whether to display all day appointment status.|
|__AutoSizeAppointments__|Gets or sets a value indicating whether the appointments elements should be sized to fit their content.|
|__AllowAppointmentsMultiSelect__|Gets or sets a value indicating whether selecting multiple appointments is possible.|
|__DefaultRecurrenceIcon__|Gets the default recurrence icon.|
|__AppointmentRecurrenceIcon__|Gets or sets the appointment reccurence icon.|
|__DefaultSize__|Gets the default size of the control.|
|__ShowNavigationElements__|Gets or sets a value whether to show the "Previous/Next Appointment" navigation elements.|
|__AppointmentTitleFormat__|Gets or sets the appointment title format.|
|__ReadOnly__|Gets or sets a value indicating whether appointments can be changed.|
|__HeaderFormat__|Gets or sets the header format.|
|__GroupType__|Gets or sets the type of grouping.|
|__AllowToolTips__|Gets or sets a value indicating whether tool tips are shown.|
|__DateTimeFormat__|Gets or sets a DateTimeFormatInfo instance that defines the culturally appropriate format of displaying dates and times as specified by the default culture.|
|__FocusedDate__|Gets or sets the value that is used by RadScheduler to determine the viewable area displayed .|
|__Culture__|Gets or sets the CultureInfo supported by this RadScheduler object.Describes the names of the culture, the writing system, and the calendar used, as well as access to culture-specific objects that provide methods for common operations, such as formatting dates and sorting strings.|
|__RadContextMenu__|Gets or sets the shortcut menu associated with the control.|
|__EnableExactTimeRendering__|Gets or sets whether appointments are rendered according to their start and end time or are aligned to the scheduler grid lines.|
|__EnableCustomCellDrawing__|Gets or sets a value indicating whether the CellPaint event will be fired.|
|__AutoSize__|AutoSize is not supported by RadScheduler. Setting it will have no effect.|
|__BackColor__|RadScheduler consists of multiple visual elements and separate settings are provided to customize their appearance. Current BackColor property might be ignored.|
|__ForeColor__|RadScheduler consists of multiple visual elements and separate settings are provided to customize their appearance. Current ForeColor property might be ignored.|
|__PrintStyle__|Gets or sets a value indicating how the is printed.|
|__DropDownMenu__|Gets the drop down menu.|

# Methods

|Method|Description|
|------|------|
|__CreateAppointmentEditDialog__|Creates the appointment edit dialog. Overwrite in an inheriting class to replace the dialog used to edit appointments.|
|__DisposeManagedResources__|Disposes the managed resources.|
|__Dispose__|Releases the unmanaged resources used by the and optionally releases the managed resources.|
|__ShowAppointmentEditDialog__|Shows the appointment edit dialog.|
|__GetDayView__|Gets the day view.|
|__GetMultiDayView__|Gets the multi day view.|
|__GetWeekView__|Gets the week view.|
|__GetMonthView__|Gets the month view.|
|__GetTimelineView__|Gets the timeline view.|
|__Export(ISchedulerExporter exporter)__|Exports the data in this RadScheduler instance to the specified string, using the specified ISchedulerExporter instance.|
|__Export(Stream stream, ISchedulerExporter exporter)__|Exports the data in this RadScheduler instance to the specified stream, using the specified ISchedulerExporter instance.|
|__Import(string stringData, ISchedulerImporter importer)__|Imports the data from the specified string into this RadScheduler instance, using the specified ISchedulerImporter instance.|
|__Import(Stream stream, ISchedulerImporter importer)__|Imports the data from the specified stream into this RadScheduler instance, using the specified ISchedulerImporter instance.|
|__SaveReminders(string filePath)__|Saves all appointment reminders to the provided file. If the file does not exist it is created otherwise it is overwritten.|
|__SaveReminders(Stream stream)__|Saves all appointment reminders to the provided stream.|
|__ClearReminders__|Clears the reminders of all appointments. Usually this method is used before LoadReminders is called.|
|__LoadReminders(string filePath)__|Loads the reminders from the specified file path.|
|__LoadReminder(Stream stream)__|Loads the reminders from the specified stream.|
|__ShowContextMenu__|Displays the context menu associated with this control on the provided location.|
|__GetEventStorage__|Gets the event storage.|
|__GetResourceStorage__|Gets the resource storage.|
|__GetBackgroundStorage__|Gets the background storage.|
|__GetStatusStorage__|Gets the status storage.|
|__GetReminderStorage__|Gets the reminder storage.|
|__OnCultureChanged__|Fires the CultureChanged event.|
|__OnEditorRequired__|Fired when the editor should be opened|
|__OnAddAppointments__|Called when appointments have been added.|
|__OnRemoveAppointments__|Called when appointments have been removed.|
|__OnReplaceAppointments__|Called when appointments have been replaced.|
|__OnUpdateAppointments__|Called when appointments have to be refreshed.|
|__OnAppointmentsChanged__|Called when one or more appointments have changed.|
|__OnAppointmentRender__|Raises the event.|
|__OnCellPaint__|Raises the event.|
|__OnRulerTextFormatting__|Raises the event.|
|__OnContextMenuOpening__|Raises the event.|
|__FillDefaultStatuses__|Fills the default statuses.|
|__FillDefaultReminders__|Fills the default reminder intervals.|
|__FillDefaultBackgrounds__|Fills the default backgrounds.|
|__AddNewAppointmentWithDialog(DateTimeInterval interval, bool recurringAppointment, SchedulerResourceCollection resources)__|Shows the appointment edit dialog to add a new appointment. The interval to pass to the ShowAppointmentEditDialog method. Indicates whether the appointment should be a recurring one. The resources of the new appointment.|
|__AddNewAppointmentWithDialog(DateTimeInterval interval, bool allDay, bool recurringAppointment, SchedulerResourceCollection resources)__|Shows the appointment edit dialog to add a new appointment. Indicates whether the appointment should be an AllDay appointment. The interval to pass to the ShowAppointmentEditDialog method. Indicates whether the appointment should be a recurring one.The resources of the new appointment.|
|__Copy__|Copies the currently selected appointments to the clipboard.|
|__Cut__|Deletes the currently selected appointments and saves them to the clipboard.|
|__Paste__|Pastes the content from the clipboard to the scheduler.|
|__Print__|Directly prints the to the default printer.|
|__Print(bool showPrinterSettings)__|Directly prints the to the default printer or shows printer settitngs and then prints the. Indicates whether printer settings dialog should be shown.|
|__Print(bool showPrinterSettings, RadPrintDocument document)__|Directly prints the to the default printer or shows printer settitngs and then prints the. Indicates whether printer settings dialog should be shown. As instance of RadPrintDocument used to control the print process.|
|__PrintPreview__|Shows a for editing the print settings. As instance of RadPrintDocument used to control the print preview process.|
|__PrintPreview(RadPrintDocument document)__|Shows a for editing the print settings.|

# Events

|Event|Description|
|------|------|
|__CellFormatting__|Fired when a cell element is being prepared for displaying. Use this event to modify visual properties of the . Modifying data properties on the formatting events can result in exceptions.|
|__CellPaint__|Occurs after a cell is drawn. Allows custom painting over the cell element. EnableCustomCellDrawing must be set to true for this event to be fired.|
|__AppointmentRender__|Occurs when appointment element is rendered.|
|__CultureChanged__|Occurs when culture has changed|
|__AppointmentMoving__|Occurs when the an appointment is about to be moved.|
|__AppointmentMoved__|Occurs when the an appointment has been moved.|
|__AppointmentDropping__|Occurs when the an appointment is about to be dropped.|
|__AppointmentDropped__|Occurs when the an appointment has been dropped.|
|__AppointmentResizing__|Occurs when the an appointment is about to be resized.|
|__AppointmentResized__|Occurs when the an appointment has been resized.|
|__AppointmentResizeStart__|Occurs when the a rezie operation is starting. Cancelable.|
|__AppointmentResizeEnd__|Occurs when the a resize operation has ended.|
|__AppointmentDeleting__|Occurs when the scheduler is deleting the selected appointment.|
|__AppointmentDeleted__|Occurs when the scheduler has deleted the selected appointment.|
|__AppointmentAdded__|Occurs when the end user adds an appointment either with the EditAppointmentDialog or inline.|
|__AppointmentChanged__|Occurs when an appointment's property has changed.|
|__AppointmentSelecting__|Occurs when an appointment will be selected.|
|__AppointmentSelected__|Occurs when an appointment is selected.|
|__CellSelectionChanging__|Occurs when the cell selection is about to change. Cancelable.|
|__CellSelectionChanged__|Occurs when the cell selection has changed.|
|__ResourceStartIndexChanged__|Occurs when the ResourceStartIndex has changed. Fired only when grouping by resource.|
|__ResourceStartIndexChanging__|Occurs when the ResourceStartIndex is about to change. Cancelable. Fired only when grouping by resource.|
|__CellClick__|Occurs when a cell is clicked.|
|__AppointmentMouseUp__|Occurs when the MouseUp event of an appointment is fired.|
|__AppointmentMouseDown__|Occurs when the MouseDown event of an appointment is fired.|
|__AppointmentElementMouseDown__|Occurs when the MouseDown event of an appointment element is fired.|
|__AppointmentElementMouseMove__|Occurs when the MouseMove event of an appointment element is fired.|
|__AppointmentElementMouseUp__|Occurs when the MouseUp event of an appointment element is fired.|
|__AppointmentElementDoubleClick__|Occurs when the DoubleClick event of an appointment element is fired.|
|__CellElementMouseDown__|Occurs when the MouseDown event of the cell is fired.|
|__CellElementMouseMove__|Occurs when the MouseMove event of the cell is fired.|
|__CellElementMouseUp__|Occurs when the MouseUp event of the cell is fired.|
|__CellElementDoubleClick__|Occurs when the DoubleClick event of the cell is fired.|
|__CellElementKeyDown__|Occurs when the KeyDown event of the cell is fired.|
|__CellElementKeyPress__|Occurs when the KeyPressed event of the cell is fired.|
|__CellElementKeyUp__|Occurs when the KeyUp event of the cell is fired.|
|__DataBindingComplete__|Occurs when the Data is loaded from the data source.|
|__ContextMenuOpening__|Occurs before the context menu is opened.|
|__ActiveViewChanging__|Occurs when the ActiveView is about to change.|
|__ActiveViewChanged__|Occurs when the ActiveView has changed.|
|__AppointmentFormatting__|Occurs when an appointment element is prepared to be displayed. Use this event to modify visual properties of the . Modifying data properties on the formatting events can result in exceptions.|
|__EditorRequired__|Occurs when an inline appointment editor is required.|
|__ViewNavigating__|Occurs when the view is about to change and this is caused by a click on the ViewNavigationElement.|
|__ViewNavigated__|Occurs when the view has changed and this is caused by a click on the ViewNavigationElement.|
|__CellOverflowButtonClicked__|Occurs when the overflow arrow of a cell in MonthView is clicked. When this event is handled, the default action of the overflow arrow is not executed.|
|__PrintElementFormatting__|Fires when a print element is being formatted before it is printed.|
|__CellPrintElementFormatting__|Fires when a cell print element is being formatted before it is printed.|
|__AppointmentPrintElementFormatting__|Fires when an appointment print element is being formatted before it is printed.|
|__PrintElementPaint__|Fires when a print element is printed.|
|__CellPrintElementPaint__|Fires when a cell print element is printed.|
|__AppointmentPrintElementPaint__|Fires when an appointment print element is printed.|
|__AppointmentEditDialogShowing__|Occurs when the EditAppointmentDialog is showing.|
|__RecurrenceEditDialogShowing__|Occurs when the EditReccurenceDialog is showing.|
|__RecurrenceDeleteDialogShowing__|Occurs when the DeleteRecurrenceDialog is showing.|
|__RulerTextFormatting__|Occurs when the text of a ruler is drawn.|
|__AppointmentsCopying__|Fired by the Copy operation when the scheduler is about to prepare the clipboard data. This event allows you to cancel the default action and implement a custom one.|
|__AppointmentsPasting__|Fired by the Paste operation when the scheduler is about to read the clipboard data. This event allows you to cancel the default action and implement a custom one.|
|__ContextMenuShowing__|Occurs when a context menu is about to show.|

# See Also

* [Properties](http://docs.telerik.com/devtools/winforms/api/html/properties_t_telerik_wincontrols_ui_radscheduler.htm)
* [Methods](http://docs.telerik.com/devtools/winforms/api/html/methods_t_telerik_wincontrols_ui_radscheduler.htm)
* [Events](http://docs.telerik.com/devtools/winforms/api/html/events_t_telerik_wincontrols_ui_radscheduler.htm)


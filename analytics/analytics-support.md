---
title: Analytics Support
page_title: Analytics Support | UI for WinForms Documentation
description: When you are creating an application for a broad audience, integrating some kind of analytics framework is crucial, because you will need to analyze the usage data of the application and its features and most probably you will need to know about any application crashes or other errors occurred during the execution.
slug: winforms/analytics/analytics-support
tags: telerik,analytics,support
published: True
position: 0
previous_url: telerik-analytics-integration
---

# Application Analytics

When you are creating an application for a broad audience, integrating some kind of analytics framework is crucial, because you will need to analyze the usage data of the application and its features and most probably you will need to know about any application crashes or other errors occurred during the execution. Using Analytics you will be able to trace certain features of the controls and get statistics about their usage.

This article will discuss the following topics:

* [ITraceMonitor Interface](#itracemonitor-interface)
* [How Analytics Works](#how-analytics-works)
* [Traceable Features](#traceable-features)


## ITraceMonitor Interface

With the R1 2014 release UI for WinForms exposes the **ITraceMonitor** interface which represents a monitor receiving trace events from the UI for WinForms controls.

You need to implement the following methods in order to receive trace events from the controls used in your application:

 * **TrackAtomicFeature**: This method is called when an atomic feature is executed.
 * **TrackFeatureStart**: This method is called when a feature is initiated.
 * **TrackFeatureEnd**: This method is called when a feature finishes execution.
 * **TrackFeatureCancel**: This method is called when a feature is canceled.
 * **TrackError**: Traces an error in a specified feature.
 * **TrackValue**: This method is called when a value connected with a specific feature is tracked.

Once you've created your implementation of the interface in accordance to your provider of choice you need to set the static TraceMonitor.**AnalyticsMonitor** property as per the example below.

#### ITraceMonitor Instance

{{source=..\SamplesCS\Analytics\AnalyticsForm.cs region=ITraceMonitorInstance}} 
{{source=..\SamplesVB\Analytics\AnalyticsForm.vb region=ITraceMonitorInstance}}
````C#
ControlTraceMonitor.AnalyticsMonitor = new CustomAnalitycsMonitor();

````
````VB.NET
ControlTraceMonitor.AnalyticsMonitor = New CustomAnalitycsMonitor()

```` 



{{endregion}}

## How Analytics Works

Each control has analytics enabled by default, on control basis analytics can be disabled by setting the control`s **EnableAnalytics** property to *false*. Having analytics enabled, all one needs to do to start tracing the application usage is to set the **AnalyticsName** property for each control. Note that the value which is set will be used in the dashboard.

#### Set AnalyticsName

{{source=..\SamplesCS\Analytics\AnalyticsForm.cs region=SetAnalyticsName}} 
{{source=..\SamplesVB\Analytics\AnalyticsForm.vb region=SetAnalyticsName}}
````C#
this.radButton1.EnableAnalytics = true; // default value
this.radButton1.AnalyticsName = "Save Button";

````
````VB.NET
Me.RadButton1.EnableAnalytics = True
' default value
Me.RadButton1.AnalyticsName = "Save Button"

```` 



{{endregion}}

You can then go to the dashboard of your analytics provider, where you will find information and statistics for the registered features for different periods of time.

#### Disable Analytics

{{source=..\SamplesCS\Analytics\AnalyticsForm.cs region=DisableAnalytics}} 
{{source=..\SamplesVB\Analytics\AnalyticsForm.vb region=DisableAnalytics}}
````C#
this.radButton1.EnableAnalytics = false;

````
````VB.NET
Me.RadButton1.EnableAnalytics = False

```` 



{{endregion}}

## Traceable Features

Currently only few controls support analytics out of the box. Note that only user interactions will be tracked - initial values and values from Bindings are not supported. You can find below a list of the controls and their features that support tracing:

| Control | Traceable events and methods |
| ------ | ------ |
|**ColorPicker**|SelectionChanged|
|**RadAutocompleteBox**|InsertText|
|**RadBindingNavigator**|MoveToFirst, MoveToPrevious, MoveToNext, MoveToLast|
|**RadButton**|Click|
|**RadBulletGraph**|ValueChanged|
|**RadCalendar**|SelectionChaned, Navigation, ViewChanged|
|**RadCarousel**|Selection|
|**RadChartView**|Zoom, Pan, SelectionChanged|
|**RadCheckedDropDownList**|Checked, Popup open close|
|**RadCollapsiblePanel**|Expand, Collapse|
|**RadColorBox**|SelectionChanged|
|**RadContextMenu**|Open, Close, Click (RadContextMenu.DropDown)|
|**RadDataEntry**|Editing, Insert/Delete, MoveToFirst, MoveToPrevious, MoveToNext, MoveToLast|
|**RadDataLayout**|Customize open, Item rearrange (via drag and drop, resize or context menu)|
|**RadDateTimePicker**|ValueChanged|
|**RadDiagram**|Move, Resize, Add, Delete|
|**RadDock**|Save layout, Load layout, Float a pane, Dock a pane, Add window, Remove window|
|**RadDropDownButton**|DropDownOpened, DropDownClosed|
|**RadDropdownList**|SelectionChanged,  DropDownOpened, DropDownClosed|
|**RadForm**|SelectionChanged, DropDownOpened, DropDownClosed|
|**RadGanttView**|Collapse task, Expand task, Edit task, Selected task|
|**RadGridView**|MoveToFirst, MoveToPrevious, MoveToNext,  MoveToLast,|
|**RadGridView** - Paging|MoveToFirst, MoveToPrevious, MoveToNext, MoveToLast|
|**RadLayoutControl**|Customize open, Item rearrange (via drag and drop, resize or context menu)|
|**RadLinearGauge**|ValueChanged|
|**RadListControl**|SelectionChanged|
|**RadMasketEditBox**|SelectionChanged|
|**RadMenu**|Click|
|**RadPageView** - ExplorerBar|Expand, Collapse, SelectionChanged| Collapse, SelectionChanged|
|**RadPageView** - Strip|SelectionChanged|
|**RadPanorama**|Reordering, Scrolling|
|**RadPdfViewer**|Load Document, Print, Print Preview|
|**RadPivotGrid**|Begin refresh, Complete refresh, Expand group header, Collapse group header, DragDrop field, Export|
|**RadPopupEditor**|Popup open close|
|**RadPropertyGrid**|Sorting, Grouping, Editing, Searching, Expanding Groups, Expanding nested definition|
|**RadRadialGauge**|ValueChanged|
|**RadRadioButton**|Checked, Unchecked|
|**RadRibbonBar**|SelectionChanged|
|**RadRichTextBox**|Open Document, Save Document|
|**RadRichTextEditor**|New, Open, Save, Print, PrintPreview|
|**RadScheduler**|ViewChanged, Import, Export, Editing, Creating, DragAndDrop, Resize, ShowDialog|
|**RadSpinEditor**|SelectionChanged|
|**RadSpreadSheet**|Open Document, Save Document, Hyperlink Click|
|**RadTimePicker**|ValueChanged|
|**RadToggleButton**|Checked,  Unchecked|
|**RadToggleSwitch**|Checked, Unchecked|
|**RadTrackBar**|SelectionChanged|
|**RadTreeView**|Select, Expand/Collapse, SelectionChanged, Edit, NodeRemoved|
|**RadWaitingBar**|StartWaiting, EndWaiting|
|**Exporting features in controls**|All export providers(including async exports) - when export operation is completed|

# See Also

* [Google Analytics Integration]({%slug winforms/analytics/google-analytics-integration%})

---
title: Overview
page_title: Telerik Analytics Integration | UI for WinForms Documentation
description: Telerik Analytics Integration
slug: winforms/telerik-analytics-integration
tags: telerik,analytics,integration
published: True
position: 0
previous_url: telerik-analytics-integration
---

# Telerik Analytics Integration

When you are creating an application for a broad audience, integrating some kind of analytics framework is crucial, because you will need to analyze the usage data of the application and its features and most probably you will need to know about any application crashes or other errors occurred during the execution. With the R1 2014 release UI for WinForms provides integrated support for [ Telerik Analytics](http://www.telerik.com/analytics). Using Analytics you will be able to trace certain features of the controls and get statistics about their usage. By default we have implemented the most used features of our controls (enlisted below) and of course you are enabled to track your own features that will better suit your needs. In advance, you can disable the features we track per control.

In order to use this service, first you should contact <sales@telerik.com> and they will help you get started. Once your account is setup, you can log into the [analytics dashboard](https://platform.telerik.com/), and obtain a __product key__. For more information please check out the topic on [Getting Started with Telerik Analytics. ](http://docs.telerik.com/platform/analytics/getting-started/your-application) Then you can create a new Telerik WinForms Application with enabled Analytics support or you can enable it in an existing project. Both options are explained in details below.

![eqatec-analitics-application-integration 001](images/eqatec-analitics-application-integration001.png)

## How to add support to existing applications

First, you will need to reference the EQATEC.Analytics.Monitor.dll in your application. Note that this dll is distributed together with the other assemblies in the UI for WinForms suite. Then in order to configure the project to support Analytics, please add the following code in the constructor of the Main Form class or static Main function:

{{source=..\SamplesCS\Eqatec\Eqatec.cs region=key}} 
{{source=..\SamplesVB\Eqatec\Eqatec.vb region=key}} 

````C#
EQATEC.Analytics.Monitor.IAnalyticsMonitor monitor = Telerik.WinControls.Analytics.TraceMonitor.Initialize("product key");

````
````VB.NET
Dim monitor As Global.EQATEC.Analytics.Monitor.IAnalyticsMonitor = Telerik.WinControls.Analytics.TraceMonitor.Initialize("product key")

````

{{endregion}} 

Where "product_key" should be replaced with the product key you got after registering your application on [https://platform.telerik.com ](https://platform.telerik.com)

## Disable analytics per control

You can disable the analytics functionality for particular controls with their __EnabeleAnalytics__ property. Additionally you can customize the analytics data with the __AnalyticsName__ property:

{{source=..\SamplesCS\Eqatec\Eqatec.cs region=properties}} 
{{source=..\SamplesVB\Eqatec\Eqatec.vb region=properties}} 

````C#
this.radButton1.EnableAnalytics = true;
this.radButton1.AnalyticsName = "Save Button";

````
````VB.NET
Me.RadButton1.EnableAnalytics = True
Me.RadButton1.AnalyticsName = "Save Button"

````

{{endregion}}

## Tracing features

To trace features please follow the next steps:

* Create Progress&reg; Telerik&reg; UI for WinForms project called AnalyticsTestApp and add a RadButton to the form.
          

* Make sure you reference the EQATEC.Analytics.Monitor.dll assembly and use the code from the above section
          

* Run the project with the provided code
            

* Click the Button
            

* Close the application.
            

* Go to the Telerik Analytics Dashboard
            

* Expand the AnalyticsTestApp from the DashBoards panel on the left and select __Live__. The next screen will list the live usage sessions:

	![eqatec-analitics-application-integration 003](images/eqatec-analitics-application-integration003.png)

Clicking __View__ will show additional details about the session including the exact features used: 

![eqatec-analitics-application-integration 002](images/eqatec-analitics-application-integration002.png)

![eqatec-analitics-application-integration 004](images/eqatec-analitics-application-integration004.png)

![eqatec-analitics-application-integration 005](images/eqatec-analitics-application-integration005.png)

## Traceable features in UI for WinForms

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
|**RadTimePicker**|ValueChanged|
|**RadToggleButton**|Checked,  Unchecked|
|**RadToggleSwitch**|Checked, Unchecked|
|**RadTrackBar**|SelectionChanged|
|**RadTreeView**|SelectExpand, Collapse, SelectionChanged, Edit, RemoveionChanged|
|**RadWaitingBar**|StartWaiting, EndWaiting|
|**Exporting features in controls**|All export providers(including async exports) - when export operation is completed|

# See Also

 * [Introduction to Telerik Analytics](http://docs.telerik.com/platform/analytics/getting-started/introduction)
 * [Add Analytics to Your Application](http://docs.telerik.com/platform/analytics/getting-started/your-application)

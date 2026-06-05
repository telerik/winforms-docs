---
title: Docking a UserControl with custom event
page_title: Docking a UserControl with custom event - RadDock
description: This article shows how you can dock UserControl inside RadDock.
slug: winforms/dock/docking-usercontrols-and-forms/docking-a-usercontrol-with-custom-event
tags: docking,a,usercontrol,with,custom,event
published: True
position: 1
previous_url: dock-docking-usercontrols-and-forms-docking-a-usercontrol-with-custom-event
---

# Docking a UserControl with custom event
 
This tutorial walks you through a real-world scenario that you can have in your application. At a high level, this scenario involves:

1. Docking the user controls inside **RadDock**.

1. Implementing events, methods and properties in the user controls which allow you to have communication between the forms/user controls.

In our particular case we dock a user control instance inside a __RadDock__ instance. The user control itself contains a __RadCalendar__. When the user clicks the __RadCalendar__ a custom __DateChanged__ event for the **UserControl1** fires, showing a dialog with the selected date. Using this as a model you can create **UserControls** with custom properties, methods and events for more complex situations.

![WinForms RadDock Docking UserControl With Custom Event](images/dock-docking-usercontrols-and-forms-docking-a-usercontrol-with-custom-event001.png)
 
1\. In Visual Studio create a new Windows Application.

2\. Create a new UserControl - from the Solution Explorer, right-click the project node in the Solution Explorer and select "*Add >> UserControl...*". Name the new user control __CalendarPanel__.

3\. Drop a __RadCalendar__ on the __CalendarPanel__ design surface.

4\. Set the RadCalendar.__Dock__ property to *Fill*.

5\. In the **Property Window** locate the __SelectionChanged__ event and double-click it to create an event handler.

6\. Add a delegate and event to be surfaced by the **CalendarPanel** control when the date selection changes:
	
#### Setting up DateChanged Event 

<snippet id='dock-docking-a-usercontrol-with-custom-event-definingdelegates-cs' />
<snippet id='dock-docking-a-usercontrol-with-custom-event-definingdelegates-vb' />

 

In the __SelectionChanged__ event handler add the following code:

#### Handling the RadCalendar SelectionChanged event 

<snippet id='dock-docking-a-usercontrol-with-custom-event-handlingselectionchanged-cs' />
<snippet id='dock-docking-a-usercontrol-with-custom-event-handlingselectionchanged-vb' />

 

7\. In the Solution Explorer, double-click the main form to open its design surface.  

8\. Drop a __RadDock__ on the opened design surface. Set the __Dock__ property to *Fill.*

9\. Dock the __CalendarPanel__ user control to __RadDock__ in the form's **Load** event handler using the following code snippet:
	
#### Docking CalendarPanel user control in RadDock 

<snippet id='dock-docking-a-usercontrol-with-custom-event-creatingcalendarpanel-cs' />
<snippet id='dock-docking-a-usercontrol-with-custom-event-creatingcalendarpanel-vb' />

 
 
10\. Add an event handler for the CalendarPanel **DateChanged** event:
	
#### Handling the Custom DateChanged event 

<snippet id='dock-docking-a-usercontrol-with-custom-event-handlingdatechanged-cs' />
<snippet id='dock-docking-a-usercontrol-with-custom-event-handlingdatechanged-vb' />

 
 
11\. Press __F5__ to run the application. Click the cells in the calendar to display the date in a message dialog. 

# See Also
* [Getting Started]({%slug winforms/dock/docking-usercontrols-and-forms/getting-started%})
* [Docking Singleton Forms]({%slug winforms/dock/docking-usercontrols-and-forms/docking-singleton-forms%})
* [Get a HostWindow by its Content]({%slug winforms/dock/docking-usercontrols-and-forms/get-a-hostwindow-by-its-content%}) 

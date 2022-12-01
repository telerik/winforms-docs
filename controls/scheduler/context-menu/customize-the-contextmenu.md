---
title: Customize the ContextMenu
page_title: Customize the ContextMenu - RadScheduler
description: RadScheduler gives you the ability to easily customize its default context menu. This can be achieve by using the ContextMenuOppennig event.
slug: winforms/scheduler/context-menu/customize-the-contextmenu
tags: customize,the,contextmenu
published: True
position: 0
previous_url: scheduler-context-menu-customize-context-menu
---

# Customize the ContextMenu

__RadScheduler__ gives you the ability to easily customize its default context menu. This can be achieve by using the __ContextMenuOppennig__ event.

>caption Figure 1: RadScheduler Context Menu
![WinForms RadScheduler RadScheduler Context Menu](images/scheduler-context-menu-customize-context-menu001.png)

## Replace the Default and the Appointments Context Menu.

1. Create a __RadContextMenu__ and add the necessary items to it. Create another __RadContextMenu__ and fill it with items.

1. Subscribe to the __ContextMenuOpening__ event.

1. In the __ContextMenuOpenning__ event handler replace the default context menus with the newly created ones.

{{source=..\SamplesCS\Scheduler\CustomizeContextMenu.cs region=contextMenuOpening}} 
{{source=..\SamplesVB\Scheduler\CustomizeContextMenu.vb region=contextMenuOpening}} 

````C#
void radScheduler1_ContextMenuOpening(object sender, SchedulerContextMenuOpeningEventArgs e)
{
    if (e.Element is AppointmentElement)
    {
        e.Menu = this.radContextMenu1;
    }
    else
    {
        e.Menu = this.radContextMenu2;
    }
}

````
````VB.NET
Private Sub radScheduler1_ContextMenuOpening(sender As Object, e As SchedulerContextMenuOpeningEventArgs) Handles RadScheduler1.ContextMenuOpening
    If TypeOf e.Element Is AppointmentElement Then
        e.Menu = Me.RadContextMenu1
    Else
        e.Menu = Me.RadContextMenu2
    End If
End Sub

````

{{endregion}}

As you can see in the screenshots below, we can set different context menus depending on the element that invokes the context menu creation.

>caption Figure 1: RadScheduler Cell Context Menu
![WinForms RadScheduler RadScheduler Cell Context Menu](images/scheduler-context-menu-customize-context-menu002.png)

>caption Figure 1: RadScheduler Appointment Context Menu
![WinForms RadScheduler RadScheduler Appointment Context Menu](images/scheduler-context-menu-customize-context-menu003.png)

## Change the Default Items or and Disable the Context Menu.

The __Menu__ property of the __SchedulerContextMenuOpeningEventArgs__ objects gives you the opportunity to change the existing items of the context menu. Also you can entirely disable the context menu by setting the *Cancel*  property to true.  For example you can change the context menu for the appointments and disable the default context menu as follows:

#### Handle ContextMenuOpening

{{source=..\SamplesCS\Scheduler\CustomizeContextMenu.cs region=contextMenuOpening1}} 
{{source=..\SamplesVB\Scheduler\CustomizeContextMenu.vb region=contextMenuOpening1}} 

````C#
void radScheduler1_ContextMenuOpening1(object sender, SchedulerContextMenuOpeningEventArgs e)
{
    if (e.Element is AppointmentElement)
    {
        e.Menu.Items.RemoveAt(0);
    }
    else
    {
        e.Cancel = true;
    }
}

````
````VB.NET
Private Sub radScheduler1_ContextMenuOpening1(sender As Object, e As SchedulerContextMenuOpeningEventArgs)
    If TypeOf e.Element Is AppointmentElement Then
        e.Menu.Items.RemoveAt(0)
    Else
        e.Cancel = True
    End If
End Sub

````

{{endregion}}

# See Also

* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Working with Appointments]({%slug winforms/scheduler/appointments-and-dialogs/working-with-appointments%})
* [Scheduler Navigator]({%slug winforms/scheduler/scheduler-navigator/overview%})
* [Printing Overview]({%slug winforms/scheduler/print-support%})

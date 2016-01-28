---
title: Save/Load reminders
page_title: Save/Load reminders | UI for WinForms Documentation
description: Save/Load reminders
slug: winforms/scheduler/reminders/save/load-reminders
tags: save/load,reminders
published: True
position: 3
previous_url: scheduler-reminders-save-load-reminders
---

# Save/Load reminders

## 

__RadScheduler__ allows you to save and load the reminders set for appointments. Reminders are saved into an xml file format to a user provider file path or stream. To save the reminders for a given scheduler you should call the __SaveRemidners__ method of __RadScheduler__ and provide a path where the file should be saved:


{{source=..\SamplesCS\Scheduler\Reminders\SaveLoadReminders.cs region=SaveReminders}} 
{{source=..\SamplesVB\Scheduler\Reminders\SaveLoadReminders.vb region=SaveReminders}} 

````C#
this.radScheduler1.SaveReminders(filePath);

````
````VB.NET
Me.radScheduler1.SaveReminders(filePath)

````

{{endregion}} 

>note When you load reminders you should first have the appointments loaded in __RadScheduler__ so the load mechanism can identify them and restore their reminders.
>

You can load saved reminders into RadScheduler is by calling the LoadReminders method:

{{source=..\SamplesCS\Scheduler\Reminders\SaveLoadReminders.cs region=LoadReminders}} 
{{source=..\SamplesVB\Scheduler\Reminders\SaveLoadReminders.vb region=LoadReminders}} 

````C#
this.radScheduler1.LoadReminders(filePath);

````
````VB.NET
Me.radScheduler1.LoadReminders(filePath)

````

{{endregion}} 


__SchedulerSaveLoadRemindersBehavior__ is the class that handles the saving and loading of reminders inside __RadScheduler__. You can inherit this class and provide your own custom logic for saving and loading appointments. After you have your custom implementation all you have to do is assign it to the __SaveLoadRemindersBehavior__  property of __RadScheduler__:

{{source=..\SamplesCS\Scheduler\Reminders\SaveLoadReminders.cs region=CustomSaveLoadRemindersBehavior}} 
{{source=..\SamplesVB\Scheduler\Reminders\SaveLoadReminders.vb region=CustomSaveLoadRemindersBehavior}}````C#
public class CustomSaveLoadRemindersBehavior : SchedulerSaveLoadRemindersBehavior
{
    public CustomSaveLoadRemindersBehavior(RadScheduler scheduler)
        : base(scheduler)
    { }
    public override void SaveReminders(string filePath)
    {
        //Custom save logic
    }
    public override void LoadReminders(string filePath)
    {
        //Custom load logic
    }
}

````
````VB.NET
Public Class CustomSaveLoadRemindersBehavior
    Inherits SchedulerSaveLoadRemindersBehavior
    Public Sub New(scheduler As RadScheduler)
        MyBase.New(scheduler)
    End Sub
    Public Overrides Sub SaveReminders(filePath As String)
        'Custom save logic
    End Sub
    Public Overrides Sub LoadReminders(filePath As String)
        'Custom load logic
    End Sub
End Class

```` 

{{endregion}} 

{{source=..\SamplesCS\Scheduler\Reminders\SaveLoadReminders.cs region=SetRemindersBehavior}} 
{{source=..\SamplesVB\Scheduler\Reminders\SaveLoadReminders.vb region=SetRemindersBehavior}} 

````C#
this.radScheduler1.SaveLoadRemindersBehavior = new CustomSaveLoadRemindersBehavior(this.radScheduler1);

````
````VB.NET
Me.radScheduler1.SaveLoadRemindersBehavior = New CustomSaveLoadRemindersBehavior(Me.radScheduler1)

````

{{endregion}} 




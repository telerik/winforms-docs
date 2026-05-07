---
title: Save/Load reminders
page_title: Save/Load reminders - RadScheduler
description: RadScheduler allows you to save and load the reminders set for appointments. Reminders are saved into an xml file format to a user provider file path or stream.
slug: winforms/scheduler/reminders/save/load-reminders
tags: save/load,reminders
published: True
position: 3
previous_url: scheduler-reminders-save-load-reminders
---

# Save/Load reminders

__RadScheduler__ allows you to save and load the reminders set for appointments. Reminders are saved into an xml file format to a user provider file path or stream. To save the reminders for a given scheduler you should call the __SaveRemidners__ method of __RadScheduler__ and provide a path where the file should be saved:

#### Save Reminders

<snippet id='scheduler-saveloadreminders-savereminders-cs' />
<snippet id='scheduler-saveloadreminders-savereminders-vb' />



>note When you load reminders you should first have the appointments loaded in __RadScheduler__ so the load mechanism can identify them and restore their reminders.
>

You can load saved reminders into __RadScheduler__ is by calling the __LoadReminders__ method:

#### Load Reminders

<snippet id='scheduler-saveloadreminders-loadreminders-cs' />
<snippet id='scheduler-saveloadreminders-loadreminders-vb' />



__SchedulerSaveLoadRemindersBehavior__ is the class that handles the saving and loading of reminders inside __RadScheduler__. You can inherit this class and provide your own custom logic for saving and loading appointments. After you have your custom implementation all you have to do is assign it to the __SaveLoadRemindersBehavior__  property of __RadScheduler__:

#### Custom Save/Load Behavior

<snippet id='scheduler-saveloadreminders-customsaveloadremindersbehavior-cs' />
<snippet id='scheduler-saveloadreminders-customsaveloadremindersbehavior-vb' />



#### Change the Current Save/Load Behavior

<snippet id='scheduler-saveloadreminders-setremindersbehavior-cs' />
<snippet id='scheduler-saveloadreminders-setremindersbehavior-vb' />



# See Also

* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Working with Appointments]({%slug winforms/scheduler/appointments-and-dialogs/working-with-appointments%})
* [Localizing RadScheduler]({%slug winforms/scheduler/localization/translating-strings%})
* [Themes and Appearance]({%slug winforms/scheduler/appearance/themes-and-appearance%})

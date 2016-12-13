---
title: Localizing Reminder Strings
page_title: Localizing Reminder Strings | RadScheduler
description: Localizing Reminder Strings
slug: winforms/scheduler/reminders/localizing-reminder-strings
tags: localizing,reminder,strings
published: True
position: 2
previous_url: scheduler-reminders-localizing-reminder-strings
---

# Localizing Reminder Strings

To localize __RadReminder__ to display control text and messages in a specific language:

* Start by creating a descendant of the __RadReminderLocalizationProvider__ class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

#### Sample English Localization Provider

{{source=..\SamplesCS\Scheduler\Reminders\EnglishReminderLocalizationProvider.cs region=englishLocalizationProvider}} 
{{source=..\SamplesVB\Scheduler\Reminders\EnglishReminderLocalizationProvider.vb region=englishLocalizationProvider}} 

````C#
public class EnglishReminderLocalizationProvider : RadReminderLocalizationProvider
{
    public override string GetLocalizedString(string id) 
    {
        switch (id)
        {
            case RadReminderStringId.AlarmFormButtonDismiss:
                return "Dismiss";
            case RadReminderStringId.AlarmFormButtonDismissAll:
                return "Dismiss All";
            case RadReminderStringId.AlarmFormButtonOpenItem:
                return "Open Item";
            case RadReminderStringId.AlarmFormButtonSnooze:
                return "Snooze";
            case RadReminderStringId.AlarmFormColumnDueIn:
                return "Due in";
            case RadReminderStringId.AlarmFormColumnSubject:
                return "Subject";
            case RadReminderStringId.AlarmFormLabelSnooze:
                return "Click Snooze to be reminded again in:";
            case RadReminderStringId.AlarmFormReminder:
                return "Reminder";
            case RadReminderStringId.AlarmFormReminders:
                return "Reminders";
            case RadReminderStringId.AlarmFormSnoozeOneMinute:
                return "1 minute";
            case RadReminderStringId.AlarmFormSnoozeFiveMinutes:
                return "5 minutes";
            case RadReminderStringId.AlarmFormSnoozeTenMinutes:
                return "10 minutes";
            case RadReminderStringId.AlarmFormSnoozeFifteenMinutes:
                return "15 minutes";
            case RadReminderStringId.AlarmFormSnoozeThirtyMinutes:
                return "30 minutes";
            case RadReminderStringId.AlarmFormSnoozeOneHour:
                return "1 hour";
            case RadReminderStringId.AlarmFormSnoozeTwoHours:
                return "2 hours";
            case RadReminderStringId.AlarmFormSnoozeFourHours:
                return "4 hours";
            case RadReminderStringId.AlarmFormSnoozeEightHours:
                return "8 hours";
            case RadReminderStringId.AlarmFormSnoozeHalfDay:
                return "0.5 days";
            case RadReminderStringId.AlarmFormSnoozeOneDay:
                return "1 day";
            case RadReminderStringId.AlarmFormSnoozeTwoDays:
                return "2 days";
            case RadReminderStringId.AlarmFormSnoozeThreeDays:
                return "3 days";
            case RadReminderStringId.AlarmFormSnoozeFourDays:
                return "4 days";
            case RadReminderStringId.AlarmFormSnoozeOneWeek:
                return "1 week";
            case RadReminderStringId.AlarmFormSnoozeTwoWeeks:
                return "2 weeks";
            case RadReminderStringId.DueInMinute:
                return "minute";
            case RadReminderStringId.DueInMinutes:
                return "minutes";
            case RadReminderStringId.DueInHour:
                return "hour";
            case RadReminderStringId.DueInHours:
                return "hours";
            case RadReminderStringId.DueInDay:
                return "day";
            case RadReminderStringId.DueInDays:
                return "days";
            case RadReminderStringId.DueInWeek:
                return "week";
            case RadReminderStringId.DueInWeeks:
                return "weeks";
            case RadReminderStringId.DueInNow:
                return "now";    
            case RadReminderStringId.DueInOverdue:
                return "{0} overdue";
            case RadReminderStringId.AlarmFormSelectMoreRemindObjects:
                return " reminders are selected.";
        }
        return string.Empty;
    }
}

````
````VB.NET
Public Class EnglishReminderLocalizationProvider
    Inherits RadReminderLocalizationProvider
    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case RadReminderStringId.AlarmFormButtonDismiss
                Return "Dismiss"
            Case RadReminderStringId.AlarmFormButtonDismissAll
                Return "Dismiss All"
            Case RadReminderStringId.AlarmFormButtonOpenItem
                Return "Open Item"
            Case RadReminderStringId.AlarmFormButtonSnooze
                Return "Snooze"
            Case RadReminderStringId.AlarmFormColumnDueIn
                Return "Due in"
            Case RadReminderStringId.AlarmFormColumnSubject
                Return "Subject"
            Case RadReminderStringId.AlarmFormLabelSnooze
                Return "Click Snooze to be reminded again in:"
            Case RadReminderStringId.AlarmFormReminder
                Return "Reminder"
            Case RadReminderStringId.AlarmFormReminders
                Return "Reminders"
            Case RadReminderStringId.AlarmFormSnoozeEightHours
                Return "8 hours"
            Case RadReminderStringId.AlarmFormSnoozeFifteenMinutes
                Return "15 minutes"
            Case RadReminderStringId.AlarmFormSnoozeFiveMinutes
                Return "5 minutes"
            Case RadReminderStringId.AlarmFormSnoozeFourDays
                Return "4 days"
            Case RadReminderStringId.AlarmFormSnoozeFourHours
                Return "4 hours"
            Case RadReminderStringId.AlarmFormSnoozeHalfDay
                Return "0.5 days"
            Case RadReminderStringId.AlarmFormSnoozeOneDay
                Return "1 day"
            Case RadReminderStringId.AlarmFormSnoozeOneHour
                Return "1 hour"
            Case RadReminderStringId.AlarmFormSnoozeOneMinute
                Return "1 minute"
            Case RadReminderStringId.AlarmFormSnoozeOneWeek
                Return "1 week"
            Case RadReminderStringId.AlarmFormSnoozeTenMinutes
                Return "10 minutes"
            Case RadReminderStringId.AlarmFormSnoozeThirtyMinutes
                Return "30 minutes"
            Case RadReminderStringId.AlarmFormSnoozeThreeDays
                Return "3 days"
            Case RadReminderStringId.AlarmFormSnoozeTwoDays
                Return "2 days"
            Case RadReminderStringId.AlarmFormSnoozeTwoHours
                Return "2 hours"
            Case RadReminderStringId.AlarmFormSnoozeTwoWeeks
                Return "2 weeks"
            Case RadReminderStringId.DueInDay
                Return "day"
            Case RadReminderStringId.DueInDays
                Return "days"
            Case RadReminderStringId.DueInHour
                Return "hour"
            Case RadReminderStringId.DueInHours
                Return "hours"
            Case RadReminderStringId.DueInMinute
                Return "minute"
            Case RadReminderStringId.DueInWeek
                Return "week"
            Case RadReminderStringId.DueInWeeks
                Return "weeks"
            Case RadReminderStringId.DueInNow
                Return "now"
            Case RadReminderStringId.DueInOverdue
                Return "{0} overdue"
            Case RadReminderStringId.AlarmFormSelectMoreRemindObjects
                Return " reminders are selected."
        End Select
        Return MyBase.GetLocalizedString(id)
    End Function
End Class

````

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Change the Current Provider

{{source=..\SamplesCS\Scheduler\Reminders\SchedulerReminder.cs region=usingReminderLocalization}} 
{{source=..\SamplesVB\Scheduler\Reminders\SchedulerReminder.vb region=usingReminderLocalization}} 

````C#
RadReminderLocalizationProvider.CurrentProvider = new EnglishReminderLocalizationProvider();

````
````VB.NET
RadReminderLocalizationProvider.CurrentProvider = New EnglishReminderLocalizationProvider()

````

{{endregion}} 

The code provided above illustrates the approach to be used to localize the __RadReminder__ and is not intended as a full translation.

# See Also

* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Working with Appointments]({%slug winforms/scheduler/appointments-and-dialogs/working-with-appointments%})
* [Localizing RadScheduler]({%slug winforms/scheduler/localization/translating-strings%})
* [Themes and Appearance]({%slug winforms/scheduler/appearance/themes-and-appearance%})
        

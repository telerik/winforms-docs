---
title: Translating Strings
page_title: Translating Strings | UI for WinForms Documentation
description: Translating Strings
slug: winforms/scheduler/localization/translating-strings
tags: translating,strings
published: True
position: 0
previous_url: scheduler-localization-translating-strings
---

# Translating Strings

## 

To localize __RadScheduler__ to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadSchedulerLocalizationProvider__ class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the default clause of the switch statement in the example.

Below is a sample implementation of a custom localization provider:

{{source=..\SamplesCS\Scheduler\Localization\CustomSchedulerLocalizationProvider.cs region=schedulerProvider}} 
{{source=..\SamplesVB\Scheduler\Localization\CustomSchedulerLocalizationProvider.vb region=schedulerProvider}} 

````C#
public class CustomSchedulerLocalizationProvider : RadSchedulerLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case RadSchedulerStringId.NextAppointment: return "Next Appointment";
            case RadSchedulerStringId.PreviousAppointment: return "Previous Appointment";
            case RadSchedulerStringId.AppointmentDialogTitle: return "Edit Appointment";
            case RadSchedulerStringId.AppointmentDialogSubject: return "Subject:";
            case RadSchedulerStringId.AppointmentDialogLocation: return "Location:";
            case RadSchedulerStringId.AppointmentDialogBackground: return "Background:";
            case RadSchedulerStringId.AppointmentDialogDescription: return "Description:";
            case RadSchedulerStringId.AppointmentDialogStartTime: return "Start time:";
            case RadSchedulerStringId.AppointmentDialogEndTime: return "End time:";
            case RadSchedulerStringId.AppointmentDialogAllDay: return "All day event";
            case RadSchedulerStringId.AppointmentDialogResource: return "Resource:";
            case RadSchedulerStringId.AppointmentDialogStatus: return "Show time as:";
            case RadSchedulerStringId.AppointmentDialogOK: return "OK";
            case RadSchedulerStringId.AppointmentDialogCancel: return "Cancel";
            case RadSchedulerStringId.AppointmentDialogDelete: return "Delete";
            case RadSchedulerStringId.AppointmentDialogRecurrence: return "Recurrence";
            case RadSchedulerStringId.OpenRecurringDialogTitle: return "Open Recurring Item";
            case RadSchedulerStringId.DeleteRecurrenceDialogOK: return "OK";
            case RadSchedulerStringId.OpenRecurringDialogOK: return "OK";
            case RadSchedulerStringId.DeleteRecurrenceDialogCancel: return "Cancel";
            case RadSchedulerStringId.OpenRecurringDialogCancel: return "Cancel";
            case RadSchedulerStringId.OpenRecurringDialogLabel: return "\"{0}\" is a recurring\nappointment. Do you want to open\nonly this occurrence or the series?";
            case RadSchedulerStringId.OpenRecurringDialogRadioOccurrence: return "Open this occurrence.";
            case RadSchedulerStringId.OpenRecurringDialogRadioSeries: return "Open the series.";
            case RadSchedulerStringId.DeleteRecurrenceDialogTitle: return "Confirm Delete";
            case RadSchedulerStringId.DeleteRecurrenceDialogRadioOccurrence: return "Delete this occurrence.";
            case RadSchedulerStringId.DeleteRecurrenceDialogRadioSeries: return "Delete the series.";
            case RadSchedulerStringId.DeleteRecurrenceDialogLabel: return "Do you want to delete all occurrences of the recurring appointment \"{0}\", or just this one?";
            case RadSchedulerStringId.RecurrenceDragDropCreateExceptionDialogText: return "You changed the date of a single occurrence of a recurring appointment. To change all the dates, open the series.\nDo you want to change just this one?";
            case RadSchedulerStringId.RecurrenceDragDropValidationSameDateText: return "Two occurrences of the same series cannot occur on the same day.";
            case RadSchedulerStringId.RecurrenceDragDropValidationSkipOccurrenceText: return "Cannot reschedule an occurrence of a recurring appointment if it skips over a later occurrence of the same appointment.";
            case RadSchedulerStringId.RecurrenceDialogMessageBoxText: return "Start date should be before EndBy date.";
            case RadSchedulerStringId.RecurrenceDialogMessageBoxWrongRecurrenceRuleText: return "The recurrence pattern is not valid.";
            case RadSchedulerStringId.RecurrenceDialogMessageBoxTitle: return "Validation error";
            case RadSchedulerStringId.RecurrenceDialogTitle: return "Edit Recurrence";
            case RadSchedulerStringId.RecurrenceDialogAppointmentTimeGroup: return "Appointment time";
            case RadSchedulerStringId.RecurrenceDialogDuration: return "Duration:";
            case RadSchedulerStringId.RecurrenceDialogAppointmentEnd: return "End:";
            case RadSchedulerStringId.RecurrenceDialogAppointmentStart: return "Start:";
            case RadSchedulerStringId.RecurrenceDialogRecurrenceGroup: return "Recurrence pattern";
            case RadSchedulerStringId.RecurrenceDialogRangeGroup: return "Range of recurrence";
            case RadSchedulerStringId.RecurrenceDialogOccurrences: return "occurrences";
            case RadSchedulerStringId.RecurrenceDialogRecurrenceStart: return "Start:";
            case RadSchedulerStringId.RecurrenceDialogYearly: return "Yearly";
            case RadSchedulerStringId.RecurrenceDialogHourly: return "Hourly";
            case RadSchedulerStringId.RecurrenceDialogMonthly: return "Monthly";
            case RadSchedulerStringId.RecurrenceDialogWeekly: return "Weekly";
            case RadSchedulerStringId.RecurrenceDialogDaily: return "Daily";
            case RadSchedulerStringId.RecurrenceDialogEndBy: return "End by:";
            case RadSchedulerStringId.RecurrenceDialogEndAfter: return "End after:";
            case RadSchedulerStringId.RecurrenceDialogNoEndDate: return "No end date";
            case RadSchedulerStringId.RecurrenceDialogAllDay: return "All day event";
            case RadSchedulerStringId.RecurrenceDialogDurationDropDown1Day: return "1 day";
            case RadSchedulerStringId.RecurrenceDialogDurationDropDown2Days: return "2 days";
            case RadSchedulerStringId.RecurrenceDialogDurationDropDown3Days: return "3 days";
            case RadSchedulerStringId.RecurrenceDialogDurationDropDown4Days: return "4 days";
            case RadSchedulerStringId.RecurrenceDialogDurationDropDown1Week: return "1 week";
            case RadSchedulerStringId.RecurrenceDialogDurationDropDown2Weeks: return "2 weeks";
            case RadSchedulerStringId.RecurrenceDialogOK: return "OK";
            case RadSchedulerStringId.RecurrenceDialogCancel: return "Cancel";
            case RadSchedulerStringId.RecurrenceDialogRemoveRecurrence: return "Remove Recurrence";
            case RadSchedulerStringId.HourlyRecurrenceEvery: return "Every";
            case RadSchedulerStringId.HourlyRecurrenceHours: return "hour(s)";
            case RadSchedulerStringId.DailyRecurrenceEveryDay: return "Every";
            case RadSchedulerStringId.DailyRecurrenceEveryWeekday: return "Every weekday";
            case RadSchedulerStringId.DailyRecurrenceDays: return "day(s)";
            case RadSchedulerStringId.WeeklyRecurrenceRecurEvery: return "Recur every";
            case RadSchedulerStringId.WeeklyRecurrenceWeeksOn: return "week(s) on:";
            case RadSchedulerStringId.WeeklyRecurrenceSunday: return "Sunday";
            case RadSchedulerStringId.WeeklyRecurrenceMonday: return "Monday";
            case RadSchedulerStringId.WeeklyRecurrenceTuesday: return "Tuesday";
            case RadSchedulerStringId.WeeklyRecurrenceWednesday: return "Wednesday";
            case RadSchedulerStringId.WeeklyRecurrenceThursday: return "Thursday";
            case RadSchedulerStringId.WeeklyRecurrenceFriday: return "Friday";
            case RadSchedulerStringId.WeeklyRecurrenceSaturday: return "Saturday";
            case RadSchedulerStringId.WeeklyRecurrenceDay: return "Day";
            case RadSchedulerStringId.WeeklyRecurrenceWeekday: return "Weekday";
            case RadSchedulerStringId.WeeklyRecurrenceWeekendDay: return "Weekend day";
            case RadSchedulerStringId.MonthlyRecurrenceDay: return "Day";
            case RadSchedulerStringId.MonthlyRecurrenceWeek: return "The";
            case RadSchedulerStringId.MonthlyRecurrenceDayOfMonth: return "of every";
            case RadSchedulerStringId.MonthlyRecurrenceMonths: return "month(s)";
            case RadSchedulerStringId.MonthlyRecurrenceWeekOfMonth: return "of every";
            case RadSchedulerStringId.MonthlyRecurrenceFirst: return "First";
            case RadSchedulerStringId.MonthlyRecurrenceSecond: return "Second";
            case RadSchedulerStringId.MonthlyRecurrenceThird: return "Third";
            case RadSchedulerStringId.MonthlyRecurrenceFourth: return "Fourth";
            case RadSchedulerStringId.MonthlyRecurrenceLast: return "Last";
            case RadSchedulerStringId.YearlyRecurrenceDayOfMonth: return "Every";
            case RadSchedulerStringId.YearlyRecurrenceWeekOfMonth: return "The";
            case RadSchedulerStringId.YearlyRecurrenceOfMonth: return "of";
            case RadSchedulerStringId.YearlyRecurrenceJanuary: return "January";
            case RadSchedulerStringId.YearlyRecurrenceFebruary: return "February";
            case RadSchedulerStringId.YearlyRecurrenceMarch: return "March";
            case RadSchedulerStringId.YearlyRecurrenceApril: return "April";
            case RadSchedulerStringId.YearlyRecurrenceMay: return "May";
            case RadSchedulerStringId.YearlyRecurrenceJune: return "June";
            case RadSchedulerStringId.YearlyRecurrenceJuly: return "July";
            case RadSchedulerStringId.YearlyRecurrenceAugust: return "August";
            case RadSchedulerStringId.YearlyRecurrenceSeptember: return "September";
            case RadSchedulerStringId.YearlyRecurrenceOctober: return "October";
            case RadSchedulerStringId.YearlyRecurrenceNovember: return "November";
            case RadSchedulerStringId.YearlyRecurrenceDecember: return "December";
            case RadSchedulerStringId.BackgroundNone: return "None";
            case RadSchedulerStringId.BackgroundImportant: return "Important";
            case RadSchedulerStringId.BackgroundBusiness: return "Business";
            case RadSchedulerStringId.BackgroundPersonal: return "Personal";
            case RadSchedulerStringId.BackgroundVacation: return "Vacation";
            case RadSchedulerStringId.BackgroundMustAttend: return "Must Attend";
            case RadSchedulerStringId.BackgroundTravelRequired: return "Travel Required";
            case RadSchedulerStringId.BackgroundNeedsPreparation: return "Needs Preparation";
            case RadSchedulerStringId.BackgroundBirthday: return "Birthday";
            case RadSchedulerStringId.BackgroundAnniversary: return "Anniversary";
            case RadSchedulerStringId.BackgroundPhoneCall: return "Phone Call";
            case RadSchedulerStringId.StatusBusy: return "Busy";
            case RadSchedulerStringId.StatusFree: return "Free";
            case RadSchedulerStringId.StatusTentative: return "Tentative";
            case RadSchedulerStringId.StatusUnavailable: return "Unavailable";
            case RadSchedulerStringId.ReminderNone: return "None";
            case RadSchedulerStringId.ReminderZeroMinutes: return "0 minutes";
            case RadSchedulerStringId.ReminderFiveMinutes: return "5 minutes";
            case RadSchedulerStringId.ReminderTenMinutes: return "10 minutes";
            case RadSchedulerStringId.ReminderFifteenMinutes: return "15 minutes";
            case RadSchedulerStringId.ReminderThirtyMinutes: return "30 minutes";
            case RadSchedulerStringId.ReminderOneHour: return "1 hour";
            case RadSchedulerStringId.ReminderTwoHours: return "2 hours";
            case RadSchedulerStringId.ReminderThreeHours: return "3 hours";
            case RadSchedulerStringId.ReminderFourHours: return "4 hours";
            case RadSchedulerStringId.ReminderFiveHours: return "5 hours";
            case RadSchedulerStringId.ReminderSixHours: return "6 hours";
            case RadSchedulerStringId.ReminderSevenHours: return "7 hours";
            case RadSchedulerStringId.ReminderEightHours: return "8 hours";
            case RadSchedulerStringId.ReminderNineHours: return "9 hours";
            case RadSchedulerStringId.ReminderTenHours: return "10 hours";
            case RadSchedulerStringId.ReminderElevenHours: return "11 hours";
            case RadSchedulerStringId.ReminderTwelveHours: return "12 hours";
            case RadSchedulerStringId.ReminderEighteenHours: return "18 hours";
            case RadSchedulerStringId.ReminderOneDay: return "1 day";
            case RadSchedulerStringId.ReminderTwoDays: return "2 days";
            case RadSchedulerStringId.ReminderThreeDays: return "3 days";
            case RadSchedulerStringId.ReminderFourDays: return "4 days";
            case RadSchedulerStringId.ReminderOneWeek: return "1 week";
            case RadSchedulerStringId.ReminderTwoWeeks: return "2 weeks";
            case RadSchedulerStringId.Reminder: return "Reminder";
            case RadSchedulerStringId.ContextMenuNewAppointment: return "New Appointment";
            case RadSchedulerStringId.ContextMenuEditAppointment: return "Edit Appointment";
            case RadSchedulerStringId.ContextMenuNewRecurringAppointment: return "New Recurring Appointment";
            case RadSchedulerStringId.ContextMenu60Minutes: return "60 Minutes";
            case RadSchedulerStringId.ContextMenu30Minutes: return "30 Minutes";
            case RadSchedulerStringId.ContextMenu15Minutes: return "15 Minutes";
            case RadSchedulerStringId.ContextMenu10Minutes: return "10 Minutes";
            case RadSchedulerStringId.ContextMenu6Minutes: return "6 Minutes";
            case RadSchedulerStringId.ContextMenu5Minutes: return "5 Minutes";
            case RadSchedulerStringId.ContextMenuNavigateToNextView: return "Next View";
            case RadSchedulerStringId.ContextMenuNavigateToPreviousView: return "Previous View";
            case RadSchedulerStringId.ContextMenuTimescales: return "Time Scales";
            case RadSchedulerStringId.ContextMenuTimescalesYear: return "Year";
            case RadSchedulerStringId.ContextMenuTimescalesMonth: return "Month";
            case RadSchedulerStringId.ContextMenuTimescalesWeek: return "Week";
            case RadSchedulerStringId.ContextMenuTimescalesDay: return "Day";
            case RadSchedulerStringId.ContextMenuTimescalesHour: return "Hour";
            case RadSchedulerStringId.ContextMenuTimescalesHalfHour: return "30 minutes";
            case RadSchedulerStringId.ContextMenuTimescalesFifteenMinutes: return "15 minutes";
            case RadSchedulerStringId.ErrorProviderWrongAppointmentDates: return "Appointment end time is less or equal to start time!";
            case RadSchedulerStringId.ErrorProviderWrongExceptionDuration: return "Recurrence interval must be greater or equal to appointment duration!";
            case RadSchedulerStringId.ErrorProviderExceptionSameDate: return "Two occurrences of the same series cannot occur on the same day.";
            case RadSchedulerStringId.ErrorProviderExceptionSkipOverDate: return "Recurrence exception cannot skip over a later occurrence of the same appointment.";
            case RadSchedulerStringId.TimeZoneLocal: return "Local";
        }
        return string.Empty;
    }
}

````
````VB.NET
Public Class CustomSchedulerLocalizationProvider
    Inherits RadSchedulerLocalizationProvider
 
    Public Overrides Function GetLocalizedString(id As String) As String
        Select Case id
            Case RadSchedulerStringId.NextAppointment
                Return "Next Appointment"
            Case RadSchedulerStringId.PreviousAppointment
                Return "Previous Appointment"
            Case RadSchedulerStringId.AppointmentDialogTitle
                Return "Edit Appointment"
            Case RadSchedulerStringId.AppointmentDialogSubject
                Return "Subject:"
            Case RadSchedulerStringId.AppointmentDialogLocation
                Return "Location:"
            Case RadSchedulerStringId.AppointmentDialogBackground
                Return "Background:"
            Case RadSchedulerStringId.AppointmentDialogDescription
                Return "Description:"
            Case RadSchedulerStringId.AppointmentDialogStartTime
                Return "Start time:"
            Case RadSchedulerStringId.AppointmentDialogEndTime
                Return "End time:"
            Case RadSchedulerStringId.AppointmentDialogAllDay
                Return "All day event"
            Case RadSchedulerStringId.AppointmentDialogResource
                Return "Resource:"
            Case RadSchedulerStringId.AppointmentDialogStatus
                Return "Show time as:"
            Case RadSchedulerStringId.AppointmentDialogOK
                Return "OK"
            Case RadSchedulerStringId.AppointmentDialogCancel
                Return "Cancel"
            Case RadSchedulerStringId.AppointmentDialogDelete
                Return "Delete"
            Case RadSchedulerStringId.AppointmentDialogRecurrence
                Return "Recurrence"
            Case RadSchedulerStringId.OpenRecurringDialogTitle
                Return "Open Recurring Item"
            Case RadSchedulerStringId.DeleteRecurrenceDialogOK
                Return "OK"
            Case RadSchedulerStringId.OpenRecurringDialogOK
                Return "OK"
            Case RadSchedulerStringId.DeleteRecurrenceDialogCancel
                Return "Cancel"
            Case RadSchedulerStringId.OpenRecurringDialogCancel
                Return "Cancel"
            Case RadSchedulerStringId.OpenRecurringDialogLabel
                Return """{0}"" is a recurring" & vbLf & "appointment. Do you want to open" & vbLf & "only this occurrence or the series?"
            Case RadSchedulerStringId.OpenRecurringDialogRadioOccurrence
                Return "Open this occurrence."
            Case RadSchedulerStringId.OpenRecurringDialogRadioSeries
                Return "Open the series."
            Case RadSchedulerStringId.DeleteRecurrenceDialogTitle
                Return "Confirm Delete"
            Case RadSchedulerStringId.DeleteRecurrenceDialogRadioOccurrence
                Return "Delete this occurrence."
            Case RadSchedulerStringId.DeleteRecurrenceDialogRadioSeries
                Return "Delete the series."
            Case RadSchedulerStringId.DeleteRecurrenceDialogLabel
                Return "Do you want to delete all occurrences of the recurring appointment ""{0}"", or just this one?"
            Case RadSchedulerStringId.RecurrenceDragDropCreateExceptionDialogText
                Return "You changed the date of a single occurrence of a recurring appointment. To change all the dates, open the series." & vbLf & "Do you want to change just this one?"
            Case RadSchedulerStringId.RecurrenceDragDropValidationSameDateText
                Return "Two occurrences of the same series cannot occur on the same day."
            Case RadSchedulerStringId.RecurrenceDragDropValidationSkipOccurrenceText
                Return "Cannot reschedule an occurrence of a recurring appointment if it skips over a later occurrence of the same appointment."
            Case RadSchedulerStringId.RecurrenceDialogMessageBoxText
                Return "Start date should be before EndBy date."
            Case RadSchedulerStringId.RecurrenceDialogMessageBoxWrongRecurrenceRuleText
                Return "The recurrence pattern is not valid."
            Case RadSchedulerStringId.RecurrenceDialogMessageBoxTitle
                Return "Validation error"
            Case RadSchedulerStringId.RecurrenceDialogTitle
                Return "Edit Recurrence"
            Case RadSchedulerStringId.RecurrenceDialogAppointmentTimeGroup
                Return "Appointment time"
            Case RadSchedulerStringId.RecurrenceDialogDuration
                Return "Duration:"
            Case RadSchedulerStringId.RecurrenceDialogAppointmentEnd
                Return "End:"
            Case RadSchedulerStringId.RecurrenceDialogAppointmentStart
                Return "Start:"
            Case RadSchedulerStringId.RecurrenceDialogRecurrenceGroup
                Return "Recurrence pattern"
            Case RadSchedulerStringId.RecurrenceDialogRangeGroup
                Return "Range of recurrence"
            Case RadSchedulerStringId.RecurrenceDialogOccurrences
                Return "occurrences"
            Case RadSchedulerStringId.RecurrenceDialogRecurrenceStart
                Return "Start:"
            Case RadSchedulerStringId.RecurrenceDialogYearly
                Return "Yearly"
            Case RadSchedulerStringId.RecurrenceDialogHourly
                Return "Hourly"
            Case RadSchedulerStringId.RecurrenceDialogMonthly
                Return "Monthly"
            Case RadSchedulerStringId.RecurrenceDialogWeekly
                Return "Weekly"
            Case RadSchedulerStringId.RecurrenceDialogDaily
                Return "Daily"
            Case RadSchedulerStringId.RecurrenceDialogEndBy
                Return "End by:"
            Case RadSchedulerStringId.RecurrenceDialogEndAfter
                Return "End after:"
            Case RadSchedulerStringId.RecurrenceDialogNoEndDate
                Return "No end date"
            Case RadSchedulerStringId.RecurrenceDialogAllDay
                Return "All day event"
            Case RadSchedulerStringId.RecurrenceDialogDurationDropDown1Day
                Return "1 day"
            Case RadSchedulerStringId.RecurrenceDialogDurationDropDown2Days
                Return "2 days"
            Case RadSchedulerStringId.RecurrenceDialogDurationDropDown3Days
                Return "3 days"
            Case RadSchedulerStringId.RecurrenceDialogDurationDropDown4Days
                Return "4 days"
            Case RadSchedulerStringId.RecurrenceDialogDurationDropDown1Week
                Return "1 week"
            Case RadSchedulerStringId.RecurrenceDialogDurationDropDown2Weeks
                Return "2 weeks"
            Case RadSchedulerStringId.RecurrenceDialogOK
                Return "OK"
            Case RadSchedulerStringId.RecurrenceDialogCancel
                Return "Cancel"
            Case RadSchedulerStringId.RecurrenceDialogRemoveRecurrence
                Return "Remove Recurrence"
            Case RadSchedulerStringId.HourlyRecurrenceEvery
                Return "Every"
            Case RadSchedulerStringId.HourlyRecurrenceHours
                Return "hour(s)"
            Case RadSchedulerStringId.DailyRecurrenceEveryDay
                Return "Every"
            Case RadSchedulerStringId.DailyRecurrenceEveryWeekday
                Return "Every weekday"
            Case RadSchedulerStringId.DailyRecurrenceDays
                Return "day(s)"
            Case RadSchedulerStringId.WeeklyRecurrenceRecurEvery
                Return "Recur every"
            Case RadSchedulerStringId.WeeklyRecurrenceWeeksOn
                Return "week(s) on:"
            Case RadSchedulerStringId.WeeklyRecurrenceSunday
                Return "Sunday"
            Case RadSchedulerStringId.WeeklyRecurrenceMonday
                Return "Monday"
            Case RadSchedulerStringId.WeeklyRecurrenceTuesday
                Return "Tuesday"
            Case RadSchedulerStringId.WeeklyRecurrenceWednesday
                Return "Wednesday"
            Case RadSchedulerStringId.WeeklyRecurrenceThursday
                Return "Thursday"
            Case RadSchedulerStringId.WeeklyRecurrenceFriday
                Return "Friday"
            Case RadSchedulerStringId.WeeklyRecurrenceSaturday
                Return "Saturday"
            Case RadSchedulerStringId.WeeklyRecurrenceDay
                Return "Day"
            Case RadSchedulerStringId.WeeklyRecurrenceWeekday
                Return "Weekday"
            Case RadSchedulerStringId.WeeklyRecurrenceWeekendDay
                Return "Weekend day"
            Case RadSchedulerStringId.MonthlyRecurrenceDay
                Return "Day"
            Case RadSchedulerStringId.MonthlyRecurrenceWeek
                Return "The"
            Case RadSchedulerStringId.MonthlyRecurrenceDayOfMonth
                Return "of every"
            Case RadSchedulerStringId.MonthlyRecurrenceMonths
                Return "month(s)"
            Case RadSchedulerStringId.MonthlyRecurrenceWeekOfMonth
                Return "of every"
            Case RadSchedulerStringId.MonthlyRecurrenceFirst
                Return "First"
            Case RadSchedulerStringId.MonthlyRecurrenceSecond
                Return "Second"
            Case RadSchedulerStringId.MonthlyRecurrenceThird
                Return "Third"
            Case RadSchedulerStringId.MonthlyRecurrenceFourth
                Return "Fourth"
            Case RadSchedulerStringId.MonthlyRecurrenceLast
                Return "Last"
            Case RadSchedulerStringId.YearlyRecurrenceDayOfMonth
                Return "Every"
            Case RadSchedulerStringId.YearlyRecurrenceWeekOfMonth
                Return "The"
            Case RadSchedulerStringId.YearlyRecurrenceOfMonth
                Return "of"
            Case RadSchedulerStringId.YearlyRecurrenceJanuary
                Return "January"
            Case RadSchedulerStringId.YearlyRecurrenceFebruary
                Return "February"
            Case RadSchedulerStringId.YearlyRecurrenceMarch
                Return "March"
            Case RadSchedulerStringId.YearlyRecurrenceApril
                Return "April"
            Case RadSchedulerStringId.YearlyRecurrenceMay
                Return "May"
            Case RadSchedulerStringId.YearlyRecurrenceJune
                Return "June"
            Case RadSchedulerStringId.YearlyRecurrenceJuly
                Return "July"
            Case RadSchedulerStringId.YearlyRecurrenceAugust
                Return "August"
            Case RadSchedulerStringId.YearlyRecurrenceSeptember
                Return "September"
            Case RadSchedulerStringId.YearlyRecurrenceOctober
                Return "October"
            Case RadSchedulerStringId.YearlyRecurrenceNovember
                Return "November"
            Case RadSchedulerStringId.YearlyRecurrenceDecember
                Return "December"
            Case RadSchedulerStringId.BackgroundNone
                Return "None"
            Case RadSchedulerStringId.BackgroundImportant
                Return "Important"
            Case RadSchedulerStringId.BackgroundBusiness
                Return "Business"
            Case RadSchedulerStringId.BackgroundPersonal
                Return "Personal"
            Case RadSchedulerStringId.BackgroundVacation
                Return "Vacation"
            Case RadSchedulerStringId.BackgroundMustAttend
                Return "Must Attend"
            Case RadSchedulerStringId.BackgroundTravelRequired
                Return "Travel Required"
            Case RadSchedulerStringId.BackgroundNeedsPreparation
                Return "Needs Preparation"
            Case RadSchedulerStringId.BackgroundBirthday
                Return "Birthday"
            Case RadSchedulerStringId.BackgroundAnniversary
                Return "Anniversary"
            Case RadSchedulerStringId.BackgroundPhoneCall
                Return "Phone Call"
            Case RadSchedulerStringId.StatusBusy
                Return "Busy"
            Case RadSchedulerStringId.StatusFree
                Return "Free"
            Case RadSchedulerStringId.StatusTentative
                Return "Tentative"
            Case RadSchedulerStringId.StatusUnavailable
                Return "Unavailable"
            Case RadSchedulerStringId.ReminderNone
                Return "None"
            Case RadSchedulerStringId.ReminderZeroMinutes
                Return "0 minutes"
            Case RadSchedulerStringId.ReminderFiveMinutes
                Return "5 minutes"
            Case RadSchedulerStringId.ReminderTenMinutes
                Return "10 minutes"
            Case RadSchedulerStringId.ReminderFifteenMinutes
                Return "15 minutes"
            Case RadSchedulerStringId.ReminderThirtyMinutes
                Return "30 minutes"
            Case RadSchedulerStringId.ReminderOneHour
                Return "1 hour"
            Case RadSchedulerStringId.ReminderTwoHours
                Return "2 hours"
            Case RadSchedulerStringId.ReminderThreeHours
                Return "3 hours"
            Case RadSchedulerStringId.ReminderFourHours
                Return "4 hours"
            Case RadSchedulerStringId.ReminderFiveHours
                Return "5 hours"
            Case RadSchedulerStringId.ReminderSixHours
                Return "6 hours"
            Case RadSchedulerStringId.ReminderSevenHours
                Return "7 hours"
            Case RadSchedulerStringId.ReminderEightHours
                Return "8 hours"
            Case RadSchedulerStringId.ReminderNineHours
                Return "9 hours"
            Case RadSchedulerStringId.ReminderTenHours
                Return "10 hours"
            Case RadSchedulerStringId.ReminderElevenHours
                Return "11 hours"
            Case RadSchedulerStringId.ReminderTwelveHours
                Return "12 hours"
            Case RadSchedulerStringId.ReminderEighteenHours
                Return "18 hours"
            Case RadSchedulerStringId.ReminderOneDay
                Return "1 day"
            Case RadSchedulerStringId.ReminderTwoDays
                Return "2 days"
            Case RadSchedulerStringId.ReminderThreeDays
                Return "3 days"
            Case RadSchedulerStringId.ReminderFourDays
                Return "4 days"
            Case RadSchedulerStringId.ReminderOneWeek
                Return "1 week"
            Case RadSchedulerStringId.ReminderTwoWeeks
                Return "2 weeks"
            Case RadSchedulerStringId.Reminder
                Return "Reminder"
            Case RadSchedulerStringId.ContextMenuNewAppointment
                Return "New Appointment"
            Case RadSchedulerStringId.ContextMenuEditAppointment
                Return "Edit Appointment"
            Case RadSchedulerStringId.ContextMenuNewRecurringAppointment
                Return "New Recurring Appointment"
            Case RadSchedulerStringId.ContextMenu60Minutes
                Return "60 Minutes"
            Case RadSchedulerStringId.ContextMenu30Minutes
                Return "30 Minutes"
            Case RadSchedulerStringId.ContextMenu15Minutes
                Return "15 Minutes"
            Case RadSchedulerStringId.ContextMenu10Minutes
                Return "10 Minutes"
            Case RadSchedulerStringId.ContextMenu6Minutes
                Return "6 Minutes"
            Case RadSchedulerStringId.ContextMenu5Minutes
                Return "5 Minutes"
            Case RadSchedulerStringId.ContextMenuNavigateToNextView
                Return "Next View"
            Case RadSchedulerStringId.ContextMenuNavigateToPreviousView
                Return "Previous View"
            Case RadSchedulerStringId.ContextMenuTimescales
                Return "Time Scales"
            Case RadSchedulerStringId.ContextMenuTimescalesYear
                Return "Year"
            Case RadSchedulerStringId.ContextMenuTimescalesMonth
                Return "Month"
            Case RadSchedulerStringId.ContextMenuTimescalesWeek
                Return "Week"
            Case RadSchedulerStringId.ContextMenuTimescalesDay
                Return "Day"
            Case RadSchedulerStringId.ContextMenuTimescalesHour
                Return "Hour"
            Case RadSchedulerStringId.ContextMenuTimescalesHalfHour
                Return "30 minutes"
            Case RadSchedulerStringId.ContextMenuTimescalesFifteenMinutes
                Return "15 minutes"
            Case RadSchedulerStringId.ErrorProviderWrongAppointmentDates
                Return "Appointment end time is less or equal to start time!"
            Case RadSchedulerStringId.ErrorProviderWrongExceptionDuration
                Return "Recurrence interval must be greater or equal to appointment duration!"
            Case RadSchedulerStringId.ErrorProviderExceptionSameDate
                Return "Two occurrences of the same series cannot occur on the same day."
            Case RadSchedulerStringId.ErrorProviderExceptionSkipOverDate
                Return "Recurrence exception cannot skip over a later occurrence of the same appointment."
            Case RadSchedulerStringId.TimeZoneLocal
                Return "Local"
        End Select
        Return String.Empty
    End Function
End Class

````

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider:

{{source=..\SamplesCS\Scheduler\Localization\AssignProviders.cs region=assignSchedulerProvider}} 
{{source=..\SamplesVB\Scheduler\Localization\AssignProviders.vb region=assignSchedulerProvider}} 

````C#
RadSchedulerLocalizationProvider.CurrentProvider = new CustomSchedulerLocalizationProvider();

````
````VB.NET
RadSchedulerLocalizationProvider.CurrentProvider = New CustomSchedulerLocalizationProvider()

````

{{endregion}} 




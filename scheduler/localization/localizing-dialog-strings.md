---
title: Localizing Dialog Strings
page_title: Localizing Dialog Strings | UI for WinForms Documentation
description: Localizing Dialog Strings
slug: winforms/scheduler/localization/localizing-dialog-strings
tags: localizing,dialog,strings
published: True
position: 2
previous_url: scheduler-localization-localizing-dialog-strings
---

# Localizing Dialog Strings

## 

__RadScheduler__ has a built-in LocalizationProvider. You can use it in order to localize your strings. However, when you implement a custom dialog, you can create a custom localization logic. The __LocalizeDialog__ method is called when the dialog strings need to be localized. This method is part of the __RadSchedulerDialog__ base class implementation. Take a look at the default implementation:

{{source=..\SamplesCS\Scheduler\Localization\LocAppointmentEditForm.cs region=localizeDialog}} 
{{source=..\SamplesVB\Scheduler\Localization\LocAppointmentEditForm.vb region=localizeDialog}} 

````C#
public class LocAppointmentEditForm : EditAppointmentDialog
{
    protected override void LocalizeDialog(RadSchedulerLocalizationProvider localizationProvider)
    {
        this.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogTitle);
        this.labelSubject.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogSubject);
        this.labelLocation.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogLocation);
        this.labelBackground.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogBackground);
        this.labelStartTime.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogStartTime);
        this.labelEndTime.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogEndTime);
        this.chkAllDay.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogAllDay);
        this.labelResource.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogResource);
        this.labelStatus.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogStatus);
        this.buttonOK.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogOK);
        this.buttonCancel.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogCancel);
        this.buttonDelete.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogDelete);
        this.buttonRecurrence.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogRecurrence);
        this.radLabelReminder.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.Reminder);
    }
}

````
````VB.NET
Public Class LocAppointmentEditForm
    Inherits EditAppointmentDialog
    Protected Overloads Overrides Sub LocalizeDialog(ByVal localizationProvider As RadSchedulerLocalizationProvider)
        Me.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogTitle)
        Me.labelSubject.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogSubject)
        Me.labelLocation.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogLocation)
        Me.labelBackground.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogBackground)
        Me.labelStartTime.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogStartTime)
        Me.labelEndTime.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogEndTime)
        Me.chkAllDay.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogAllDay)
        Me.labelResource.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogResource)
        Me.labelStatus.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogStatus)
        Me.buttonOK.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogOK)
        Me.buttonCancel.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogCancel)
        Me.buttonDelete.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogDelete)
        Me.buttonRecurrence.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.AppointmentDialogRecurrence)
        Me.radLabelReminder.Text = localizationProvider.GetLocalizedString(RadSchedulerStringId.Reminder)
    End Sub
End Class

````

{{endregion}} 

---
title: Minutely Recurrence Pattern in RadScheduler
description: An example demonstrating how to add minutely reccurence pattern in the RadScheduler EditRecurrenceDialog.
type: how-to 
page_title: How to Add Minutely Reccurence Pattern in EditRecurrenceDialog of RadScheduler
slug: scheduler-minutely-recurrence-pattern
position: 39
tags: scheduler,recurrence,pattern,minutely
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product Version</td>
		<td>2021.3.914</td>
	</tr>
	<tr>
		<td>Product</td>
		<td>RadScheduler for WinForms</td>
	</tr>
</table>


## Description

When the recurrence dialog is open, the dialog provides the following recurrence patterns: Hourly, Daily, Weekly, Monthly, Yearly. This KB article demonstrates how we can add a minutely recurrent pattern. The custom class needs to implement __IRecurrenceRuleSettingsControl__ interface.

## Solution

Create a custom UserControl which will hold the options to set the minutes. In the following example, we will the same structure of the Hourly UserControl which contains one RadSpinEditor and two labels.

#### Custom UserControl

````C#            
public partial class MinutelyRecurrenceSettings : UserControl, IRecurrenceRuleSettingsControl
{
    private ISchedulerData schedulerData;
    public MinutelyRecurrenceSettings()
        : this(null) { }

    public MinutelyRecurrenceSettings(ISchedulerData schedulerData)
    {
        this.schedulerData = schedulerData;
        InitializeComponent();
    }

    public bool CanShowRecurrenceRule(RecurrenceRule recurrenceRule)
    {
        return recurrenceRule.Frequency == RecurrenceType.Minutely;
    }

    public RecurrenceRule GetRecurrenceRule()
    {
        MinutelyRecurrenceRule rule = new MinutelyRecurrenceRule();
        rule.Interval = (int)this.spinInterval.Value;
        return rule;
    }

    public bool IsValidRecurrenceRule()
    {
        return true;
    }

    public void ShowRecurrenceRule(RecurrenceRule recurrenceRule, CultureInfo culture)
    {
        this.spinInterval.Value = recurrenceRule.Interval;
    }
}

````
````VB.NET
Public Partial Class MinutelyRecurrenceSettings
    Inherits UserControl
    Implements IRecurrenceRuleSettingsControl

    Private schedulerData As ISchedulerData

    Public Sub New()
        Me.New(Nothing)
    End Sub

    Public Sub New(ByVal schedulerData As ISchedulerData)
        Me.schedulerData = schedulerData
        InitializeComponent()
    End Sub

    Public Function CanShowRecurrenceRule(ByVal recurrenceRule As RecurrenceRule) As Boolean
        Return recurrenceRule.Frequency = RecurrenceType.Minutely
    End Function

    Public Function GetRecurrenceRule() As RecurrenceRule
        Dim rule As MinutelyRecurrenceRule = New MinutelyRecurrenceRule()
        rule.Interval = CInt(Me.spinInterval.Value)
        Return rule
    End Function

    Public Function IsValidRecurrenceRule() As Boolean
        Return True
    End Function

    Public Sub ShowRecurrenceRule(ByVal recurrenceRule As RecurrenceRule, ByVal culture As CultureInfo)
        Me.spinInterval.Value = recurrenceRule.Interval
    End Sub
End Class


````

The next part is to create custom __EditRecurrenceDialog__ in which we are going to add a new RadRadioButton and set the UserControl related to it. To show the custom UserControl we need to subscribe to the __ToggleChanged__ event of the control and call the __ShowRecurrenceSettingsControl()__ which will hide the previous one and show the new content. The rest of the radio buttons need to be re-arranged to make space for the Minutely RadRadioButton.

What's left to do is to replace the default __EditRecurrenceDialog__ with our custom dialog inside the __RecurrenceEditDialogShowing__ event handler of the __RadScheduler__ control. 

#### Form`s Class

````C#            
public partial class RadForm1 : Telerik.WinControls.UI.RadForm
{
	public RadForm1()
	{
		InitializeComponent();
		this.radScheduler1.RecurrenceEditDialogShowing += radScheduler1_RecurrenceEditDialogShowing;
	}

	void radScheduler1_RecurrenceEditDialogShowing(object sender, RecurrenceEditDialogShowingEventArgs e)
	{
		e.RecurrenceEditDialog = new MyRecurrenceDialog(e.Appointment, this.radScheduler1);
	}        
}
public class MyRecurrenceDialog : EditRecurrenceDialog
{
	RadRadioButton radioMinutely = new RadRadioButton();
	public MyRecurrenceDialog(IEvent appointment, ISchedulerData schedulerData)
		: base(appointment, schedulerData)
	{
		this.radioMinutely.Location = new System.Drawing.Point(7, 20);
		this.radioMinutely.Name = "radioMinutely";
		this.radioMinutely.Size = new System.Drawing.Size(50, 18);
		this.radioMinutely.TabIndex = 3;
		this.radioMinutely.Text = "Minute";
		recurrenceGroupBox.Size = new Size(recurrenceGroupBox.Size.Width, recurrenceGroupBox.Size.Height + 50);
		this.recurrenceGroupBox.Controls.Add(this.radioMinutely);
		this.radioMinutely.ToggleStateChanged += RadioMinutely_ToggleStateChanged;
		this.radioHourly.Location = new Point(this.radioHourly.Location.X, this.radioHourly.Location.Y + 15);
		this.radioDaily.Location = new Point(this.radioDaily.Location.X, this.radioDaily.Location.Y + 15);
		this.radioWeekly.Location = new Point(this.radioWeekly.Location.X, this.radioWeekly.Location.Y + 15);
		this.radioMonthly.Location = new Point(this.radioMonthly.Location.X, this.radioMonthly.Location.Y + 15);
		this.radioYearly.Location = new Point(this.radioYearly.Location.X, this.radioYearly.Location.Y + 15);
	}

	private void RadioMinutely_ToggleStateChanged(object sender, StateChangedEventArgs args)
	{
		RadRadioButton radioButton = sender as RadRadioButton;
		IRecurrenceRuleSettingsControl settingsControl = this.radioToSettingsDictionary[radioButton];
		this.ShowRecurrenceSettingsControl(settingsControl);
		settingsControl.ShowRecurrenceRule(this.recurrenceRule, this.culture);
	}

	protected override void CreateRadioToSettingsDictionary()
	{
		base.CreateRadioToSettingsDictionary();
		MinutelyRecurrenceSettings minuteRecurrenceSettings = new MinutelyRecurrenceSettings(this.schedulerData);
		this.radioToSettingsDictionary.Add(radioMinutely, minuteRecurrenceSettings);
	}
}

````
````VB.NET
Public Partial Class RadForm1
    Inherits Telerik.WinControls.UI.RadForm

    Public Sub New()
        InitializeComponent()
		AddHandler Me.radScheduler1.RecurrenceEditDialogShowing, AddressOf AddressOf radScheduler1_RecurrenceEditDialogShowing          
    End Sub

    Private Sub radScheduler1_RecurrenceEditDialogShowing(ByVal sender As Object, ByVal e As RecurrenceEditDialogShowingEventArgs)
        e.RecurrenceEditDialog = New MyRecurrenceDialog(e.Appointment, Me.radScheduler1)
    End Sub
End Class

Public Class MyRecurrenceDialog
    Inherits EditRecurrenceDialog

    Private radioMinutely As RadRadioButton = New RadRadioButton()

    Public Sub New(ByVal appointment As IEvent, ByVal schedulerData As ISchedulerData)
        MyBase.New(appointment, schedulerData)
        Me.radioMinutely.Location = New System.Drawing.Point(7, 20)
        Me.radioMinutely.Name = "radioMinutely"
        Me.radioMinutely.Size = New System.Drawing.Size(50, 18)
        Me.radioMinutely.TabIndex = 3
        Me.radioMinutely.Text = "Minute"
        recurrenceGroupBox.Size = New Size(recurrenceGroupBox.Size.Width, recurrenceGroupBox.Size.Height + 50)
        Me.recurrenceGroupBox.Controls.Add(Me.radioMinutely)
        Me.radioMinutely.ToggleStateChanged += AddressOf RadioMinutely_ToggleStateChanged
        Me.radioHourly.Location = New Point(Me.radioHourly.Location.X, Me.radioHourly.Location.Y + 15)
        Me.radioDaily.Location = New Point(Me.radioDaily.Location.X, Me.radioDaily.Location.Y + 15)
        Me.radioWeekly.Location = New Point(Me.radioWeekly.Location.X, Me.radioWeekly.Location.Y + 15)
        Me.radioMonthly.Location = New Point(Me.radioMonthly.Location.X, Me.radioMonthly.Location.Y + 15)
        Me.radioYearly.Location = New Point(Me.radioYearly.Location.X, Me.radioYearly.Location.Y + 15)
    End Sub

    Private Sub RadioMinutely_ToggleStateChanged(ByVal sender As Object, ByVal args As StateChangedEventArgs)
        Dim radioButton As RadRadioButton = TryCast(sender, RadRadioButton)
        Dim settingsControl As IRecurrenceRuleSettingsControl = Me.radioToSettingsDictionary(radioButton)
        Me.ShowRecurrenceSettingsControl(settingsControl)
        settingsControl.ShowRecurrenceRule(Me.recurrenceRule, Me.culture)
    End Sub

    Protected Overrides Sub CreateRadioToSettingsDictionary()
        MyBase.CreateRadioToSettingsDictionary()
        Dim minuteRecurrenceSettings As MinutelyRecurrenceSettings = New MinutelyRecurrenceSettings(Me.schedulerData)
        Me.radioToSettingsDictionary.Add(radioMinutely, minuteRecurrenceSettings)
    End Sub
End Class


````

![scheduler-minutely-recurrence-pattern 001](images/scheduler-minutely-recurrence-pattern001.png)

# See Also
* [Timeline View]({%slug winforms/scheduler/views/timeline-view%})
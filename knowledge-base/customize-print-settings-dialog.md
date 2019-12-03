---
title: How to customize Print Settings Dialog in RadScheduler
description: This article demonstrates how to create custom Print Settings Dialog in RadScheduler
type: how-to
page_title: How to customize Print Settings Dialog in RadScheduler
slug: customize-print-settings-dialog
position: 0
tags: scheduler, settings, dialog, print preview
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2019.3.1022|RadSheduler for WinForms|Nadya Karaivanova|
 
## Description

A common requirement is to customize the default look and feel of the Print Settings dialog which is displayed when [Print Preview]({%slug winforms/scheduler/print-support%}) is chosen. In this tutorial it is demonstrated how to change the value of start and end date in the Print range section. Note, that this tutorial is just a sample example. Feel free to modify and extend it in a way that suits your custom requirements best.

![customize-print-settings-dialog001](images/customize-print-settings-dialog001.png)

## Solution 

To achieve this you should create a custom **SchedulerPrintSettingsDialog** and modify the specified section. **RadScheduler** uses **IPrintSettingsDialogFactory** interface that requires only **CreateDialog** method's implementation. This factory is very useful just when you need to create a custom dialog. You should override its **CreateDialog** method in order to return the new custom dialog class. Do not forget to apply this factory to your **RadScheduler** in the constructor of the form.

After the implementation of the **IPrintSettingsDialogFactory** interface is ready it is neccessary to create the custom dialog that inherits from the [SchedulerPrintSettingsDialog]({%slug winforms/scheduler/end-user-functionality/print-support%}) class. The start/end date in Print range dialog are represented via the **RadDateTimePicker** contol. In the **OnLoad** method you can access the **RadDateTimePicker** controls and set their values to some custom instead of the default ones:

````C#
public RadForm1()
 {
     InitializeComponent();

     this.radScheduler1.PrintSettingsDialogFactory = new CustomSchedulerPrintSettingsDialogFactory();
 }

 public class CustomSchedulerPrintSettingsDialogFactory : IPrintSettingsDialogFactory
 {
     public Form CreateDialog(RadPrintDocument document)
     {
         return new CustomSchedulerPrintSettingsDialog(document);
     }

     public class CustomSchedulerPrintSettingsDialog : SchedulerPrintSettingsDialog
     {
         public CustomSchedulerPrintSettingsDialog(RadPrintDocument document) : base(document)
         {
         }
         SchedulerPrintStyleSettings printStyleSettingControl;

         protected override Control CreateFormatControl()
         {
             printStyleSettingControl = base.CreateFormatControl() as SchedulerPrintStyleSettings;
             return printStyleSettingControl;
         }

         protected override void OnLoad(EventArgs e)
         {
             base.OnLoad(e);
             RadDateTimePicker startDTP = printStyleSettingControl.Controls["groupBoxPageRange"].Controls["datePickerStartDate"] as RadDateTimePicker;
             startDTP.Value = new DateTime(2019, 11, 5);
             RadDateTimePicker endDTP = printStyleSettingControl.Controls["groupBoxPageRange"].Controls["datePickerEndDate"] as RadDateTimePicker;
             endDTP.Value = new DateTime(2019, 12, 20);
         }
     }
 }
        
````
````VB.NET
 Public Sub New()
        InitializeComponent()
        Me.radScheduler1.PrintSettingsDialogFactory = New CustomSchedulerPrintSettingsDialogFactory()
    End Sub

    Public Class CustomSchedulerPrintSettingsDialogFactory
        Inherits IPrintSettingsDialogFactory

        Public Function CreateDialog(ByVal document As RadPrintDocument) As Form
            Return New CustomSchedulerPrintSettingsDialog(document)
        End Function

        Public Class CustomSchedulerPrintSettingsDialog
            Inherits SchedulerPrintSettingsDialog

            Public Sub New(ByVal document As RadPrintDocument)
                MyBase.New(document)
            End Sub

            Private printStyleSettingControl As SchedulerPrintStyleSettings

            Protected Overrides Function CreateFormatControl() As Control
                printStyleSettingControl = TryCast(MyBase.CreateFormatControl(), SchedulerPrintStyleSettings)
                Return printStyleSettingControl
            End Function

            Protected Overrides Sub OnLoad(ByVal e As EventArgs)
                MyBase.OnLoad(e)
                Dim startDTP As RadDateTimePicker = TryCast(printStyleSettingControl.Controls("groupBoxPageRange").Controls("datePickerStartDate"), RadDateTimePicker)
                startDTP.Value = New DateTime(2019, 11, 5)
                Dim endDTP As RadDateTimePicker = TryCast(printStyleSettingControl.Controls("groupBoxPageRange").Controls("datePickerEndDate"), RadDateTimePicker)
                endDTP.Value = New DateTime(2019, 12, 20)
            End Sub
        End Class
    End Class

```` 

![customize-print-settings-dialog002](images/customize-print-settings-dialog001.png)
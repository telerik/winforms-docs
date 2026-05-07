---
title: PrintSettingsDialogFactory
page_title: PrintSettingsDialogFactory - RadScheduler
description: Learn how to customize the print settings dialog in RadScheduler by using the PrintSettingsDialogFactory property.
slug: winforms/scheduler/print-support/print-settings-dialog-factory
tags: printing,dialog,factory,customization
published: True
position: 3
---

# PrintSettingsDialogFactory

The `PrintSettingsDialogFactory` property of `RadScheduler` allows you to replace the default print settings dialog with a custom one. The property accepts any object that implements the `IPrintSettingsDialogFactory` interface.

When the end user opens the print settings dialog (for example, through `PrintPreview`), `RadScheduler` calls the `CreateDialog` method of the assigned factory to obtain the dialog instance. If the property is not explicitly set, it defaults to an instance of `SchedulerPrintSettingsDialogFactory`, which creates the built-in `SchedulerPrintSettingsDialog`.

## IPrintSettingsDialogFactory Interface

The `IPrintSettingsDialogFactory` interface defines a single method:

* `CreateDialog(RadPrintDocument document)`: Creates and returns a `Form` that serves as the print settings dialog.

## Creating a Custom Print Settings Dialog

To provide a custom print settings dialog, create a class that implements `IPrintSettingsDialogFactory` and assign it to the `PrintSettingsDialogFactory` property. The custom factory can return either a dialog that derives from the default `SchedulerPrintSettingsDialog` or an entirely new `Form`.

### Deriving from the Default Dialog

Derive from `SchedulerPrintSettingsDialog` to modify the built-in form while keeping its existing layout and functionality.

````C#
public class MyCustomSchedulerPrintSettingsDialog : SchedulerPrintSettingsDialog
{
    public MyCustomSchedulerPrintSettingsDialog(RadPrintDocument document)
        : base(document)
    {
        // Customize the built-in dialog here.
    }
}

public class CustomSchedulerPrintSettingsDialogFactory : IPrintSettingsDialogFactory
{
    public Form CreateDialog(RadPrintDocument document)
    {
        return new MyCustomSchedulerPrintSettingsDialog(document);
    }
}
````
````VB.NET
Public Class MyCustomSchedulerPrintSettingsDialog
    Inherits SchedulerPrintSettingsDialog

    Public Sub New(document As RadPrintDocument)
        MyBase.New(document)
        ' Customize the built-in dialog here.
    End Sub
End Class

Public Class CustomSchedulerPrintSettingsDialogFactory
    Implements IPrintSettingsDialogFactory

    Public Function CreateDialog(document As RadPrintDocument) As Form Implements IPrintSettingsDialogFactory.CreateDialog
        Return New MyCustomSchedulerPrintSettingsDialog(document)
    End Function
End Class
````

### Creating a Dialog from Scratch

Return a new `Form` (or `RadForm`) to build a completely custom print settings dialog.

````C#
public class CustomSchedulerPrintSettingsDialogFactory : IPrintSettingsDialogFactory
{
    public Form CreateDialog(RadPrintDocument document)
    {
        RadForm dialog = new RadForm();
        dialog.Text = "Custom Print Settings";
        // Build the dialog UI from scratch.
        return dialog;
    }
}
````
````VB.NET
Public Class CustomSchedulerPrintSettingsDialogFactory
    Implements IPrintSettingsDialogFactory

    Public Function CreateDialog(document As RadPrintDocument) As Form Implements IPrintSettingsDialogFactory.CreateDialog
        Dim dialog As New RadForm()
        dialog.Text = "Custom Print Settings"
        ' Build the dialog UI from scratch.
        Return dialog
    End Function
End Class
````

### Assigning the Custom Factory

````C#
this.radScheduler1.PrintSettingsDialogFactory = new CustomSchedulerPrintSettingsDialogFactory();
````
````VB.NET
Me.RadScheduler1.PrintSettingsDialogFactory = New CustomSchedulerPrintSettingsDialogFactory()
````

After setting the factory, every subsequent call to `PrintPreview` uses the custom dialog.

## See Also

* [Print Support]({%slug winforms/scheduler/print-support%})
* [SchedulerPrintStyles]({%slug winforms/scheduler/print-support/schedulerprintstyles%})
* [Events and Customization]({%slug winforms/scheduler/print-support/events-and-customization%})

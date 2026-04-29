---
title: PrintSettingsDialogFactory
page_title: PrintSettingsDialogFactory - RadGridView
description: Learn how to customize the print settings dialog in RadGridView by using the PrintSettingsDialogFactory property.
slug: winforms/gridview/printing-support/print-settings-dialog-factory
tags: printing,dialog,factory,customization
published: True
position: 3
---

# PrintSettingsDialogFactory

The `PrintSettingsDialogFactory` property of `RadGridView` allows you to replace the default print settings dialog with a custom one. The property accepts any object that implements the `IPrintSettingsDialogFactory` interface.

When the end user opens the print settings dialog (for example, through `PrintPreview`), `RadGridView` calls the `CreateDialog` method of the assigned factory to obtain the dialog instance. If the property is not explicitly set, it defaults to an instance of `GridViewPrintSettingsDialogFactory`, which creates the built-in `GridViewPrintSettingsDialog`.

## IPrintSettingsDialogFactory Interface

The `IPrintSettingsDialogFactory` interface defines a single method:

* `CreateDialog(RadPrintDocument document)`: Creates and returns a `Form` that serves as the print settings dialog.

## Creating a Custom Print Settings Dialog

To provide a custom print settings dialog, create a class that implements `IPrintSettingsDialogFactory` and assign it to the `PrintSettingsDialogFactory` property. The custom factory can return either a dialog that derives from the default `GridViewPrintSettingsDialog` or an entirely new `Form`.

### Deriving from the Default Dialog

Derive from `GridViewPrintSettingsDialog` to modify the built-in form while keeping its existing layout and functionality.

````C#
public class MyCustomGridPrintSettingsDialog : GridViewPrintSettingsDialog
{
    public MyCustomGridPrintSettingsDialog(RadPrintDocument document)
        : base(document)
    {
        // Customize the built-in dialog here.
    }
}

public class CustomGridPrintSettingsDialogFactory : IPrintSettingsDialogFactory
{
    public Form CreateDialog(RadPrintDocument document)
    {
        return new MyCustomGridPrintSettingsDialog(document);
    }
}
````
````VB.NET
Public Class MyCustomGridPrintSettingsDialog
    Inherits GridViewPrintSettingsDialog

    Public Sub New(document As RadPrintDocument)
        MyBase.New(document)
        ' Customize the built-in dialog here.
    End Sub
End Class

Public Class CustomGridPrintSettingsDialogFactory
    Implements IPrintSettingsDialogFactory

    Public Function CreateDialog(document As RadPrintDocument) As Form Implements IPrintSettingsDialogFactory.CreateDialog
        Return New MyCustomGridPrintSettingsDialog(document)
    End Function
End Class
````

### Creating a Dialog from Scratch

Return a new `Form` (or `RadForm`) to build a completely custom print settings dialog.

````C#
public class CustomGridPrintSettingsDialogFactory : IPrintSettingsDialogFactory
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
Public Class CustomGridPrintSettingsDialogFactory
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
this.radGridView1.PrintSettingsDialogFactory = new CustomGridPrintSettingsDialogFactory();
````
````VB.NET
Me.RadGridView1.PrintSettingsDialogFactory = New CustomGridPrintSettingsDialogFactory()
````

After setting the factory, every subsequent call to `PrintPreview` uses the custom dialog.

## See Also

* [Printing Support]({%slug winforms/gridview/printing-support%})
* [GridPrintStyle]({%slug winforms/gridview/printing-support/gridprintstyle%})
* [Events and Customization]({%slug winforms/gridview/printing-support/events-and-customization%})

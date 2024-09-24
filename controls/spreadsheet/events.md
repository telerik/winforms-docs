---
title: Events
page_title: Events - RadSpreadsheet
description: This topic describes the events you can use in RadSpreadsheet so you can get a notification about different actions.
slug: radspreadsheet-events
tags: events
published: True
position: 8
---

# Events

This topic describes the events you can use in RadSpreadsheet so you can get a notification about different actions.

* [RadSpreadsheet Events](#radspreadsheet-events)
* [Workbook Events](#workbook-events)
* [Worksheet Events](#worksheet-events)
* [RadWorksheetEditor Events](#radworksheeteditor-events)
* [Cells Events](#cells-events)
* [Row/Column Events](#rowcolumn-events)


## RadSpreadsheet Events

* **ActiveSheetChanged**: Occurs when the active sheet is changed.

* **ActiveSheetEditorChanged**: Occurs when the active sheet editor is changed.

* **MessageShowing**: Occurs when the user is presented with a warning message. The event arguments are of type **MessageShowingEventArgs** and expose the following properties:
	* **IsHandled**: Gets or sets whether the event is handled.
	* **Header**: Gets or sets the header of the message.
	* **Content**: Gets or sets the content of the message.
	* **NotificationType**: Gets or sets the type of the notification. The property is of type [MessageBoxNotificationType](http://docs.telerik.com/devtools/winforms/api/html/t_telerik_windows_controls_spreadsheet_dialogs_messageboxnotificationtype.htm).

The code from **Example 1** shows how to disable the messages appearing when the user is trying to edit a protected worksheet.

#### Example 1: Disable messages related to protection using the MessageShowing event

{{source=..\SamplesCS\Spreadsheet\Events.cs region=radspreadsheet-events_1}} 
{{source=..\SamplesVB\Spreadsheet\Events.vb region=radspreadsheet-events_1}}
````C#
public void AttachToMessageShowingEvent()
{
    this.radSpreadsheet.SpreadsheetElement.MessageShowing += radSpreadsheet_MessageShowing;
}
private void radSpreadsheet_MessageShowing(object sender, MessageShowingEventArgs e)
{
    if (e.NotificationType == Telerik.WinForms.Controls.Spreadsheet.Dialogs.MessageBoxNotificationType.ProtectedWorksheetError)
    {
        e.IsHandled = true;
    }
}

````
````VB.NET
Public Sub AttachToMessageShowingEvent()
    AddHandler Me.radSpreadsheet.SpreadsheetElement.MessageShowing, AddressOf radSpreadsheet_MessageShowing
End Sub
Private Sub radSpreadsheet_MessageShowing(ByVal sender As Object, ByVal e As MessageShowingEventArgs)
    If e.NotificationType = Telerik.WinForms.Controls.Spreadsheet.Dialogs.MessageBoxNotificationType.ProtectedWorksheetError Then
        e.IsHandled = True
    End If
End Sub

```` 

 
{{endregion}} 

* **WorkbookCommandError**: Notifies that an error occurred while executing a command in RadSpreadsheet. The arguments are of type **CommandErrorEventArgs** and you can use the **Exception** property to check what exactly the error is.

* **WorkbookChanging**: Occurs when the workbook starts changing.

* **WorkbookChanged**: Occurs when the workbook is changed.

* **WorkbookCommandExecuting**: Occurs when workbook command starts executing. The arguments are of type [CommandExecutingEventArgs](https://docs.telerik.com/devtools/winforms/api/telerik.windows.documents.spreadsheet.commands.commandexecutingeventargs.html) and allow you to cancel the execution of the command.  

#### Example 2: Cancel a command through WorkbookCommandExecuting

{{source=..\SamplesCS\Spreadsheet\Events.cs region=radspreadsheet-events_2}} 
{{source=..\SamplesVB\Spreadsheet\Events.vb region=radspreadsheet-events_2}}
````C#
private void radSpreadsheet_WorkbookCommandExecuting(object sender, Telerik.Windows.Documents.Spreadsheet.Commands.CommandExecutingEventArgs e)
{
    if (e.CommandName == "AddShapeCommand")
    {
        e.Cancel();
    }
}

````
````VB.NET
Private Sub radSpreadsheet_WorkbookCommandExecuting(ByVal sender As Object, ByVal e As Telerik.Windows.Documents.Spreadsheet.Commands.CommandExecutingEventArgs)
    If e.CommandName = "AddShapeCommand" Then
        e.Cancel()
    End If
End Sub

```` 

 
{{endregion}} 


* **WorkbookCommandExecuted**: Occurs when workbook command is executed.

* **WorkbookContentChanged**: Occurs when the content of the workbook is changed.


## Workbook Events


* **ActiveSheetChanged**: Occurs when the active sheet is changed.

* **WorkbookContentChanged**: Occurs when the workbook content is changed.

* **IsProtectedChanged**: Occurs when the current protection state has changed.

* **NameChanged**: Occurs when the name of the workbook is changed.

* **ThemeChanged**: Occurs when a theme is changed.


## Worksheet Events

* **IsProtectedChanged**: Occurs when the current protection state has changed.

* **LayoutInvalidated**: Occurs when the layout is invalidated.

* **NameChanged**: Occurs when the name of the worksheet is changed.



## RadWorksheetEditor Events


* **PreviewSheetChanging**: Occurs just before the sheet changing begins.

* **SheetChanging**: Occurs when the sheet is changing.

* **PreviewSheetChanged**: Occurs just before the sheet changing ends.

*  **SheetChanged**: Occurs when the sheet is already changed.

* **ScaleFactorChanged**: Occurs when the scale factor is changed.

* **UICommandExecuting**: Occurs when a UI command is executing. Using the event arguments, you can obtain the command that is going to be executed with its parameters.

* **UICommandExecuted**: Occurs when the UI command is executed. Using the event arguments, you can obtain the command that was executed with its parameters.

* **UICommandError**: Occurs on UI command error. The event args expose the Exception property, which can help you get the error that was thrown.

* **ScrollModeChanged**: Occurs when the scroll mode is changed.

* **ActivePresenterChanged**: Occurs when the active presenter is changed.

* **HyperlinkClicked**: Occurs when a hyperlink in the document gets clicked. The event allows you to either cancel or replace the navigation logic. HyperlinkClicked event can be used as a confirmation from the end-user whether to proceed or not with opening a hyperlink due to security reasons.
  With the 2024 Q3 (2024.3.924), the default navigation behavior of the hyperlinks is to automatically open only valid and trusted addresses. The hyperlink navigation can be canceled by either setting the __Handled__ property of the HyperlinkClickedEventArgs to _true_ or __IsTrustedUrl__ to _false_.

#### Example 3: Using the HyperlinkClicked event to implement confirmation for the clicked links in the document

{{source=..\SamplesCS\Spreadsheet\Events.cs region=HyperlinkClickedEvent}} 
{{source=..\SamplesVB\Spreadsheet\Events.vb region=HyperlinkClickedEvent}}
````C#
private void ActiveWorksheetEditor_HyperlinkClicked(object sender, Telerik.WinControls.Hyperlinks.HyperlinkClickedEventArgs e)
{
    if (e.URL.EndsWith("exe"))
    {
        e.Handled = true;
        MessageBoxResult Result = System.Windows.MessageBox.Show("You are about to open an executable file. Do you want to proceed?", "Possible unsafe link", MessageBoxButton.YesNo, MessageBoxImage.Question);

        if (Result == MessageBoxResult.Yes)
        {
            Process.Start(new ProcessStartInfo()
            {
                FileName = e.URL,
                UseShellExecute = true
            });
        }
    }
}

````
````VB.NET
Private Sub ActiveWorksheetEditor_HyperlinkClicked(ByVal sender As Object, ByVal e As Telerik.WinControls.Hyperlinks.HyperlinkClickedEventArgs)
    If e.URL.EndsWith("exe") Then
        e.Handled = True
        Dim Result As MessageBoxResult = System.Windows.MessageBox.Show("You are about to open an executable file. Do you want to proceed?", "Possible unsafe link", MessageBoxButton.YesNo, MessageBoxImage.Question)

        If Result = MessageBoxResult.Yes Then
            Process.Start(New ProcessStartInfo() With {
                .FileName = e.URL,
                .UseShellExecute = True
            })
        End If
    End If
End Sub

```` 
 
{{endregion}} 


>The events related to selection in RadSpreadsheet are described in the [Working with UI Selection]({%slug radspreadsheet-ui-working-with-selection%}) topic.

## Cells Events

* **CellPropertyChanged**: Occurs when a property of a cell is changed. The event arguments are of type **CellPropertyChangedEventArgs** and expose information about the exact property that was changed as well as the affected cell range. **Example 3** demonstrates how you can use the event to get a notification when the users change the fill of a cell.

#### Example 4: Using the CellPropertyChangedEvent

{{source=..\SamplesCS\Spreadsheet\Events.cs region=radspreadsheet-events_3}} 
{{source=..\SamplesVB\Spreadsheet\Events.vb region=radspreadsheet-events_3}}
````C#
public void AttachToCellPropertyChangedEvent()
{
    this.radSpreadsheet.SpreadsheetElement.ActiveWorksheet.Cells.CellPropertyChanged += Cells_CellPropertyChanged;
}
private void Cells_CellPropertyChanged(object sender, CellPropertyChangedEventArgs e)
{
    if (e.Property == CellPropertyDefinitions.FillProperty)
    {
        RadMessageBox.Show("The fill of a cell was changed!");
    }
}

````
````VB.NET
Public Sub AttachToCellPropertyChangedEvent()
    AddHandler Me.radSpreadsheet.SpreadsheetElement.ActiveWorksheet.Cells.CellPropertyChanged, AddressOf Cells_CellPropertyChanged
End Sub
Private Sub Cells_CellPropertyChanged(ByVal sender As Object, ByVal e As CellPropertyChangedEventArgs)
    If e.Property Is CellPropertyDefinitions.FillProperty Then
        RadMessageBox.Show("The fill of a cell was changed!")
    End If
End Sub

```` 

 
{{endregion}} 

* **CellRangeInsertedOrRemoved**: Occurs when a cell range is inserted or removed. Through the arguments, you can obtain information about the affected ranges, as well as whether the range is removed or not.

* **MergedCellsChanged**: Occurs when the merged cells collection in a worksheet is changed. The MergedCellRangesChangedEventArgs class represents the event arguments and holds the cell range related to the change.


## Row/Column Events

* **ColumnsWidthChanged**: Occurs when the columns' widths are changed.

* **RowsHeightsChanged**: Occurs when the rows' heights are changed.

The arguments of the two events are of type **RowColumnPropertyChangedEventArgs** and expose the following properties:

* **Property**: Gets the property that was changed.
* **FromIndex**: Gets the first index of the changed range.
* **ToIndex**: Gets the last index of the changed range.


## See Also

* [Model]({%slug radspreadsheet-model%})

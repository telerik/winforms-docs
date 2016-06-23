---
title: Using the CommandManager
page_title: Using the CommandManager | UI for WinForms Documentation
description: Using the CommandManager
slug: winforms/dock/architecture-and-features/using-the-commandmanager
tags: using,the,commandmanager
published: True
position: 8
previous_url: dock-architecture-and-features-using-the-command-manager
---

# Using the CommandManager
 
## Predefined Commands

* __DisplayQuickNavigator (CTRL+TAB)__: Displays the window activation tool (quick navigator)

* __CloseActiveDocument (CTRL+F4)__: Closes the currently active document and selects the next in the activation order list.

* __NextDocument (CTRL+F6)__: Sends the currently active document to the back of the activation order list and activates the next one.

* __PreviousDocument (CTRL+SHIFT+F6)__ Puts the last document in the activation order list in front and activates it.
 

The names of all predefined commands may be found in the static `PredefinedCommandNames` class.
 

## Providing Custom Shortcuts

You may easily specify custom shortcut for any of the predefined commands like this: 

{{source=..\SamplesCS\Dock\UsingCommandManager.cs region=Shortcut}} 
{{source=..\SamplesVB\Dock\UsingCommandManager.vb region=Shortcut}} 

````C#
private void ChangeNextDocumentShortcut()
{
    RadDockCommand command = this.radDock1.CommandManager.FindCommandByName(PredefinedCommandNames.NextDocument);
    command.Shortcuts.Clear();
    command.Shortcuts.Add(new RadShortcut(Keys.Shift, Keys.A, Keys.S));
}

````
````VB.NET
Private Sub ChangeNextDocumentShortcut()
    Dim command As RadDockCommand = Me.radDock1.CommandManager.FindCommandByName(PredefinedCommandNames.NextDocument)
    command.Shortcuts.Clear()
    command.Shortcuts.Add(New RadShortcut(Keys.Shift, Keys.A, Keys.S))
End Sub

````

{{endregion}}  

The above code specifies the SHIFT+A+S as a valid key combination that will trigger the NextDocument command.

## Registering Custom Command

The completely transparent object model of the command manager allows you to create and register completely custom command and associate it with the desired key combination. The following code demonstrates how to create custom command that floats the currently active tool window and is associated with the CTRL+F shortcut:

#### Define the custom command class 

{{source=..\SamplesCS\Dock\UsingCommandManager.cs region=RadDockCommand}} 
{{source=..\SamplesVB\Dock\UsingCommandManager.vb region=RadDockCommand}} 

````C#
public class FloatWindowCommand : RadDockCommand
{
    public FloatWindowCommand()
    {
        this.Name = "FloatWindow";
        this.Shortcuts.Add(new RadShortcut(Keys.Control, Keys.F));
    }
    public override bool CanExecute(object parameter)
    {
        RadDock dock = parameter as RadDock;
        if (dock == null)
        {
            return false;
        }
        return dock.ActiveWindow is ToolWindow;
    }
    public override object Execute(params object[] settings)
    {
        RadDock dock = settings[0] as RadDock;
        Debug.Assert(dock != null, "Invalid execute parameter!");
        ToolWindow toolWindow = dock.ActiveWindow as ToolWindow;
        if (toolWindow != null)
        {
            dock.FloatWindow(toolWindow);
        }
        return base.Execute(settings);
    }  
}

````
````VB.NET
Public Class FloatWindowCommand
    Inherits RadDockCommand
    Public Sub New()
        Me.Name = "FloatWindow"
        Me.Shortcuts.Add(New RadShortcut(Keys.Control, Keys.F))
    End Sub
    Public Overrides Function CanExecute(parameter As Object) As Boolean
        Dim dock As RadDock = TryCast(parameter, RadDock)
        If dock Is Nothing Then
            Return False
        End If
        Return TypeOf dock.ActiveWindow Is ToolWindow
    End Function
    Public Overrides Function Execute(ParamArray settings As Object()) As Object
        Dim dock As RadDock = TryCast(settings(0), RadDock)
        Debug.Assert(dock IsNot Nothing, "Invalid execute parameter!")
        Dim toolWindow As ToolWindow = TryCast(dock.ActiveWindow, ToolWindow)
        If toolWindow IsNot Nothing Then
            dock.FloatWindow(toolWindow)
        End If
        Return MyBase.Execute(settings)
    End Function
End Class

````

{{endregion}} 


#### Register the custom command 

{{source=..\SamplesCS\Dock\UsingCommandManager.cs region=RegisterCustomCommand}} 
{{source=..\SamplesVB\Dock\UsingCommandManager.vb region=RegisterCustomCommand}} 

````C#
private void RegisterCustomCommand()
{
    this.radDock1.CommandManager.RegisterCommand(new FloatWindowCommand());
}

````
````VB.NET
Private Sub RegisterCustomCommand()
    Me.radDock1.CommandManager.RegisterCommand(New FloatWindowCommand())
End Sub

````

{{endregion}} 
 
## Enable/Disable the Command Manager
 
You may easily disable the command manager, using its __Enabled__ property. Alternatively, you may either clear all commands or clear any shortcut associated with these commands.

---
title: Handling Users Input
page_title: Handling Users Input | Toast Notification
description: RadToastNotificationManager is built on the Windows' notification system, making it easier for our customers to create and manage notifications.  
slug: toast-notification-handling-users-input
tags: toast notification
published: True
position: 6 
CTAControlName: ToastNotification
---

## Handling Users Input

**RadToastNotificationManager** offers the static **RadToastActivated** event which is fired when the user interacts with the notification and activates it, e.g. after clicking a button. The **RadToastActivatedEventArgs** gives you the following arguments:

* **Arguments** - arguments passed to the toast. 
* **UserInput** - returns a Dictionary<string, string> containing the user's input.
* **AppUserModelId** - returns the application id.

>important **RadToastActivated** event is **not** fired on the main UI thread. Hence, you should be cautious when interacting with the controls on the form. Note that all UI controls are not thread safe controls in the whole Windows Forms platform (not just Telerik controls, but all controls out there). You should use [Invoke](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.invoke?redirectedfrom=MSDN&view=net-5.0#System_Windows_Forms_Control_Invoke_System_Delegate_) to update the controls in cross threading scenario.
 
We will extend the example for building log-in toast notification in the [Adding Toast Notifications Programmatically  ]({%slug toast-notification-adding-toast-notifications-programmatically%}) article and check the user name and password.

{{source=..\SamplesCS\ToastNotification\ToastNotificationGettingStarted.cs region=Activated}} 
{{source=..\SamplesVB\ToastNotification\ToastNotificationGettingStarted.vb region=Activated}}

````C#

protected override void OnLoad(EventArgs e)
{
    base.OnLoad(e);

    RadToastNotificationManager.RadToastActivated+=RadToastNotificationManager_RadToastActivated;
}

private void RadToastNotificationManager_RadToastActivated(RadToastActivatedEventArgs e)
{
    Dictionary<string, string> userInput = e.UserInput;
    string userName = userInput["UserNameInput"];
    string password = userInput["PasswordInput"];
    if (userName == string.Empty)
    {
        RadMessageBox.Show("UserName is empty!");
    }

    if (password == string.Empty)
    {
        RadMessageBox.Show("Password is empty!");
    }

    this.Invoke((MethodInvoker)delegate { this.Text = "UserName: " + userName + "Password: " + password; });

}

````
````VB.NET

Protected Overrides Sub OnLoad(ByVal e As EventArgs)
    MyBase.OnLoad(e)
    AddHandler RadToastNotificationManager.RadToastActivated, AddressOf RadToastNotificationManager_RadToastActivated
End Sub

Private Sub RadToastNotificationManager_RadToastActivated(ByVal e As RadToastActivatedEventArgs)
    Dim userInput As Dictionary(Of String, String) = e.UserInput
    Dim userName As String = userInput("UserNameInput")
    Dim password As String = userInput("PasswordInput")

    If userName = String.Empty Then
        RadMessageBox.Show("UserName is empty!")
    End If

    If password = String.Empty Then
        RadMessageBox.Show("Password is empty!")
    End If

    Me.Invoke(CType(Function()
                        Me.Text = "UserName: " & userName & "Password: " & password
                    End Function, Windows.Forms.MethodInvoker))
End Sub

````

{{endregion}}

Toast notifications remains in the Windows Action Center until removed and the user can interact with them, even if the application is already closed. Thus, they provide the ability to respond after the application has been closed. The following code snippet demonstrates a sample approach how to detect when a toast has been clicked in this case:

>important In order to detect when a toast notification is clicked after the application has been closed, do not [unregister]({%slug toast-notification-register%}) it manager.

````C#

static class Program
{
    /// <summary>
    /// The main entry point for the application.
    /// </summary>
    [STAThread]
    static void Main()
    {
        // If launched from a toast
        string[] args = Environment.GetCommandLineArgs();
        if (args.Contains("-ToastActivated"))
        { 
            // Our NotificationActivator code will run after this completes,
            // and will show a window if necessary.
            MessageBox.Show("Toast Notification clicked after the application has been closed");
        }
        Application.EnableVisualStyles();
        Application.SetCompatibleTextRenderingDefault(false);
        Application.Run(new RadForm1());
    }
}

````
````VB.NET
Shared Sub Main()

    Dim args As String() = Environment.GetCommandLineArgs()

    If args.Contains("-ToastActivated") Then
        MessageBox.Show("Toast Notification clicked after the application has been closed")
    End If

    Application.EnableVisualStyles()
    Application.SetCompatibleTextRenderingDefault(False)
    Application.Run(New RadForm1())
End Sub


````

# See Also

* [Getting Started]({%slug toast-notification-getting-started%})
* [Design Time]({%slug toast-notification-design-time%})
* [Notification Templates]({%slug toast-notification-templates%}) 
 
        

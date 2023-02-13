---
title: Adding Toast Notifications Programmatically  
page_title: Adding Toast Notifications Programmatically - Toast Notification
description: RadToastNotificationManager is built on the Windows' notification system, making it easier for our customers to create and manage notifications.  
slug: toast-notification-adding-toast-notifications-programmatically
tags: toast notification
published: True
position: 5 
CTAControlName: ToastNotification
---

## Adding Toast Notifications Programmatically

The easiest way to produce the XML for your toast notification is via the [RadToastNotifications Editor]({%slug toast-notification-design-time%}) and its **Elements** section on the right. It also allows you to preview the notification while you are designing it.

It is possible to build a **RadToastNotification** at run time, passing the [RadToastTemplateType](https://docs.telerik.com/devtools/winforms/api/telerik.radtoastnotificationmanager.radtoasttemplatetype) and the XML content if you want to extend the default design.

#### Adding RadToastNotification at RunTime

{{source=..\SamplesCS\ToastNotification\ProgrammaticallyAddedToasts.cs region=ProgrammaticallyAddedNotifications}} 
{{source=..\SamplesVB\ToastNotification\ProgrammaticallyAddedToasts.vb region=ProgrammaticallyAddedNotifications}}

````C#

        RadToastNotificationManager radToastNotificationManager = new RadToastNotificationManager();

        public ProgrammaticallyAddedToasts()
        {
            InitializeComponent();

            RadButton button = new RadButton();
            this.Controls.Add(button);
            button.Click += button_Click;

            RadToastNotificationManager.RadToastOnActivated += RadToastNotificationManager_RadToastOnActivated;

            RadToastNotification defaultWeatherNotification = new RadToastNotification(RadToastTemplateType.ToastWeather, "Weather in Sofia");
            this.radToastNotificationManager.ToastNotifications.Add(defaultWeatherNotification);

            string xmlContent = @" <toast>
            <visual>
                <binding template=""ToastGeneric"">
                <text placement=""attribution"" hint-maxLines=""1"">Login Information:</text>
                </binding>
            </visual>
            <actions>
                <input id=""UserNameInput"" title=""UserName:"" placeHolderContent=""Enter username"" type=""text"" />
                <input id=""PasswordInput"" title=""Password:"" placeHolderContent=""******"" type=""text"" />
                <action content=""OK"" arguments=""Enter arguments here"" activationType=""background"" imageUri=""C:\Program Files (x86)\Progress\Telerik UI for WinForms R1 2021\Examples\QuickStart\Resources\OutlookViewMail.png"" />
                <action content=""Open Bing"" arguments=""bingmaps:? q = 4018 148th Ave NE, Redmond, WA 98052"" activationType=""protocol"" /> 
            </actions>
            </toast>";
            RadToastNotification customLoginNotification = new RadToastNotification(RadToastTemplateType.ToastGeneric, "Login", xmlContent);
            this.radToastNotificationManager.ToastNotifications.Add(customLoginNotification);
        }

        private void RadToastNotificationManager_RadToastOnActivated(RadToastOnActivatedEventArgs e)
        {
            foreach (KeyValuePair<string, object> pair in e.UserInput)
            {
                Console.WriteLine(pair.Key + " " + pair.Value);
            }
        }

        private void button_Click(object sender, EventArgs e)
        { 
            this.radToastNotificationManager.ShowNotification(1);
        }

        protected override void OnClosed(EventArgs e)
        {
            base.OnClosed(e);
            this.radToastNotificationManager.Unregister();
        }

````
````VB.NET

    Friend WithEvents radToastNotificationManager As RadToastNotificationManager = New RadToastNotificationManager()

    Private Sub RadToastNotificationManager_RadToastOnActivated(ByVal e As RadToastOnActivatedEventArgs) Handles radToastNotificationManager.RadToastOnActivated
        For Each pair As KeyValuePair(Of String, Object) In e.UserInput
            Console.WriteLine(pair.Key & " " + pair.Value)
        Next
    End Sub

    Public Sub New()
        InitializeComponent()
        Dim button As RadButton = New RadButton()
        Me.Controls.Add(button)
        AddHandler button.Click, AddressOf button_Click

        Dim defaultWeatherNotification As RadToastNotification = New RadToastNotification(RadToastTemplateType.ToastWeather, "Weather in Sofia")
        Me.radToastNotificationManager.ToastNotifications.Add(defaultWeatherNotification)
        Dim xmlContent As String = "<toast>" & _
        "<visual>" & _
        "<binding template=""ToastGeneric"">" & _
        "<text placement=""attribution"" hint-maxLines=""1"">Login Information:</text>" & _
        "</binding>" & _
        "</visual>" & _
        "<actions>" & _
        "<input id=""UserNameInput"" title=""UserName:"" placeHolderContent=""Enter username"" type=""text"" />" & _
        "<input id=""PasswordInput"" title=""Password:"" placeHolderContent=""******"" type=""text"" />" & _
        "<action content=""OK"" arguments=""Enter arguments here"" activationType=""background"" imageUri=""C:\Program Files (x86)\Progress\Telerik UI for WinForms R1 2021\Examples\QuickStart\Resources\OutlookViewMail.png"" />" & _
        "<action content=""Open Bing"" arguments=""bingmaps:? q = 4018 148th Ave NE, Redmond, WA 98052"" activationType=""protocol"" /> " & _
        " </actions>" & _
        "</toast>"
        Dim customLoginNotification As RadToastNotification = New RadToastNotification(RadToastTemplateType.ToastGeneric, "Login", xmlContent)
        Me.radToastNotificationManager.ToastNotifications.Add(customLoginNotification)
    End Sub

    Private Sub button_Click(ByVal sender As Object, ByVal e As EventArgs)
        Me.radToastNotificationManager.ShowNotification(1)
    End Sub

    Protected Overrides Sub OnClosed(ByVal e As EventArgs)
        MyBase.OnClosed(e)
        Me.radToastNotificationManager.Unregister()
    End Sub

````

{{endregion}}


>important [Obsolete as of R3 2021 SP 1] **RadToastActivated** event is **not** fired on the main UI thread. Hence, you should be cautious when interacting with the controls on the form. Note that all UI controls are not thread safe controls in the whole Windows Forms platform (not just Telerik controls, but all controls out there). You should use [Invoke](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.control.invoke?redirectedfrom=MSDN&view=net-5.0#System_Windows_Forms_Control_Invoke_System_Delegate_) to update the controls in cross threading scenario.

![WinForms Adding Toast Notifications Programmatically](images/toast-notification-adding-toast-notifications-programmatically001.png)

# See Also

* [Getting Started]({%slug toast-notification-getting-started%})
* [Design Time]({%slug toast-notification-design-time%})
* [Notification Templates]({%slug toast-notification-templates%}) 
 
        

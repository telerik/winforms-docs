---
title: Assigning Global RadShortcuts
page_title: Assigning Global RadShortcuts | UI for WinForms Documentation
description: Assigning Global RadShortcuts
slug: winforms/shortcuts/assigning-global-radshortcuts
tags: assigning,global,radshortcuts
published: True
position: 3
---

# Assigning Global RadShortcuts

## 

RadItem allows you to add shortcuts which will generate a Click event for that item, allowing you to perform specific action, associated with that item. This approach however has some requirements such as you need a RadItem instance and some restrictions such as each shortcut, registered with RadItem is processed only if the item resides on the currently active form within the Application. In order to create a custom shortcuts behavior, you may provide your own IShortcutProvider implementation and to handle its callback methods to provide completely customized shortcut support for your Application, including “Global” shortcuts – that is a shortcut which is not bound to the currently active form. The following code snippet demonstrates how this can be done:

1\. Implement a custom IShortcutProvider: 

{{source=..\SamplesCS\Shortcuts\MyShortcutProvider.cs region=customProvider}} 
{{source=..\SamplesVB\Shortcuts\MyShortcutProvider.vb region=customProvider}} 

````C#
    public class MyShortcutProvider : IShortcutProvider
    {
        private RadShortcutCollection shortcuts;
        private bool registered;

        public MyShortcutProvider()
        {
            this.shortcuts = new RadShortcutCollection(this);
        }

        #region IShortcutProvider Members

        public void OnPartialShortcut(PartialShortcutEventArgs e)
        {
            //This callback is called when a key that partially matches a registered shortcut is pressed
            //For example if we have CTRL + A, S pressing CTRL + A will execute this callback.
            //You will need to set the PartialShortcutEventArgs.Handled to true if you want to wait for the complete keyboard combination
            e.Handled = true;
        }

        public void OnShortcut(ShortcutEventArgs e)
        {
            //A keyboard combination for a specific shortcut is pressed.
            MessageBox.Show("Shortcut [" + e.Shortcut.GetDisplayText() + "] is executed.");
            //Mark the event arguments as "Handled" so that this shortcut is no further processed.
            e.Handled = true;
        }

        public void OnShortcutsChanged()
        {
            //Called by the Shortcuts collection when a shortcut is either added or removed from the collection
            //This is used for optimization purposes - e.g. is we do not have shortcuts registered,
            //we do not need to be registered with RadShortcutManager
            if (this.shortcuts.Count > 0)
            {
                if (!this.registered)
                {
                    RadShortcutManager.Instance.AddShortcutProvider(this);
                    this.registered = true;
                }
            }
            else
            {
                if (this.registered)
                {
                    RadShortcutManager.Instance.RemoveShortcutProvider(this);
                    this.registered = false;
                }
            }
        }

        public RadShortcutCollection Shortcuts
        {
            get
            {
                return this.shortcuts;
            }
        }
````
````VB.NET
Public Class MyShortcutProvider
    Implements IShortcutProvider
    Private shortcuts_Renamed As RadShortcutCollection
    Private registered As Boolean

    Public Sub New()
        Me.shortcuts_Renamed = New RadShortcutCollection(Me)
    End Sub

    Public Sub OnPartialShortcut(ByVal e As PartialShortcutEventArgs) Implements IShortcutProvider.OnPartialShortcut
        'This callback is called when a key that partially matches a registered shortcut is pressed
        'For example if we have CTRL + A, S pressing CTRL + A will execute this callback.
        'You will need to set the PartialShortcutEventArgs.Handled to true if you want to wait for the complete keyboard combination
        e.Handled = True
    End Sub

    Public Sub OnShortcut(ByVal e As ShortcutEventArgs) Implements IShortcutProvider.OnShortcut
        'A keyboard combination for a specific shortcut is pressed.
        MessageBox.Show("Shortcut [" & e.Shortcut.GetDisplayText() & "] is executed.")
        'Mark the event arguments as "Handled" so that this shortcut is no further processed.
        e.Handled = True
    End Sub

    Public Sub OnShortcutsChanged() Implements IShortcutProvider.OnShortcutsChanged
        'Called by the Shortcuts collection when a shortcut is either added or removed from the collection
        'This is used for optimization purposes - e.g. is we do not have shortcuts registered,
        'we do not need to be registered with RadShortcutManager
        If Me.shortcuts_Renamed.Count > 0 Then
            If (Not Me.registered) Then
                RadShortcutManager.Instance.AddShortcutProvider(Me)
                Me.registered = True
            End If
        Else
            If Me.registered Then
                RadShortcutManager.Instance.RemoveShortcutProvider(Me)
                Me.registered = False
            End If
        End If
    End Sub

    Public ReadOnly Property Shortcuts() As RadShortcutCollection Implements IShortcutProvider.Shortcuts
        Get
            Return Me.shortcuts_Renamed
        End Get
    End Property
End Class
'
````

{{endregion}} 

2\. And here is how we utilize the custom shortcut provider: 

{{source=..\SamplesCS\Shortcuts\Form2.cs region=globalShortcut}} 
{{source=..\SamplesVB\Shortcuts\Form2.vb region=globalShortcut}} 

````C#
        MyShortcutProvider provider;

        public Form2()
        {
            InitializeComponent();

            provider = new MyShortcutProvider();
            provider.Shortcuts.Add(new RadShortcut(Keys.Control, Keys.A, Keys.S));
        }
````
````VB.NET
    Private provider As MyShortcutProvider

    Public Sub New()
        InitializeComponent()

        provider = New MyShortcutProvider()
        provider.Shortcuts.Add(New RadShortcut(Keys.Control, Keys.A, Keys.S))
    End Sub
    '
````

{{endregion}}

>caution The shortcut providers that implement IShortcutProvider interface are registered as WeakReferences. So, if you declare the MyShortcutProvider variable in the scope of the constructor or in another method (for example Form_Load) the Garbage collection may collect the shortcut provider reference at a certain moment. To prevent this from happening, you need to declare the MyShortcutProvider variable globally.
>


---
title: Get a HostWindow by its Content
page_title: Get a HostWindow by its Content | RadDock
description: Get a HostWindow by using the form/control inside it.
slug: winforms/dock/docking-usercontrols-and-forms/get-a-hostwindow-by-its-content
tags: get,a,hostwindow,by,its,content
published: True
position: 2
previous_url: dock-docking-usercontrols-and-forms-get-a-hostwindow-by-its-content
---

# Get a HostWindow by its Content

In certain cases, you may need to perform specific operations depending on the currently activated HostWindow in regards to the form/user control that it contains. 

In order to do this, you should first subscribe to the `ActiveWindowChanged` event and then execute the following code snippet in the `ActiveWindowChanged` event handler: 

{{source=..\SamplesCS\Dock\DockingForms.cs region=handlingActiveWindowChanged}} 
{{source=..\SamplesVB\Dock\DockingForms.vb region=handlingActiveWindowChanged}} 

````C#
void radDock1_ActiveWindowChanged(object sender, Telerik.WinControls.UI.Docking.DockWindowEventArgs e)
{
    HostWindow hostWin = e.DockWindow as HostWindow;
    if (hostWin != null)
    {
        if (hostWin.Content is VegetablesForm)
        {
            // custom implementation here
        }
    }
}

````
````VB.NET
Private Sub radDock1_ActiveWindowChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Docking.DockWindowEventArgs)
    Dim hostWin As HostWindow = TryCast(e.DockWindow, HostWindow)
    If Not hostWin Is Nothing Then
        If TypeOf hostWin.Content Is VegetablesForm Then
            ' custom implementation here
        End If
    End If
End Sub

````

{{endregion}}  

## Getting a HostWindow by its content

In order to get a HostWindow that hosts a particular form/user control instance, you should call the __GetHostWindows__ method passing the contained control as a parameter. Supposing that `vegetablesForm` is an instance of type `VegetablesForm`, we can use the following code snippet: 

{{source=..\SamplesCS\Dock\DockingForms.cs region=gettingWindow}} 
{{source=..\SamplesVB\Dock\DockingForms.vb region=gettingWindow}} 

````C#
HostWindow vegetablesWindow = this.radDock1.GetHostWindow(vegetablesForm);

````
````VB.NET
Dim vegetablesWindow As HostWindow = Me.RadDock1.GetHostWindow(VegetablesForm)

````

{{endregion}} 

# See Also

* [Docking a UserControl with custom event]({%slug winforms/dock/docking-usercontrols-and-forms/docking-a-usercontrol-with-custom-event%})     
* [Docking Singleton Forms]({%slug winforms/dock/docking-usercontrols-and-forms/docking-singleton-forms%})
* [Getting Started]({%slug winforms/dock/docking-usercontrols-and-forms/getting-started%})




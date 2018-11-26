---
title: Using the RedockService
page_title: Using the RedockService | RadDock
description: This article describes how you can use the RedockService.
slug: winforms/dock/architecture-and-features/using-the-redockservice
tags: using,the,redockservice
published: True
position: 10
previous_url: dock-architecture-and-features-using-the-redockservice
---

# Using the RedockService

**RedockService** comes in handy when you want to save the dock state of your **DockWindows** and restore this state later.

## Using the RedockService

Let's take a look at the following scenario: 
         
1. We have a __RadDock__ instance containing several docked **ToolWindows** as shown below:        
	![dock-architecture-and-features-using-the-redockservice 001](images/dock-architecture-and-features-using-the-redockservice001.png)

1. The end-user decides to float some of the **ToolWindows**:
	![dock-architecture-and-features-using-the-redockservice 002](images/dock-architecture-and-features-using-the-redockservice002.png)

1. Now comes the time when the user wants to re-dock the floating **ToolWindows**. However, the user does not only want to dock the **ToolWindows**, he/she want to achieve the layout that he/she had at the beginning. For that purpose, we can have a button or a menu item on the **Click** of which we get the **RedockService** and return the floating windows to their original docked state by calling the __RestoreMethod__ of the service. When the user clicks that button, he/she will get the layout below, which as you can see is the same as the layout that we had at the beginning:
   
{{source=..\SamplesCS\Dock\UsingTheRedockService.cs region=redockService}} 
{{source=..\SamplesVB\Dock\UsingTheRedockService.vb region=redockService}} 

````C#
void radButton1_Click(object sender, EventArgs e)
{
    RedockService service = this.radDock1.GetService<RedockService>();
    foreach (DockWindow window in this.radDock1.DockWindows)
    {
        if (window.DockState == DockState.Floating)
        {
            service.RestoreState(window, DockState.Docked, true);
        }
    }
}

````
````VB.NET
Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
    Dim service As RedockService = Me.RadDock1.GetService(Of RedockService)()
    For Each window As DockWindow In Me.RadDock1.DockWindows
        If window.DockState = DockState.Floating Then
            service.RestoreState(window, DockState.Docked, True)
        End If
    Next window
End Sub

````

{{endregion}} 
 
![dock-architecture-and-features-using-the-redockservice 001](images/dock-architecture-and-features-using-the-redockservice001.png)

# See Also

[Getting Started]({%slug winforms/dock/getting-started%})
[Using the CommandManager]({%slug winforms/dock/architecture-and-features/using-the-commandmanager%})
[Using the ContextMenuService]({%slug winforms/dock/architecture-and-features/using-the-contextmenuservice%})
[Using the DragDropService]({%slug winforms/dock/architecture-and-features/using-the-dragdropservice%})
[Document Manager]({%slug winforms/dock/architecture-and-features/document-manager%})
[Understanding RadDock]({%slug winforms/dock/architecture-and-features/understanding-raddock%})

---
title: Floating Strips
page_title: Floating Strips - UI for WinForms Documentation
description: RadCommandBar is a fully theme-able tool strip that provides unprecedented flexibility
slug: winforms/commandbar/floating-strips
tags: floating,strips
published: True
position: 5
previous_url: commandbar-floating-strips
---

# Floating Strips
 
A __CommandBarStripElement__ object can be docked to the command bar or floated above the form. In addition, a __CommandBarStripElement__ can be dragged from the __RadCommandBar__ control that currently hosts it and docked to another.

## Basics

The ability of a __CommandBarStripElement__ object to float is controlled by the commandbar's __EnableDragging__ and __EnableFloating__ properties.  In order to allow a __CommandBarStripElement__ to float, both the __EnableDragging__ and __EnableFloating__ properties must be set to *true*. Setting only the __EnableFloating__ property to *true* has no effect on the floating behavior. The image below shows a __RadCommandBar__ with two strips one of which is floating:
 
![WinForms RadCommandBar Floating Strips Basics](images/commandbar-floating-strips001.png)

A __CommandBarStrip__ element is made floating when it is dragged outside the area of its control. You can dock it again by moving it with mouse over any __RadCommandBar__ control.

## Events

There are some events that provide you with control over the floating/docking process.
       

* __FloatingStripCreating__ event is fired when a strip is about to be made floating. The following example shows how to prevent the strip “OptionsStrip” from becoming floating.
 	 

{{source=..\SamplesCS\CommandBar\FloatingStrips.cs region=floatingStripCreating}} 
{{source=..\SamplesVB\CommandBar\FloatingStrips.vb region=floatingStripCreating}} 

````C#
    
void radCommandBar1_FloatingStripCreating(object sender, CancelEventArgs e)
{
    if ((sender as CommandBarStripElement).Name == "OptionsStrip")
    {
        e.Cancel = true;
    }
}

````
````VB.NET
Private Sub radCommandBar1_FloatingStripCreating(ByVal sender As Object, ByVal e As CancelEventArgs)
    If TryCast(sender, CommandBarStripElement).Name = "OptionsStrip" Then
        e.Cancel = True
    End If
End Sub

````

{{endregion}} 
 

* __FloatingStripCreated__ event is fired when the floating form is shown.
  The following example shows how to set the caption text of the floating form: 
 
{{source=..\SamplesCS\CommandBar\FloatingStrips.cs region=floatingStripCreated}} 
{{source=..\SamplesVB\CommandBar\FloatingStrips.vb region=floatingStripCreated}} 

````C#
void radCommandBar1_FloatingStripCreated(object sender, EventArgs e)
{
    (sender as CommandBarStripElement).FloatingForm.Text = "Just a floating form";
}

````
````VB.NET
Private Sub radCommandBar1_FloatingStripCreated(ByVal sender As Object, ByVal e As EventArgs)
    TryCast(sender, CommandBarStripElement).FloatingForm.Text = "Just a floating form"
End Sub

````

{{endregion}} 
 

* __FloatingStripDocking__ event is fired when a floating strip is about to be docked to a __RadCommandBar__ control. 
The following example shows how to prevent the strip with name “OptionsStrip” from being docked. 
 
{{source=..\SamplesCS\CommandBar\FloatingStrips.cs region=floatingStripDocking}} 
{{source=..\SamplesVB\CommandBar\FloatingStrips.vb region=floatingStripDocking}} 

````C#
void radCommandBar1_FloatingStripDocking(object sender, CancelEventArgs e)
{
    if ((sender as CommandBarStripElement).Name == "OptionsStrip")
    {
        e.Cancel = true;
    }
}

````
````VB.NET
Private Sub radCommandBar1_FloatingStripDocking(ByVal sender As Object, ByVal e As CancelEventArgs)
    If TryCast(sender, CommandBarStripElement).Name = "OptionsStrip" Then
        e.Cancel = True
    End If
End Sub

````

{{endregion}} 
 

* __FloatingStripDocked__ event is fired when a floating strip has docked to a __RadCommandBar__ control.
 The following example shows a sample usage of this event.
   

{{source=..\SamplesCS\CommandBar\FloatingStrips.cs region=floatingStripDocked}} 
{{source=..\SamplesVB\CommandBar\FloatingStrips.vb region=floatingStripDocked}} 

````C#
        
void radCommandBar1_FloatingStripDocked(object sender, EventArgs e)
{
    CommandBarStripElement dockedStrip = sender as CommandBarStripElement;
    if (dockedStrip != null)
    {
        MessageBox.Show(dockedStrip.Name + " has docked to " + dockedStrip.ElementTree.Control.Name);
    }
}

````
````VB.NET
Private Sub radCommandBar1_FloatingStripDocked(ByVal sender As Object, ByVal e As EventArgs)
    Dim dockedStrip As CommandBarStripElement = TryCast(sender, CommandBarStripElement)
    If dockedStrip IsNot Nothing Then
        MessageBox.Show(dockedStrip.Name & " has docked to " & dockedStrip.ElementTree.Control.Name)
    End If
End Sub

````

{{endregion}} 




---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: RadWaitingBar is designed to indicate that a long-running operation with indeterminate  length is undergoing.
slug: winforms/track-and-status-controls/waitingbar/getting-started
tags: getting,started
published: True
position: 3
previous_url: track-and-status-controls-waitingbar-getting-started
---

# Getting Started

* To add a __RadWaitingBar__ to your form, drag a __RadWaitingBar__ from the toolbox onto the surface of the form designer.

* To programmatically add a __RadWaitingBar__ to a form, create a new instance of a __RadWaitingBar__, and add it to the form __Controls__ collection.

#### Adding a RadWaitingBar at runtime

{{source=..\SamplesCS\TrackAndStatus\WaitingBar\WaitingGettingStarted.cs region=AddWaitingBar}} 
{{source=..\SamplesVB\TrackAndStatus\WaitingBar\WaitingGettingStarted.vb region=AddWaitingBar}} 

````C#
RadWaitingBar radWaitingBar = new RadWaitingBar();
radWaitingBar.WaitingStyle = Telerik.WinControls.Enumerations.WaitingBarStyles.Dash;
radWaitingBar.WaitingDirection = ProgressOrientation.Left;
this.Controls.Add(radWaitingBar);

````
````VB.NET
Dim radWaitingBar As New RadWaitingBar()
radWaitingBar.WaitingStyle = Telerik.WinControls.Enumerations.WaitingBarStyles.Dash
radWaitingBar.WaitingDirection = ProgressOrientation.Left
Me.Controls.Add(radWaitingBar)

````

{{endregion}} 


The following tutorial illustrates how to start and stop the animation of __RadWaitingBar__:


1\. Place a __RadWaitingBar__ control and a __RadButton__ control on a form.

2\. Select the __RadWaitingBar__ control.

3\. In the __Properties__ window set the __WaitingDirection__ property to *Bottom*.

4\. Resize the __RadWaitingBar__ so that its height is larger than its width.

5\. Select the __RadButton__ control.

6\. Set the __Text__ property to *Start*.

7\. In the __Properties__ window click the events button.

8\. Double-click the __Click__ event.

9\. Replace the automatically-generated event handler with this code:

#### RadButton's Click event handler

{{source=..\SamplesCS\TrackAndStatus\WaitingBar\WaitingGettingStarted.cs region=click}} 
{{source=..\SamplesVB\TrackAndStatus\WaitingBar\WaitingGettingStarted.vb region=click}} 

````C#
private void radButton1_Click(object sender, EventArgs e)
{
    if (radWaitingBar1.IsWaiting)
    {
        radWaitingBar1.StopWaiting();
        this.radButton1.Text = "Start";
    }
    else
    {
        radWaitingBar1.StartWaiting();
        this.radButton1.Text = "Stop";
    }
}

````
````VB.NET
Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
    If RadWaitingBar1.IsWaiting Then
        RadWaitingBar1.StopWaiting()
        Me.RadButton1.Text = "Start"
    Else
        RadWaitingBar1.StartWaiting()
        Me.RadButton1.Text = "Stop"
    End If
End Sub

````

{{endregion}} 

10\. Press __F5__ to run the project.

11\. Click the *Start* button to start and stop the animation.

![track-and-status-controls-waitingbar-getting-started 001](images/track-and-status-controls-waitingbar-getting-started001.gif)

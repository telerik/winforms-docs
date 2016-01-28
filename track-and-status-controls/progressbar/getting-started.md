---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: Getting Started
slug: winforms/track-and-status-controls/progressbar/getting-started
tags: getting,started
published: True
position: 1
previous_url: track-and-status-controls-progressbar-getting-started
---

# Getting Started

## 

In this tutorial, you will use a Telerik RadProgressBar to show the progress of a long-running operation. The long-running operation is simulated with a Timer control.

1\. Place a __RadProgressBar__ control, a __RadButton__ control, and a standard __Timer__ control on a form.

2\. Set the __Timer__ control __Interval__  property to __50__.

3\. In the __Properties__ window, click the events button.

4\. Double-click the __Tick__ event.

5\. Replace the automatically-generated event handler with this code:
          
#### Handling the Timer Tick event

{{source=..\SamplesCS\TrackAndStatus\ProgressBar\ProgressGettingStarted.cs region=tick}} 
{{source=..\SamplesVB\TrackAndStatus\ProgressBar\ProgressGettingStarted.vb region=tick}} 

````C#
int ticks = 0;
private void timer1_Tick(object sender, EventArgs e)
{
    ticks++;
    radProgressBar1.Value1 = ticks;
    if (ticks == 100)
    {
        timer1.Enabled = false;
        ticks = 0;
    }
}

````
````VB.NET
Private ticks As Integer = 0
Private Sub timer1_Tick(ByVal sender As Object, ByVal e As EventArgs)
    ticks += 1
    RadProgressBar1.Value1 = ticks
    If ticks = 100 Then
        Timer1.Enabled = False
        ticks = 0
    End If
End Sub

````

{{endregion}} 

6\. In the design view of the form, select the __RadButton__ control.

7\. In the __Properties__ window set the __Text__ property to "Go!".

8\. In the __Properties__ window, click the events button.

9\. Double-click the __Click__ event.

10\. Replace the automatically-generated event handler with this code:

{{source=..\SamplesCS\TrackAndStatus\ProgressBar\ProgressGettingStarted.cs region=click}} 
{{source=..\SamplesVB\TrackAndStatus\ProgressBar\ProgressGettingStarted.vb region=click}} 

````C#
void radButton1_Click(object sender, EventArgs e)
{
    timer1.Enabled = true;
}

````
````VB.NET
Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
    Timer1.Enabled = True
End Sub

````

{{endregion}} 

11\. In the design view of the form select the __RadProgressBar__ control.

12\. Set __Dash__ to __true__.

13\. Set __Text__ to an empty string.

14\. Set __SeparatorColor1__ to __Yellow__.

15\. Set __SeparatorColor2__ to __Gold__.

16\. Set __SeparatorWidth__ to __6__.

17\. Set __StepWidth__ to __12__.

18\. Set __SweepAngle__ to __210__.

19\. Press __F5__ to run the project.

20\. Click the __Go__ Button to see the Telerik RadProgressBar animation.

![track-and-status-controls-progressbar-getting-started 001](images/track-and-status-controls-progressbar-getting-started001.png)

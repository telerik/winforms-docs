---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: track-and-status-controls-progressbar-getting-started
tags: getting,started
published: True
position: 0
---

# Getting Started



## 

In this tutorial, you will use a Telerik RadProgressBar to show the progress
of a long-running operation. The long-running operation is simulated with a
Timer control.

1. Place a __RadProgressBar__ control, a
    __RadButton__ control, and a standard __Timer__
    control on a form.

1. Set the __Timer__ control __Interval__
    property to __50__.

1. In the __Properties__ window, click the events
    button.

1. Double-click the __Tick__ event.

1. Replace the automatically-generated event handler with this code:
          
            	

#### __[C#] Handling the Timer Tick event__

{{source=..\SamplesCS\TrackAndStatus\ProgressBar\ProgressGettingStarted.cs region=tick}}
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
	{{endregion}}



#### __[VB.NET] Handling the Timer Tick event__

{{source=..\SamplesVB\TrackAndStatus\ProgressBar\ProgressGettingStarted.vb region=tick}}
	    Private ticks As Integer = 0
	    Private Sub timer1_Tick(ByVal sender As Object, ByVal e As EventArgs)
	        ticks += 1
	        RadProgressBar1.Value1 = ticks
	        If ticks = 100 Then
	            Timer1.Enabled = False
	            ticks = 0
	        End If
	    End Sub
	    '#End Region
	End Class



1. In the design view of the form, select the __RadButton__
    control.

1. In the __Properties__ window set the __Text__
    property to "Go!".

1. In the __Properties__ window, click the events
    button.

1. Double-click the __Click__ event.

1. Replace the automatically-generated event handler with this code:
          
          
          

#### __[C#]__

{{source=..\SamplesCS\TrackAndStatus\ProgressBar\ProgressGettingStarted.cs region=click}}
	        void radButton1_Click(object sender, EventArgs e)
	        {
	            timer1.Enabled = true;
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TrackAndStatus\ProgressBar\ProgressGettingStarted.vb region=click}}
	    Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
	        Timer1.Enabled = True
	    End Sub
	    '#End Region
	
	    '#Region "tick"
	    Private ticks As Integer = 0
	    Private Sub timer1_Tick(ByVal sender As Object, ByVal e As EventArgs)
	        ticks += 1
	        RadProgressBar1.Value1 = ticks
	        If ticks = 100 Then
	            Timer1.Enabled = False
	            ticks = 0
	        End If
	    End Sub
	    '#End Region
	End Class



1. In the design view of the form select the
    __RadProgressBar__ control.

1. Set __Dash__ to __true__.

1. Set __Text__ to an empty string.

1. Set __SeparatorColor1__ to __Yellow__.

1. Set __SeparatorColor2__ to __Gold__.

1. Set __SeparatorWidth__ to __6__.

1. Set __StepWidth__ to __12__.

1. Set __SweepAngle__ to __210__.

1. Press __F5__ to run the project.

1. Click the __Go__ Button to see the Telerik RadProgressBar
    animation.
    ![track-and-status-controls-progressbar-getting-started 001](images/track-and-status-controls-progressbar-getting-started001.png)

---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: Getting Started
slug: winforms/track-and-status-controls/trackbar/getting-started
tags: getting,started
published: True
position: 0
---

# Getting Started



## 

This tutorial demonstrates connecting a RadTrackBar to a RadTextBox control. Setting the trackbar slider position changes the value in the text box.
        

1. Place a __RadTrackBar__, __RadTextBox__ and __RadLabel__ controls on a form.
            

1. Select the __RadLabel__ control and set its Text property to "*Current Value:*"
            

1. Select the __RadTextBox__ control and set its __Text__ property to an empty string.
            

1. Select the __RadTrackBar__ control and set the __Maximum__ property to __30__.
            

1. Click the __Events__ toolbar button in the Properties window.
            

1. Double-click the __ValueChanged__ event.
            

1. Replace the automatically-generated event handler with the following code:
            #_[C#]_

	



{{source=..\SamplesCS\TrackAndStatus\TrackBar\TrackGettingStarted.cs region=valueChanged}} 
{{source=..\SamplesVB\TrackAndStatus\TrackBar\TrackGettingStarted.vb region=valueChanged}} 

````C#
        void radTrackBar1_ValueChanged(object sender, EventArgs e)
        {
            this.radTextBox1.Text = radTrackBar1.Value.ToString();
        }
````
````VB.NET
    Private Sub radTrackBar1_ValueChanged(ByVal sender As Object, ByVal e As EventArgs)
        Me.radTextBox1.Text = radTrackBar1.Value.ToString()
    End Sub
    '
````

{{endregion}} 




1. Press __F5__ to run the project.
            

1. Move the slider on the trackbar using the mouse. The text box will update to show the new slider position.
            ![track-and-status-controls-trackbar-getting-started 001](images/track-and-status-controls-trackbar-getting-started001.png)

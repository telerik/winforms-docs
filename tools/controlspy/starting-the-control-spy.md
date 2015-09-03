---
title: Starting the Control Spy
page_title: Starting the Control Spy | UI for WinForms Documentation
description: Starting the Control Spy
slug: winforms/tools/controlspy/starting-the-control-spy
tags: starting,the,control,spy
published: True
position: 2
---

# Starting the Control Spy

To start the Control Spy, create and display a new instance of the __RadControlSpyForm__contained in the Control Spy library:

#### Using RadControlSpy

{{source=..\SamplesCS\Tools\Spy\UsingTheControlSpy.cs region=usingRadControlSpy}} 
{{source=..\SamplesVB\Tools\Spy\UsingTheControlSpy.vb region=usingRadControlSpy}} 

````C#
        private void radButton1_Click(object sender, EventArgs e)
        {
            RadControlSpyForm spyForm = new RadControlSpyForm();
            spyForm.Show();
        }
````
````VB.NET
    Private Sub RadButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RadButton1.Click
        Dim spyForm As New RadControlSpyForm()
        spyForm.Show()
    End Sub
    '
````

{{endregion}}

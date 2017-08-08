---
title: Adding the Control Spy to Your Application
page_title: Adding the Control Spy to Your Application | RadControlSpy
description: This article shows how one can create and show a RadControlSpyForm. 
slug: winforms/tools/controlspy/adding-the-control-spy-to-your-application
tags: adding,the,control,spy,to,your,application
published: True
position: 3
previous_url: tools-controlspy-adding-the-control-spy-to-your-application
---

# Adding the Control Spy to Your Application

| RELATED VIDEOS |  |
| ------ | ------:|
|[Introduction to RadControlSpyForm](http://www.telerik.com/videos/winforms/introduction-to-radcontrolspyform)|![tools-controlspy-overview 001](images/tools-controlspy-overview001.png)|

To add the Control Spy to your application, you must add a reference to the __RadControlSpy.dll__ library, which is installed by default at: *C:\Program Files\Telerik\UI for WinForms\Version\bin*

To start the ControlSpy, create and display a new instance of the __RadControlSpyForm__:

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

````

{{endregion}}


# See Also

* [Inspecting Properties]({%slug winforms/tools/controlspy/inspecting-properties%})

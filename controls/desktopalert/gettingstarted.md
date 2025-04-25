---
title: Getting Started
page_title: Getting Started - WinForms DesktopAlert Control
description: WinForms DesktopAlert component displays a small pop-up window on the screen to notify the user that a specific event has occurred in the application. 
slug: winforms/desktopalert/gettingstarted
tags: gettingstarted
published: True
position: 3
previous_url: desktopalert-getting-started
---

# Getting Started with WinForms DesktopAlert

This article shows how you can start using **RadDesktopAlert**.

| RELATED VIDEOS |  |
| ------ | ------ |
|[WinForms RadDesktopAlert Getting Started with RadDesktopAlert](http://tv.telerik.com/watch/winforms/getting-started-with-raddesktopalert)<br>In this video, you will learn how to get started with RadDesktopAlert.| ![WinForms RadDesktopAlert Getting Started](images/desktopalert-overview001.png)|

## Adding Telerik Assemblies Using NuGet

To use `RadDesktopAlert` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadDesktopAlert

Follow the described steps below:

1\. Create a new Windows Forms application in Visual Studio and open the designer of the default form.

2\. Open the Visual Studio’s Toolbox, find the __RadDesktopAlert__ component and add it to your form by using a drag-and-drop operation. The __RadDesktopAlert__ will appear in the component tray of the Form designer and will be available for customization via the Visual Studio’s property grid.

3\. Add a button to the form and create a handler for its __Click__ event. In the event handler write the following code:   
     	
#### Setting up RadDesktopAlert 

{{source=..\SamplesCS\DesktopAlert\DesktopAlert1.cs region=showingAlert}} 
{{source=..\SamplesVB\DesktopAlert\DesktopAlert1.vb region=showingAlert}} 

````C#
    
void radButton1_Click(object sender, EventArgs e)
{
    this.radDesktopAlert1.ContentImage = envelopeImage;
    this.radDesktopAlert1.CaptionText = "New E-mail Notification";
    this.radDesktopAlert1.ContentText = "Hello Jack, I am writing to inform you " +
                                        "that the planning meeting scheduled for Wednesday has been postponed and" +
                                        "it will eventually be rescheduled, possibly for the next Tuesday";
    this.radDesktopAlert1.Show();
}

````
````VB.NET
Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
    Me.radDesktopAlert1.ContentImage = envelopeImage
    Me.radDesktopAlert1.CaptionText = "New E-mail Notification"
    Me.radDesktopAlert1.ContentText = "Hello Jack, I am writing to inform you " & "that the planning meeting scheduled for Wednesday has been postponed and" & "it will eventually be rescheduled, possibly for the next Tuesday"
    Me.radDesktopAlert1.Show()
End Sub

````

{{endregion}} 

 
This way you will display an alert window at the bottom right part of the screen just the same way Microsoft Outlook does.

>note You can also set caption text, content text etc. by using the Property Grid in the Visual Studio designer.
>
	
By default, the desktop alert will remain visible for 10 seconds. The __AutoClose__ property determines whether __RadDesktopAlert__ will disappear after the period of time defined by the __AutoCloseDelay__ property.

The __RadDesktopAlert__ is initially shown with opacity set to *80%* whereas it is changed to *100%& when the mouse enters its bounds. The alert can also be moved over the screen by using the grip at its upper part as shown on the picture below. At the upper right part of the desktop alert there are three buttons which allow for closing it, pinning it to the screen and displaying a list of options. You can also add custom buttons to the alert by using the __ButtonItems__ collection.

![WinForms RadDesktopAlert Custom Elements](images/desktopalert-overview002.png)

To understand how to fully utilize the __RadDesktopAlert__, take a look at the [Properties, Methods, Events]({%slug winforms/desktopalert/properties,methods,events%}) help article.
		



## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Desktopalert Component](https://www.telerik.com/products/winforms/desktopalert.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)


---
title: Getting Started
page_title: Getting Started - WinForms Clock Control
description: WinForms Clock is a control which allows the developers to use it in their applications to display time to the users.
slug: winforms/clock/getting-started
tags: getting,started
published: True
position: 3
previous_url: clock-getting-started
---

# Getting Started with WinForms Clock

This article shows how you can start using **RadClock**.

## Adding Telerik Assemblies Using NuGet

To use `RadClock` when working with NuGet packages, install the `Telerik.UI.for.WinForms.AllControls` package. The [package target framework version may vary]({%slug winforms-available-nugets%}).

Read more about NuGet installation in the [Install using NuGet Packages]({%slug winforms/nuget%}) article.

>tip With the 2025 Q1 release, the Telerik UI for WinForms has a new licensing mechanism. You can learn more about it [here]({%slug license-key%}).

## Adding Assembly References Manually

When dragging and dropping a control from the Visual Studio (VS) Toolbox onto the Form Designer, VS automatically adds the necessary assemblies. However, if you're adding the control programmatically, you'll need to manually reference the following assemblies:

* __Telerik.Licensing.Runtime__
* __Telerik.WinControls__
* __Telerik.WinControls.UI__
* __TelerikCommon__

The Telerik UI for WinForms assemblies can be install by using one of the available [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). 

## Defining the RadClock

* To add a __RadClock__ to your form, drag a __RadClock__ from the toolbox onto the surface of the form designer.

* To programmatically add a __RadClock__ to a form, create a new instance of a __RadClock__, and add it to the form __Controls__ collection.

#### Adding a RadClock at runtime 

{{source=..\SamplesCS\Clock\ClockGettingStarted.cs region=CreatingControl}} 
{{source=..\SamplesVB\Clock\ClockGettingStarted.vb region=CreatingControl}} 

````C#
RadClock clock = new RadClock();
this.Controls.Add(clock);

````
````VB.NET
Dim clock As New RadClock()
Me.Controls.Add(clock)

````

{{endregion}} 


The control has three important properties:

* __Value__: Used to get or set the value of the control
            

* __ShowSystemTime__: Indicated whether the control will display the system time
            

* __Offset__: Allows you to set time offset - useful to display different time zones
            

Now let's create a simple application. 
1\. Add four __RadClocks__ to your __RadForm__ and on the top of each, place a label. 
2\. Set the labels text to - *Sofia*, *London*, *New York* and *Tokyo*. 
3\. In the code behind, set the __ShowSystemTime__ property of the first clock (assuming that your system time show the time in Sofia). 
4\. For the rest of the clocks, set their __Offset__ properties to: *-2*, *-6*, *+7*:
        
{{source=..\SamplesCS\Clock\ClockGettingStarted.cs region=gettingStarted}} 
{{source=..\SamplesVB\Clock\ClockGettingStarted.vb region=gettingStarted}} 

````C#
sofiaClock.ShowSystemTime = true;
londonClock.Offset = new TimeSpan(-2, 0, 0);
newYorkClock.Offset = new TimeSpan(-6, 0, 0);
tokyoClock.Offset = new TimeSpan(7, 0, 0);

````
````VB.NET
sofiaClock.ShowSystemTime = True
londonClock.Offset = New TimeSpan(-2, 0, 0)
newYorkClock.Offset = New TimeSpan(7, 0, 0)
tokyoClock.Offset = New TimeSpan(-6, 0, 0)

````

{{endregion}} 


Here is the result:

![WinForms RadClock Getting Started Example](images/clock-getting-started001.png)


| RELATED VIDEOS |  |
| ------ | ------ |
|[WinForms RadClock Getting Started with RadTimePicker and RadClock for WinForms](http://tv.telerik.com/watch/winforms/getting-started-with-radtimepicker-for-winforms)<br>In this video, we are going to demonstrate the new RadTimePicker and RadClock controls as well as several properties you should be aware of.|![WinForms RadClock clock-getting-started 002](images/clock-getting-started002.png)|

## See Also

* [Properties]({%slug winforms/clock/properties%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms Clock Component](https://www.telerik.com/products/winforms/clock.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)


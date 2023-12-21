---
title: Getting Started
page_title: Getting Started 
description: Check our &quot;Getting Started&quot; documentation article for the RadBusyIndicator {{ site.framework_name }} control.
slug: flyout-getting-started
tags: flyout,show,close
published: True
position: 1
CTAControlName: Flyout
---

# Getting Started with WinForms Flyout Screen

This tutorial will walk you through how you can use __Flyout Screen__. 

The Flyout screen can be activated through the __RadFlyoutManager.Show()__ method. This method accepts two parameters. The first one is the control which the flyout will appear on top of it. The second parameter is the type of user control that will be used as content. The flyout screen can be used as a notification pop-up to notify for long-running operations. The second option is to be used in scenarios where additional information is required from the end user to continue using the application. In both cases, we can close the flyout screen by calling the __RadFlyoutManager.Close()__ static method. 

## Show Flyout

{{source=..\SamplesCS\SplashScreens\Flyout\FlyoutSettings.cs region=GettingStarted_Show}} 
{{source=..\SamplesVB\SplashScreens\Flyout\FlyoutSettings.vb region=GettingStarted_Show}} 

````C#

RadFlyoutManager.Show(this.radGridView1,typeof(MyUserControl));
	

````
````VB.NET

RadFlyoutManager.Show(Me.radGridView1, GetType(UserControl1))


````

{{endregion}}

## Close Flyout

{{source=..\SamplesCS\SplashScreens\Flyout\FlyoutSettings.cs region=GettingStarted_Close}} 
{{source=..\SamplesVB\SplashScreens\Flyout\FlyoutSettings.vb region=GettingStarted_Close}} 

````C#

RadFlyoutManager.Close();
	

````
````VB.NET

RadFlyoutManager.Close()


````

{{endregion}}

 
        

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms flyout Component](https://www.telerik.com/products/winforms/flyout.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)


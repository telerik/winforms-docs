---
title: DPI Support
page_title: DPI Support - Telerik Presentation Framework
description: Support for high resolution DPI monitors is now a built-in part of UI for WinForms.
slug: winforms/telerik-presentation-framework/dpi-support
tags: dpi,support
published: True
position: 12 
---

# DPI Support

**Telerik UI for WinForms** suite gives your Windows Forms applications a new power today - built-in support for high resolution DPI monitors.

In **R2 2017** we introduced built-in high DPI support in the Telerik UI for WinForms suite. This coincides with the HDPI improvements [Microsoft is bringing with .NET 4.7](https://blogs.msdn.microsoft.com/dotnet/2017/04/05/announcing-the-net-framework-4-7/) and the *Windows 10 Creators Update*. The best part is that Microsoft constantly improves the DPI support and provides HDPI improvements when announcing updates in the different frameworks. When using Telerik UI for WinForms, our clients can develop applications with automatic scaling for high DPI accross various .NET versions (starting with .NET Framework 4.6.2 and up to the latest .NET). 

### DPI awareness

To configure your application as DPI aware you need to mark it as such so the OS would know how to handle it. Desktop applications must tell Windows if they support DPI scaling. Furthermore, you can have DPI awareness per process or per thread. When an application is declared as DPI-aware, all RadControls will scale automatically their UI elements in accordance to the current DPI settings. Doing so, your desktop application can handle display scale factor (dots per inch, or DPI) changes dynamically, making the application looks crisp and clear on any display it is rendered on. The following blog post about [High DPI in WinForms](https://www.telerik.com/blogs/winforms-scaling-at-large-dpi-settings-is-it-even-possible-) provides in-depth knowledge about the DPI concept.

Although it is a bit tricky to demonstrate HDPI support with a single image, here is an example with screen shots of the same application on two different monitors. You can notice that the first image becomes blurry on 200% scalling, while the second one remains crisp and looks modern.

|Resolution: 3840 x 2160 - Scaling: 200%|
|----|
|![dpi-support 001](images/dpi-support001.png)|
|![dpi-support 002](images/dpi-support002.png)|

>important To produce as good layout as possible when running your desktop application on monitors with different DPI scaling, it is important to have some thoughts in mind before you start designing the application. Please check [HDPI Tips and Tricks]({%slug hdpi-tips-and-tricks%}).

There are four different [DPI awareness modes in Windows](https://learn.microsoft.com/en-us/windows/win32/hidpi/high-dpi-desktop-application-development-on-windows#dpi-awareness-mode).

* **Unaware** – DPI unaware applications render at a fixed DPI value of 96 (100%). Whenever these applications are run on a screen with a display scale greater than 96 DPI, Windows will stretch the application bitmap to the expected physical size. This results in the application appearing blurry.
* **System** – Introduced in Windows Vista. The OS treats all displays with same DPI of the primary display. Bitmap stretching is used. System DPI-aware desktop applications only render crisply at a single display scale factor, becoming blurry whenever the DPI changes.
* **Per-Monitor** – Introduced in Windows 8.1. Every display has its own DPI and the application window is notified of DPI change.
* **Per-Monitor V2** – Introduced with Windows 10 Creators Update (1703). On top of the previous mode there is automatic scaling of the non-client area and certain controls and dialogs.

## How to Enable high DPI Support in Your Application

There are two main approaches to configure your application DPI-aware: using an **app.manifest** file and/or an **app.config** file with several lines of code. More detailed technical topics you can find in our blog post on the [High DPI in WinForms](http://www.telerik.com/blogs/winforms-scaling-at-large-dpi-settings-is-it-even-possible-).

### Application Manifest File

The most common way to declare an application as DPI aware is through the application manifest file. There are two settings that you can use - **&lt;dpiAware&gt;** and **&lt;dpiAwareness&gt;**. Here is a small table that describes the different states that you can use with each setting:

<table>
<th></th><th>Minimum Supported OS</th><th>States</th><th>DPI Mode</th>
<tr><td><b>&lt;dpiAware&gt;</b></td><td>Windows Vista</td><td><table><tr><td>false</td></tr><tr><td>true</td></tr><tr><td>true/pm</td></tr></table></td><td><table><tr><td>Unaware</td></tr><tr><td>System aware</td></tr><tr><td>Per-monitor aware</td></tr></table></td></tr>
<tr><td><b>&lt;dpiAwareness&gt;</b></td><td>Windows 10, version 1607</td><td><table><tr><td>unaware</td></tr><tr><td>system</td></tr><tr><td>PerMonitor</td></tr><tr><td>PerMonitorV2</td></tr></table></td><td><table><tr><td>Unaware</td></tr><tr><td>System aware</td></tr><tr><td>Per-monitor aware</td></tr><tr><td>Per-monitor-v2 aware</td></tr></table></td></tr>
<tr></tr>
</table>

You can use both settings in the manifest file. If so, Windows 10, version 1607, will ignore <b>&lt;dpiAware&gt;</b> and use only the newer <b>&lt;dpiAwareness&gt;</b>. Older versions will ignore <b>&lt;dpiAwareness&gt;</b>. Here is how the manifest should look if you want to configure DPI awareness for different Windows versions.

````XML

<?xml version="1.0" encoding="utf-8"?>
<asmv1:assembly manifestVersion="1.0" xmlns="urn:schemas-microsoft-com:asm.v1"
                xmlns:asmv1="urn:schemas-microsoft-com:asm.v1"
                xmlns:asmv2="urn:schemas-microsoft-com:asm.v2"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:asmv3="urn:schemas-microsoft-com:asm.v3" >
  <assemblyIdentity version="1.0.0.0" name="MyApplication.app"/>

  <asmv3:application>
    <asmv3:windowsSettings xmlns="http://schemas.microsoft.com/SMI/2005/WindowsSettings">
      <dpiAware xmlns="http://schemas.microsoft.com/SMI/2005/WindowsSettings">true/PM</dpiAware>
      <dpiAwareness xmlns="http://schemas.microsoft.com/SMI/2016/WindowsSettings">PerMonitorV2</dpiAwareness>
    </asmv3:windowsSettings>
  </asmv3:application>

  <compatibility xmlns="urn:schemas-microsoft-com:compatibility.v1">
    <application>
      <!-- A list of all Windows versions that this application is designed to work with. 
      Windows will automatically select the most compatible environment.-->
      <!-- Windows 10 -->
      <supportedOS Id="{8e0f7a12-bfb3-4fe8-b9a5-48fd50a15a9a}"/>
      <!-- Windows 8.1 -->
      <supportedOS Id="{1f676c76-80e1-4239-95bb-83d0f6d0da78}"/>
      <!-- Windows Vista -->
      <supportedOS Id="{e2011457-1546-43c5-a5fe-008deee3d3f0}"/>
      <!-- Windows 7 -->
      <supportedOS Id="{35138b9a-5d96-4fbd-8e2d-a2440225f93a}"/>
      <!-- Windows 8 -->
      <supportedOS Id="{4a2f28e3-53b9-4441-ba9c-d69d4a4a6e38}"/>

    </application>
  </compatibility>
</asmv1:assembly>

````

>important Applications not manifested for Windows 8.1 or Windows 10 will return the Windows 8 OS version value (6.2). It is mandatory to manifest your applications for Windows 8.1 or Windows 10. Please refer to [Targeting your application for Windows](https://msdn.microsoft.com/bg-bg/library/windows/desktop/dn481241.aspx).

>caution Note that declaring DPI awareness in the app.manifest file breaks ClickOnce applications. The following KB article demonstrates how to deal with this problem: [ClickOnce Application is Broken]({%slug clickonce-application-is-broken%}).


### App.Config File

Another way that was introduced for Windows Forms in .NET Framework 4.7 is using the  the **app.config** file. Microsoft added a new element to add different features to a Windows Forms app called [<System.Windows.Forms.ApplicationConfigurationSection>](https://learn.microsoft.com/en-us/dotnet/framework/configure-apps/file-schema/winforms/). In order to use it you need to do the following:

* Declare compatibility with Windows 10 in the **app.manifest** file:

````XML

 <compatibility xmlns="urn:schemas-microsoft-com:compatibility.v1">
  <application>
    <!-- Windows 10 compatibility -->
    <supportedOS Id="{8e0f7a12-bfb3-4fe8-b9a5-48fd50a15a9a}" />
  </application>
</compatibility>

````

* Enable DPI awareness in the **app.config** file:

````XML

<System.Windows.Forms.ApplicationConfigurationSection>
  <add key="DpiAwareness" value="PerMonitorV2" />
</System.Windows.Forms.ApplicationConfigurationSection>  

````

>caution In previous versions of the .NET Framework prior to 4.7, you used the manifest to add high DPI support. This approach is no longer recommended, since it overrides settings defined on the app.config file.

* Call the static method in your application’s entry point: [Application.EnableVisualStyles();](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.application.enablevisualstyles?view=netcore-3.1)

This should be the first method call in your application entry point. For example:

````C#
static void Main()
{
    Application.EnableVisualStyles();
    Application.SetCompatibleTextRenderingDefault(false);
    Application.Run(new Form2());
}

````

With the <System.Windows.Forms.ApplicationConfigurationSection> element you can set other DPI features as well. For more information you can check [this article](https://docs.microsoft.com/en-us/dotnet/framework/configure-apps/file-schema/winforms/windows-forms-add-configuration-element).

### Native API 

Even though it is not a common approach, there are several native API calls that can set awareness. Additional information is available in [this](https://www.telerik.com/blogs/winforms-scaling-at-large-dpi-settings-is-it-even-possible-#dpiAwareness) blog post.

## High DPI support in an Application targeting .NET

With .NET Core 3.0 Microsoft introduced a new way to set a high DPI mode for Windows Forms. A static method called [Application.SetHighDpiMode(HighDpiMode)](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.application.sethighdpimode), where [HighDpiMode](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.highdpimode) is enum with the following values:

* **DpiUnaware** - The application window does not scale for DPI changes and always assumes a scale factor of 100%.
* **SystemAware** - The window queries for the DPI of the primary monitor once and uses this for the application on all monitors.
* **PerMonitor** - The window checks for DPI when it's created and adjusts scale factor when the DPI changes.
* **PerMonitorV2** - Similar to PerMonitor, but enables child window DPI change notification, improved scaling of comctl32 controls, and dialog scaling.
* **DpiUnawareGdiScaled** - 	Similar to DpiUnaware, but improves the quality of GDI/GDI+ based content.

The call must be done at the application entry point. If you have used a manifest file to set the DPI awareness mode, this method call will fail.

## Common HDPI Scale Properties and Improvements in RadControl

In addition of the dpi support, here are listed several properties of RadControl that can be set manually:

* __EnableDpiScaling__ property allows you to enable/disable dpi scaliing on a global level. This is a static property of __RadControl__ and must set before any controls are initialized. For example in the form's constructor. Available as of R3 2017.

* **EnableImageDpiScaling** property indicating whether the RadControls scaling logic will be used to resize the images when the application is run in a high DPI environment. This is a static property of __RadControl__ and must set before any controls are initialized. For example in the form's constructor. Available as of R2 2020 SP1.

With the **R2 2022** we have added some improvements to how our controls are scaled in their parent Forms/RadForms. The introduced improvements are listed below. These new functionalities are controlled by the static __RadControl.EnableRadAutoScale__ property. In a case, you want to disable these improvements you can set it false.

* RadControl is dynamically scaled now when it is added runtime.
* RadControl is scaled correctly in a __System.Windows.Forms.Form__.
* RadControl is scaled correctly in an UserControl.
* Scaling works in all .NET versions and DPI Awareness modes combinations except in .Net4 Framework. In this version, the scaling will not work in Microsoft Form.
* Fixed various DPI-related scaling issues. 

# See Also 
* [WinForms Scaling at Large DPI Settings–Is It Even Possible?](http://www.telerik.com/blogs/winforms-scaling-at-large-dpi-settings-is-it-even-possible-)
* [HDPI Tips and Tricks]({%slug hdpi-tips-and-tricks%})
* [App becomes DPI-aware at runtime]({%slug app-becomes-dpi-aware%})
* [How to Deal with WFAC010 Warning - Remove high DPI settings from app.manifest file and configure via Application.SetHighDpiMode API or project property]({%slug wfac010-warning-remove-high-dpi-settings%})

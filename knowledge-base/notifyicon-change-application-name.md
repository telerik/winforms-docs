---
title: Defining the Application Name for Balloon Notifications in RadNotifyIcon for WinForms
description: Learn how to define the application name that appears in balloon notifications using RadNotifyIcon for WinForms.
type: how-to
page_title: How to Define Application Name for Balloon Notifications in RadNotifyIcon for WinForms
slug: define-application-name-for-balloon-notifications-radnotifyicon-winforms
tags: radnotifyicon, winforms, balloon notifications, application name, customize, assemblyinfo
res_type: kb
---

## Environment

| Property | Value |
| --- | --- |
| Product | RadNotifyIcon for WinForms |

## Description

I want to define the application name that appears in balloon notifications when using RadNotifyIcon for WinForms. Currently, the name of the interpreter is displayed instead of our branded application name. We are using NotifyIcon because it is difficult or impossible to modify the standard MS notifications.

## Solution

To define the application name for balloon notifications in RadNotifyIcon for WinForms, you can modify the `AssemblyTitle` attribute in the `AssemblyInfo.cs` file of your project. Follow these steps:

1. In your project, expand the Properties item.
2. Open the `AssemblyInfo.cs` file.
3. Locate the `AssemblyTitle` attribute.
4. Modify the value of the `AssemblyTitle` attribute to your desired application name.
5. Save the file and rebuild your project.

After making this change, the balloon notification will display the specified application name instead of the interpreter name.

I hope this solution helps you achieve your goal of customizing the application name in balloon notifications.

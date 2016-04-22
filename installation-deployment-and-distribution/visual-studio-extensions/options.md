---
title: Options
page_title: Options
description: Options
slug: winforms/installation-deployment-and-distribution/visual-studio-extensions/options
tags: options
published: True
position: 7
previous_url: installation-deployment-and-distribution-vsx-options-dialog
---

# Options

## 

The __Visual Studio Extensions__ options dialog provides settings, so you can configure the Telerik Visual Studio Extensions to best suit your needs.

It can be accessed through the __Visual Studio | Telerik | VSExtensions Options…__

![installation-deployment-and-distribution-vsx-options-dialog 001](images/installation-deployment-and-distribution-vsx-options-dialog001.png)

The __Options__ dialog contains two sets of options that affect the __Telerik UI for WinForms__ Visual Studio Extensions.
 
![installation-deployment-and-distribution-vsx-options-dialog 002](images/installation-deployment-and-distribution-vsx-options-dialog002.png)

The settings under the __General__ category affect all of the installed __Telerik Visual Studio Extensions__.

## Project setup

__Add referenced assemblies to solution and source control__ - When enabled, the referenced assemblies will be copied to the solution when using Telerik wizards

## Project Upgrade Notifications for Detected Local Distributions

__Suggest project upgrades for Telerik product version available on my computer__  – When enabled, you will be prompted to upgrade upon opening a project, which is not using the latest version of Telerik UI for WinForms installed on your system
        
__Suggest upgrades when an equal Dev release detected on projects using a Trial__ – When enabled, you will be prompted to upgrade if a licensed version of Telerik UI for WinForms is available on your system, but the current project uses a trial version

## Other Notifications

__Notify me when a Telerik subscription I have is about to expire__ – When enabled, you will receive reminders if any of your subscriptions expire within the next month.

> You can benefit subscription reminders only if you have saved your credentials in the [Latest Version Acquirer tool.]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/automatic-latest-version-acquirer%})
>

![installation-deployment-and-distribution-vsx-options-dialog 003](images/installation-deployment-and-distribution-vsx-options-dialog003.png)

All settings under the WinForms category affect only the Telerik UI for WinForms Visual Studio Extensions.

## Select a folder for downloads

Configures the path where the extensions look for and store distributions.

> Changing the folder path will not move existing folder contents from your previous path. Please, move your previous folder contents manually in case you still want to use them.

## Latest version retrieval

__Include internal builds in Latest Version update and retrieval__ – When enabled, the __[Latest Version Acquirer]({%slug radcontrols-vs-extensions-project-latest-version-acquirer%})__ tool will retrieve internal builds as well as official releases when checking for a new version.

## Notifications

__Show me a message when a newer version is available on__ [www.telerik.com](http://www.telerik.com). When enabled, you will receive notifications if a new version of __Telerik UI for WinForms__ is available on the Telerik website.
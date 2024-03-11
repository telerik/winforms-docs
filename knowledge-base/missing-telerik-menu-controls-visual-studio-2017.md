---
title: Resolving Missing Telerik Menu and Controls in Visual Studio 2017
description: This article provides step-by-step instructions for resolving the issue of missing Telerik menu and controls in Visual Studio 2017 after a recent update.
type: troubleshooting
page_title: Missing Telerik Menu and Controls in Visual Studio 2017
slug: missing-telerik-menu-controls-visual-studio-2017
tags: telerik, visual-studio, winforms, menu, controls
res_type: kb
---
# Environment
| Version | Product | Author | 
| --- | --- | ---- | 
| 2024.1.130| Installer and VS Extensions for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)| 

## Description
The issue is that the respective extensions for Telerik UI for WinForms are missing from Visual Studio 2017 after upgrading to 2024 Q1. 

## Solution
The issue is caused by how the upgrade mechanism works when using the Progress Control Panel. It first schedules the uninstall of the old product version and then installs the new one. When the old version was removed, its features were removed too, including the Visual Studio 2017 extension. When the new version was installed it didn't have any extensions for Visual Studio 2017. Therefore the menu entry, the project items and the toolbox items were missing. 
We are currently in the process of modernizing our product line which includes stopping support for old frameworks and Visual Studio versions. More on that is available here: [Product Update for Enhanced Performance and Security](https://www.telerik.com/blogs/embracing-future-product-update-enhanced-performance-and-security). So if you can migrate to Visual Studio 2022 in future I believe it will make the upgrade process more straightforward.

To resolve the issue of missing Telerik menu and controls in Visual Studio 2017, follow these steps:

1. Close Visual Studio.
2. Uninstall all Telerik components and apps from your machine.
3. Reboot your machine.
4. Open Visual Studio and go to **Tools** > **Extensions**.
5. Select **Online** and search for **Telerik UI for WinForms**.
6. Download and install the extension.
7. Restart Visual Studio.

After following these steps, the Telerik menu should reappear in Visual Studio, and the Telerik controls should be visible in the Toolbox.


---
title: Resolving Visual Studio 2022 Crash with Telerik Extensions
description: A guide on fixing crashes in Visual Studio 2022 caused by Telerik extensions by ensuring they are updated to the latest version.
type: troubleshooting
page_title: How to Fix Visual Studio 2022 Crashes Caused by Outdated Telerik Extensions
slug: resolve-visual-studio-2022-crash-telerik-extensions
tags: common, visual studio, crash, extensions, update, installer, vs extensions, winforms, wpf, mvc, asp.net ajax
res_type: kb
ticketid: 1664112
---

## Environment

| Product | Installer and VS Extensions for ASP.NET AJAX | 
| --- | --- |
| Version | 2024.3.805 |

## Description

While developing in Visual Studio 2022, crashes may occur. This issue has been identified as being caused by outdated Telerik extensions.

## Cause

The crashes are due to a problem in the Telerik extensions for Visual Studio. This issue has been resolved in version 2024.3.808.150.

## Solution

Ensure all Telerik extensions in Visual Studio are updated to version 2024.3.808.150 or later. Here's how:

- Open Visual Studio.
- Navigate to the Extensions menu, then select Manage Extensions...
- Search for Telerik extensions and check their versions.
- Update any extensions that are not at least version 2024.3.808.150.

For the Progress Telerik WinForms Converter:

- This converter is not available in the Visual Studio Marketplace and must be updated via the Telerik UI for WinForms installer, either through the MSI or Progress Control Panel.
- If the converter is not up-to-date, update the product using the appropriate installer or reach out to Telerik support for assistance.

## Notes

- The Telerik extensions are generally auto-updated in Visual Studio by default. However, auto-update is an option that can be disabled.
- The Progress Telerik WinForms Converter is only available through the Telerik UI for WinForms installer and cannot be automatically updated in Visual Studio.

## See Also

- [Visual Studio Marketplace](https://marketplace.visualstudio.com/search?term=telerik&target=VS&category=All%20categories&vsVersion=&sortBy=Relevance) for downloading the latest Telerik extensions.
- [Telerik UI for WinForms](https://docs.telerik.com/devtools/winforms/overview) documentation for more information on the WinForms Converter and installer.

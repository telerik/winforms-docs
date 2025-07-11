---
title: How to Upgrade Telerik UI for WinForms Project
page_title: How to Upgrade Telerik UI for WinForms Project
description: Learn how to use a specific version of the Telerik UI for WinForms suite in your project.
slug: winforms/installation-deployment-and-distribution/upgrade-project
tags: upgrade, update,Telerik, project, assemblies, NuGet, packages
published: True
position: 4 
---

# How to Upgrade Telerik UI for WinForms Project

This article explains how to upgrade your Telerik UI for WinForms project to a newer version. You may upgrade your project using one of the following methods:

- [Upgrade using NuGet Package Manager](#upgrade-via-nuget-package-manager)
- [Upgrade using Telerik Visual Studio Extensions](#upgrade-via-telerik-visual-studio-extensions)
- [Manual Assembly Upgrade](#manual-assembly-upgrade)
- [Upgrade using Progress Control Panel](#upgrade-using-progress-control-panel)

## Upgrade via NuGet Package Manager

Upgrading by using NuGet packages is the recommended approach as this method ensures you always have the latest version and simplifies dependency management.

If you are using NuGet packages, upgrade as follows:

1. Open your project in Visual Studio.
1. Right-click the project in Solution Explorer and select **Manage NuGet Packages** from the menu.
1. Go to the **Updates** tab.
1. Find the **Telerik.UI.for.WinForms.AllControls** package.
1. Click **Update** to install the latest version, or select a specific version from the dropdown.
1. Wait for the update to complete, then rebuild your project.

> **Tip:** This is the recommended approach if you are using NuGet packages, as all references are updated automatically.

## Upgrade via Telerik Visual Studio Extensions

You can easily upgrade your Telerik UI for WinForms project using the [Visual Studio Extensions for Telerik UI for WinForms]({%slug winforms-installation-deployment-and-distribution-visual-studio-extensions%}). The Telerik extensions provide a user-friendly interface for managing Telerik references and resources directly within Visual Studio. Make sure you have the latest version of the Telerik Extensions installed for a better user experience.

To upgrade using Telerik Visual Studio Extensions:

1. Open your project in Visual Studio.
1. Go to the **Extensions > Telerik > Telerik UI for WinForms > Upgrade Project Wizard**.
1. Follow the prompts in the Upgrade Project Wizard to select the desired Telerik UI for WinForms version and complete the upgrade process.
1. The extension will automatically update the references and resources in your project.
1. Rebuild your project to ensure everything is up to date.

> **Tip** For more information check [Telerik VS Extensions > Upgrade Project]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/upgrade-project%})

## Manual Assembly Upgrade

If you are using local assemblies or have just installed Telerik UI for WinForms using the MSI installer, you should manually update your Telerik assemblies in the project. Follow the steps below to do so:

1. Navigate to the folder containing all the latest Telerik assemblies for the desired version. If using msi installer, it usually creates a folder at `C:\Program Files (x86)\Progress\Telerik UI for WinForms 2025 Q2`.
1. Remove old Telerik assemblies from your project references. In Visual Studio, open your project and expand the References section in Solution Explorer. Select and delete the existing Telerik assemblies.
1. Right-click on References and select *Add Reference...*. Navigate to the folder of your fresh installation and select the required Telerik assemblies.
1. Clean, then rebuild your project to ensure it uses the new version.

> **Tip** For more information, please check [Updating Assemblies in a Project]({%slug winforms/installation-deployment-and-distribution/updating-assemblies-in-a-project%})

## Upgrade using Progress Control Panel

For the most up-to-date and detailed instructions on upgrading Telerik products using the [Progress Control Panel](https://docs.telerik.com/controlpanel/introduction), refer to the official documentation: [How to Update a Product with Progress Control Panel](https://docs.telerik.com/controlpanel/how-to/how-to-update-product)

## Troubleshooting

If you encounter issues while upgrading your Telerik UI for WinForms project, consider the following tips:

- **Manual Assembly Conflicts:** If you manually update assemblies check [Versions Upgrade]({%slug versions-upgrade%})
- **Check Documentation:** Refer to the official [Telerik documentation]({%slug winforms/overview%})
- **Contact Telerik Support:** If problems persist, contact Telerik support for further assistance.

## See Also

- [Download Product Files]({%slug winforms/installation-deployment-and-distribution/download-product-files%})
- [How to Upgrade a Telerik UI for WinForms Project]({%slug how-to-upgrade-a-project%})

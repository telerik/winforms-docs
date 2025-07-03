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

This article explains how to upgrade your Telerik UI for WinForms project to a newer version. You can upgrade using one of the following methods:

- [NuGet Package Manager](#upgrade-via-nuget-package-manager)
- [Manual Assembly Update](#manual-assembly-update)
- [Telerik Visual Studio Extensions](#update-via-telerik-visual-studio-extensions)
- [Updating with Progress Control Panel](#updating-with-progress-control-panel)


## Upgrade via NuGet Package Manager

Upgrading by using NuGet packages is the recommended approach as this method ensures you always have the latest version and simplifies dependency management.

If you are using NuGet packages, upgrade as follows:

1. Open your project in Visual Studio.
2. Right-click the project in Solution Explorer and select **Manage NuGet Packages** from the menu.
3. Go to the **Updates** tab.
4. Find the **Telerik.UI.for.WinForms.AllControls** package.
5. Click **Update** to install the latest version, or select a specific version from the dropdown.
6. Wait for the update to complete, then rebuild your project.

> **Tip:** This is the recommended approach if you are using NuGet packages, as all references are updated automatically.


## Manual Assembly Update

If you are using local assemblies, follow these steps to update them:

1. **Download the Latest Assemblies**  
   Download the .zip file containing all binaries for the desired version from your Telerik account.
2. **Unzip the Archive**  
   Extract the downloaded archive to a folder on your computer.
3. **Remove Old References**  
   In Visual Studio, open your project and expand the **References** section in Solution Explorer. Select and delete the existing Telerik assemblies.
4. **Add New References**  
   Right-click on **References** and select **Add Reference...**. Navigate to the unzipped folder and select the required Telerik assemblies.
5. **Build and Run**  
   Build and run your project to ensure it uses the new version.

> **Tip** For more information check [Updating Assemblies in a Project]({%slug winforms/installation-deployment-and-distribution/updating-assemblies-in-a-project%})

## Update via Telerik Visual Studio Extensions

You can easily upgrade your Telerik UI for WinForms project using the **Telerik Visual Studio Extensions**. This method provides a user-friendly interface for managing Telerik references and resources directly within Visual Studio. Make sure you have the latest version of the Telerik Extensions installed for the best experience.

To upgrade using Telerik Visual Studio Extensions:

1. Open your project in Visual Studio.
2. Go to the **Extensions** tab and select **Telerik** > **Telerik UI for WinForms** > **Upgrade Project Wizard**.
3. Follow the prompts in the Upgrade Project Wizard to select the desired Telerik UI for WinForms version and complete the upgrade process.
4. The extension will automatically update the references and resources in your project.
5. Rebuild your project to ensure everything is up to date.

> **Tip** For more information check [Upgrade Project Wizard]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/upgrade-project%})

## Updating with Progress Control Panel

For the most up-to-date and detailed instructions on upgrading Telerik products using the Progress Control Panel, refer to the official documentation below:

- [How to Update a Product with Progress Control Panel](https://docs.telerik.com/controlpanel/how-to/how-to-update-product)

## Troubleshooting

If you encounter issues while upgrading Telerik UI for WinForms, consider the following tips:

- **Manual Assembly Conflicts:** If you manually update assemblies check [Versions Upgrade]({%slug versions-upgrade%})
- **Check Documentation:** Refer to the official [Telerik documentation](https://docs.telerik.com/devtools/winforms/installation-and-deployment/updating-assemblies-in-a-project) and [Progress Control Panel guide](https://docs.telerik.com/controlpanel/how-to/how-to-update-product) for more help.
- **Contact Telerik Support:** If problems persist, contact Telerik support for further assistance.

## See Also

- [Download Product Files]({%slug winforms/installation-deployment-and-distribution/download-product-files%})
- [How to Upgrade a Telerik UI for WinForms Project]({%slug how-to-upgrade-a-project%})
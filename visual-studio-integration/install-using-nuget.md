---
title: Install using NuGet Packages
page_title: Install using NuGet Packages - Installation Deployment and Distribution
description: This article describes how you can install the WinForms suite using a NuGet package.   
slug: winforms/nuget
tags: install,nuget
published: True
position: 9
---

# Install using NuGet Packages

<iframe width="800" height="400" src="https://www.youtube.com/embed/c3m_BLMXNDk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

This article explains how to install the Telerik UI for WinForms suite using NuGet packages. There are two methods available for obtaining the NuGet packages:

* [Get the packages from the Telerik NuGet server](#download-from-the-telerik-nuget-server)
* [Manually download the packages](#manually-download-nuget-packages)

## Generate an API Key

As the Telerik NuGet server requires authentication, the first step is to obtain an API key that you will use instead of a password. Using an API key instead of a password is a more secure approach, especially when working with [.NET CLI](https://docs.telerik.com/devtools/winforms/visual-studio-integration/install-nuget-keys#using-only-cli-commands) or the [NuGet.Config file](https://docs.telerik.com/devtools/winforms/visual-studio-integration/install-nuget-keys#using-a-nugetconfig-file-with-your-projects).

1. Go to the [API Keys](https://www.telerik.com/account/downloads/api-keys) page in your Telerik account.
1. Click **Generate New Key +**.

  ![Manage API Keys](images/account-generate-api-key.png)

1. In the **Key Note** field, add a note that describes the API key.

1. Click **Generate Key**.

1. Select **Copy and Close**. Once you close the window, you can no longer copy the generated key. For security reasons, the **API Keys** page displays only a portion of the key.

1. Store the generated NuGet API key as you will need it in the next steps. Whenever you need to authenticate your system with the Telerik NuGet server, use `api-key` as the username and your generated API key as the password.

>API keys expire after two years. Telerik will send you an email when a key is about to expire, but we recommend that you set your own calendar reminder with information about where you used that key: file paths, project links, AzDO and GitHub Action variable names, and so on.

## Download from the Telerik NuGet server

This method allows you to install Telerik UI for WinForms packages directly from the official Telerik NuGet server. To use this approach, you need to configure Visual Studio to connect to the Telerik package server (**https://nuget.telerik.com/v3/index.json**) as a package source.

> The NuGet v2 server at https://nuget.telerik.com/nuget was sunset in November 2024. The new v3 protocol offers faster package searches and restores, improved security, and more reliable infrastructure. To redirect your feed to the NuGet v3 protocol, all you have to do is to change your NuGet package source URL to https://nuget.telerik.com/v3/index.json.

1. First open the __Options__ window. Right-click on the project, from the menu choose **Manage NuGet Packages...**:

	![installation-deployment-and-distribution-install-using-nuget 002](images/installation-deployment-and-distribution-install-using-nuget002.png)

1. **Configure the package source**. Click the **Settings** (gear) icon, then select **Package Sources**. Add a new package source with the following details:
   - **Name**: Telerik NuGet Feed (or any descriptive name)
   - **Source**: `https://nuget.telerik.com/v3/index.json`

	![installation-deployment-and-distribution-install-using-nuget 004](images/installation-deployment-and-distribution-install-using-nuget004.png)

1. Click **Update** and then **OK** to save the configuration. You have successfully added the Telerik NuGet feed as a Package source!

1. **Authenticate with the Telerik NuGet server**. When you select the Telerik NuGet Feed as the package source, Visual Studio will prompt you to authenticate. Enter the following credentials:
   - **Username**: `api-key`
   - **Password**: Your generated NuGet API key from your Telerik account

	![installation-deployment-and-distribution-install-using-nuget 005](images/installation-deployment-and-distribution-install-using-nuget005.png)

	> **Note:** To generate an API key, log in to your Telerik account and navigate to the Downloads section. The API key is specific to your licensed account and provides access to the packages you are entitled to use.

1. In the Package Manager, browse the Telerik NuGet feed for **UI.for.WinForms.AllControls** package. You will see all Telerik packages available to your licensed account. 

1. Select the target framework version. Choose the package version that matches your project's target framework (.NET Framework 4.8, .NET 6.0, .NET 8.0, .NET 9.0 or later) and click **Install**:

	![installation-deployment-and-distribution-install-using-nuget 006](images/installation-deployment-and-distribution-install-using-nuget006.png)


### Reset Stored Credentials

If you have previously stored credentials for the Telerik NuGet server, you need to update them with a new API key. Or if you encounter some authentication issues, follow these steps to reset the stored credentials:

1. Remove any saved credentials from the [Windows Credential Manager](https://support.microsoft.com/en-us/windows/credential-manager-in-windows-1b5c916a-6a16-889f-8581-fc16e8165ac0). Look for entries named `nuget.telerik.com` or `VSCredentials_nuget.telerik.com` entries.

1. Remove the Telerik NuGet package source from Visual Studio.

1. Clear .NET CLI configuration (if applicable). If you have configured the Telerik package source using the .NET CLI, remove it by running these commands:

	- [dotnet nuget list source](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-nuget-list-source)
	- [dotnet nuget remove source](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-nuget-remove-source)


1. Verify that no credentials are stored in `%AppData%\NuGet\NuGet.Config`. If you find any Telerik-related entries, remove them manually.

1. Try to reset the Visual Studio user data by [forcing NuGet to ask for authentication](https://stackoverflow.com/questions/43550797/how-to-force-nuget-to-ask-for-authentication-when-connecting-to-a-private-feed).

1. Close and restart Visual Studio to ensure all cached credentials are cleared.

1. If you are using the Telerik NuGet feed in a .NET Core application, use a [NuGet API key in the NuGet.Config file]({%slug install-nuget-keys#using-a-nugetconfig-file-with-your-projects%}).

## Manually Download NuGet Packages

1. First you need to log in using your licensed account. This way you will be able to download the packages:

	![installation-deployment-and-distribution-install-using-nuget 001](images/installation-deployment-and-distribution-install-using-nuget001.png)

	>tip The following article shows where you can find the downloads section [Download Product Files](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/download-product-files)
	
1. Then you need to add packages to Visual Studio. Open the NuGet manager and then click the options button:
	
	![installation-deployment-and-distribution-install-using-nuget 002](images/installation-deployment-and-distribution-install-using-nuget002.png)

1. Add new package source. The __Source__ should point to the folder with the NuGets:
	
	![installation-deployment-and-distribution-install-using-nuget 003](images/installation-deployment-and-distribution-install-using-nuget003.png)

1. The final step is to select and install the desired packages. Please note that there are several versions, corresponding to the target framework used in the project, one for .NET 4.0, one for 4.8, one for .NET 6.0 or newer. 

	![installation-deployment-and-distribution-install-using-nuget 00](images/installation-deployment-and-distribution-install-using-nuget008.png)

# See Also

* [Installing On Your Computer]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%})
* [How to Upgrade a Telerik UI for WinForms Project]({%slug how-to-upgrade-a-project%})
* [Install NuGet Key]({%slug install-nuget-keys%})

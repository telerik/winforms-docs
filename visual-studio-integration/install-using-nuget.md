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

This article describes how you can install the WinForms suite using a NuGet package. There are two ways for getting the NuGet packages:

* [Manually download the packages](#manually-download-nuget-packages)

* [Get the packages from the Telerik NuGet server](#download-from-the-nuget-server)

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

## Download from the NuGet server

You need to add the Telerik package server (**https://nuget.telerik.com/v3/index.json**) to the package sources in visual studio.

>caution The old **https://nuget.telerik.com/nuget** server will be deprecated and we encourage our clients to switch to the v3 API. The new v3 API is faster, lighter, and reduces the number of requests from NuGet clients.  

1. First open the __Options__ window: 

	![installation-deployment-and-distribution-install-using-nuget 002](images/installation-deployment-and-distribution-install-using-nuget002.png)

1. Add new source and add the server to the Source field:

	![installation-deployment-and-distribution-install-using-nuget 004](images/installation-deployment-and-distribution-install-using-nuget004.png)

1. When the __Package Source__ is selected you will be prompted for a user name and a password. Use the credentials for your Telerik Account:

	![installation-deployment-and-distribution-install-using-nuget 005](images/installation-deployment-and-distribution-install-using-nuget005.png)

1. Then you can just select and install the desired NuGet packages.

    ![installation-deployment-and-distribution-install-using-nuget 006](images/installation-deployment-and-distribution-install-using-nuget006.png)

It is necessary to choose this Nuget package which corresponds to the respective [target framework]({%slug assemblies-version%}) selected in your project:

   ![installation-deployment-and-distribution-install-using-nuget 007](images/installation-deployment-and-distribution-install-using-nuget007.png)

# See Also

* [Installing On Your Computer]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%})
* [How to Upgrade a Telerik UI for WinForms Project]({%slug how-to-upgrade-a-project%})
* [Install NuGet Key]({%slug install-nuget-keys%})

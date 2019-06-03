---
title: Install using NuGet Packages
page_title: Install using NuGet Packages | Installation Deployment and Distribution
description: This article describes how you can install the WinForms suite using a NuGet package.   
slug: winforms/nuget
tags: install,nuget
published: True
position: 9
---

# Install using NuGet Packages

This article describes how you can install the WinForms suite using a NuGet package. There are two ways for getting the NuGet packages:

* [Manually download the packages](#manually-download-nuget-packages)
* [Get the packages from the Telerik NuGet server](#download-from-the-nuget-server)


>important The NuGet packages for Telerik UI for WinForms are created with a newer version of nuget.exe since R1 2018. If Visual Studio 2012 is used and the version of NuGet Package Manager is below 2.8, it won`t be able to install the NuGet packages. The possible solution is to update the version of NuGet Package Manager following these steps: 
1. Open Visual Studio 2012
2. Tools >> Extensions and Updates 
3. Updates >> Visual Studio gallery 
4. NuGet Package Manager >> Update 


## Manually Download NuGet Packages

1. First you need to log in using your licensed account. This way you will be able to download the packages:

  ![installation-deployment-and-distribution-install-using-nuget 001](images/installation-deployment-and-distribution-install-using-nuget001.png)

  >tip The following article shows where you can find the downloads section [Download Product Files]({%Slug winforms/installation-deployment-and-distribution/download-product-files})

1. Then you need to add packages to Visual Studio. Open the NuGet manager and then click the options button:

  ![installation-deployment-and-distribution-install-using-nuget 002](images/installation-deployment-and-distribution-install-using-nuget002.png)

1. Add new package source. The __Source__ should point to the folder with the NuGets:

  ![installation-deployment-and-distribution-install-using-nuget 003](images/installation-deployment-and-distribution-install-using-nuget003.png)

1. The final step is to select and install the desired packages. Please note that there are two versions, one for .NET 2.0 to 3.5 and one for 2.0 or newer. 


## Download from the NuGet server

You need to add the Telerik package server (https://nuget.telerik.com/nuget) to the package sources in visual studio.

1. First open the __Options__ window: 

  ![installation-deployment-and-distribution-install-using-nuget 002](images/installation-deployment-and-distribution-install-using-nuget002.png)

1. Add new source and add the server to the Source field:

  ![installation-deployment-and-distribution-install-using-nuget 004](images/installation-deployment-and-distribution-install-using-nuget004.png)

1. When the __Package Source__ is selected you will be prompted for a user name and a password. Use the credentials for your Telerik Account:

  ![installation-deployment-and-distribution-install-using-nuget 005](images/installation-deployment-and-distribution-install-using-nuget005.png)

1. Then you can just select and install the desired NuGet packages.

    ![installation-deployment-and-distribution-install-using-nuget 006](images/installation-deployment-and-distribution-install-using-nuget006.png)


# See Also

[Installing On Your Computer]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%})

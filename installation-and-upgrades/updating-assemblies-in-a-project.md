---
title: Updating Assemblies in a Project
page_title: Updating Assemblies in a Project
description: Learn how to use a specific version of the Telerik UI for WinForms suite in your project.
slug: winforms/installation-deployment-and-distribution/updating-assemblies-in-a-project
tags: update, assemblies, project
published: True
position: 4 
---

# Updating Assemblies in a Project

The following topic will show you how to use a specific version of the Telerik UI for WinForms suite in your project. 

![updating-assemblies-in-a-project 001](images/updating-assemblies-in-a-project001.png)

When you [download a .zip containing all binaries]({%slug winforms/installation-deployment-and-distribution/download-product-files%}) for a specific version from your account, you need to replace the already existing assemblies in your project. Follow the steps:

1. Unzip the downloaded archive.
2. Select your project in Visual Studio >> Solution Explorer and expand the *References* section.

	![updating-assemblies-in-a-project 002](images/updating-assemblies-in-a-project002.png)

3. Select the already added Telerik assemblies and delete them:

	![updating-assemblies-in-a-project 003](images/updating-assemblies-in-a-project003.png)

4. Right-click over *References* and select *Add reference...*

	![updating-assemblies-in-a-project 004](images/updating-assemblies-in-a-project004.png)

5. Navigate to the unzipped folder and select the necessary references:

	![updating-assemblies-in-a-project 005](images/updating-assemblies-in-a-project005.png)

Now, you are ready to build and run your project with the downloaded version from your account.


# See Also

* [Download Product Files]({%slug winforms/installation-deployment-and-distribution/download-product-files%})
* [How to Upgrade a Telerik UI for WinForms Project]({%slug how-to-upgrade-a-project%})
* [How to Upgrade Trial to Licensed Version]({%slug upgrade-trial-to-licensed-version%})
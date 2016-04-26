---
title: Convert Project
page_title: Convert Project
description: Convert Project
slug: winforms/installation-deployment-and-distribution/visual-studio-extensions/project-convert
tags: project, configuration
published: True
position: 2
---

# Convert project


__Convert to Telerik WinForms Application__

Telerik Visual Studio extensions Convert Project Wizard could be accessed through the Telerik menu when you need to convert an existing WinForms application to a Telerik WinForms application:

![installation-deployment-and-distribution-vsx-overview 002](images/installation-deployment-and-distribution-vsx-overview002.png)

The wizard could be also reached through the context menu counterparts accessed by right clicking on the project you want to convert.

The Convert Project Wizard lets you tune your project's use of UI for WinForms.

![installation-deployment-and-distribution-vsx-convert-project 001](images/installation-deployment-and-distribution-vsx-convert-project001.png)

The wizard’s first page lets you:

* Select a Telerik UI version from the list of versions detected on your system

* Download the latest versions available on our website using the __GET LATEST__ button

* Specify which assemblies your project would use. When selecting a UI for WinForms assembly all dependent controls are selected automatically and vice-versa.

>GET LATEST button is available only when there is a newer version released on our web site.

> If you prefer the Telerik assemblies to be copied into your solution folder, the __Copy referenced assemblies to solution and source control__ option could be selected only into the [Visual Studio Extensions Options](%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/options).

Through the Convert Project Wizard’s second page you can:

![installation-deployment-and-distribution-vsx-convert-project 002](images/installation-deployment-and-distribution-vsx-convert-project002.png)

* Select which theme will be applied to your project. Check the content of each theme or see the preview of it when select it into the Convert Project.

When you click the Finish button:

* The selected assembly references get added to your project

* A default application-wide theme gets set according to the selected theme.

# See Also

 * [Automatic Dependency Resolving]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/automatic-dependency-resolving%})

 * [Upgrade Project]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/upgrade-project%})

 * [Download New Version]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/latest-version-acquirer%})
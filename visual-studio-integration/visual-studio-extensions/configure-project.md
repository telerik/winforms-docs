---
title: Configure Project
page_title: Configure Project
description: Configure Project
slug: winforms/installation-deployment-and-distribution/visual-studio-extensions/configure-project
tags: project,and,configuration
published: True
position: 3
---

# Visual Studio Extensions

__Configure Telerik WinForms Application__

You can access the Project Configuration Wizard through the Telerik menu when you need to configure your Telerik WinForms application:

![installation-deployment-and-distribution-vsx-overview 003](images/installation-deployment-and-distribution-vsx-overview003.png)

The wizard could be also reached through the context menu counterparts accessed by right clicking on the project you want to convert.

The Project Configuration Wizard’s first page lets you:

![installation-deployment-and-distribution-vsx-configure-project 001](images/installation-deployment-and-distribution-vsx-configure-project001.png)

* Specify which assemblies your project would use. When selecting a UI for WinForms assembly all dependent controls are selected automatically and vice-versa.

Through the Project Configuration Wizard’s second page you can:

![installation-deployment-and-distribution-vsx-configure-project 002](images/installation-deployment-and-distribution-vsx-configure-project002.png)

* Select which theme will be applied to your project. Check the content of each theme or see the preview of it when select it into the Project Configuration Wizard.

Through the Project Configuration Wizard’s third page you can:

![installation-deployment-and-distribution-vsx-configure-project 003](images/installation-deployment-and-distribution-vsx-configure-project003.png)

* Select the "Enable HDPI" option in order to add support for high DPI awareness in your application.

>important Note that the "Enable HDPI" option is availaible from version 2019.1
When you click the Finish button:

* The selected assembly references get added to your project

* A default application-wide theme gets set according to the selected theme.

* An app.manifest file is included to your project if you have selected the "Enable HDPI" option.

# See Also

 * [Automatic Dependency Resolving]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/automatic-dependency-resolving%})

 * [Upgrade Project]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/upgrade-project%})

 * [Download New Version]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/latest-version-acquirer%})
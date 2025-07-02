---
title: Versions Upgrade
description: Versions Upgrade - Installation Deployment and Distribution
type: how-to
page_title: Versions Upgrade Error
slug: versions-upgrade
position: 0
tags: upgrade, project, version, installation
res_type: kb
redirect_to: /knowledge-base/versions-upgrade
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2025.2.520|Telerik UI for WinForms|[Nadya Todorova](https://www.telerik.com/blogs/author/nadya-karaivanova)|
 
# Versions Upgrade 

In a .NET Framework project, after [installing a new version]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}) of the Telerik UI for WinForms suite, you may encounter design-time errors and an inability to build your project.

>caption Figure 1. Visual Studio designer error after installing a new version

![installation-deployment-and-distribution-versions-upgrade 001](images/installation-deployment-and-distribution-versions-upgrade001.png)

A common reason for this error is if the project is still referring to the previous version of the Telerik UI for WinForms. In this case, carefully check the references to all Telerik controls in your project and make sure that they are the same version considering the suffix as well (.462 or .48). Better yet, you can remove all references and add them anew by using the DLLs from your fresh installation. After that, you should rebuild your project, close Visual Studio and open it again to make sure that no references are kept in the memory by Visual Studio.  


## See Also

* [Upgrade project]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/upgrade-project%})

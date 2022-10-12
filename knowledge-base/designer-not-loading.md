---
title: Designer is Not Loading
description: Learn how to deal with designer not loading in WinForms project.
type: how-to 
page_title: Designer is Not Loading  
slug: designer-not-loading
position: 39
tags: designer, ribbon, version
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2022.2.622|UI for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|


## Description

After [upgrading]({%slug how-to-upgrade-a-project%}) from version **2022.2.622** to any newer version, the form's designer may not be opened even though the correct assemblies are referred in the project and the license file is deleted.

![designer-not-loading 001](images/designer-not-loading001.png)
 
If you have a **RadRibbonBar** on the form, this is a potential reason for the broken design time experience.

## Solution

There was an [issue](https://feedback.telerik.com/winforms/1570989-radribbonbar-invalid-resx-file-could-not-load-type-system-delegateserializationholder-after-adding-a-group-at-design-time) related to RadRibbonBar which used to serialize the **CreateAdapterMethod** property in the resource file:
 
![designer-not-loading 002](images/designer-not-loading002.png)

After decoding the serialized base64 content, here comes the assembly version displayed in the failed designer:

![designer-not-loading 003](images/designer-not-loading003.png)

The issue has already been addressed and a fix was released in **R3 2022**. The **CreateAdapterMethod** property is not serialized any more. However, all broken resource files need to be manually handled and delete the serialized CreateAdapterMethod property from the .resx.
 
# See Also

* [How to Upgrade a Telerik UI for WinForms Project]({%slug how-to-upgrade-a-project%})
* [Updating Assemblies in a Project]({%slug winforms/installation-deployment-and-distribution/updating-assemblies-in-a-project%})
* [Install using NuGet Packages]({%slug winforms/nuget%})
* [Upgrade Wizard]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/upgrade-project%})
* [Download New Version]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/latest-version-acquirer%})
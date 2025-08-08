---
title: Migrating to .NET 
page_title: Migrating to .NET
description: Learn how to migrate to .NET
slug: core-migration
tags: core, getting, started
published: True
position: 3
---

# Migrating to .NET

This article shows how to migrate from an existing WinForms .NET Framework project to a .NET project (.NET 8 or later).

Before proceeding with this article please make sure that the following requirements are met:

* **Visual Studio 2022 v17.0 and newer**
* **Telerik UI for WinForms NuGet package installed**

## Example 

1\. Create a new WinForms application using one of our [templates]({%slug winforms/visual-studio-templates%}). This way you will have a fully functional application that you will migrate to .NET. You can use any application that uses the Telerik UI for Winforms controls as well.  

In this case I am using the excel inspired template.

>caption Figure 1: New Application

![core-migration001](images/core-migration001.png)


>tip You can check your application compatibility with the following tool: [The Portability Analyzer](https://blogs.msdn.microsoft.com/dotnet/2018/08/08/are-your-windows-forms-and-wpf-applications-ready-for-net-core-3-0/)



2\. You need to create a WinForms .NET project. Currently this can be done from the Conosle. Open a new *Development Command Prompt for VS2017* and type the following command (you can use any preferred directory). 

#### Creating WinForms project from the Command Prompt

`C:\core_projects>dotnet new WinForms -o MyWinformsApp1`

Once this is done you will see the following message.

![core-migration002](images/core-migration002.png)


3\. Now open the project in Visual Studio 2022. Go to the Solution Explorer and right click dependencies and then click Add Reference. Navigate to the install folder of the winforms suite and choose the __NetCore__ folder. Select all required assemblies (you can see them in the standard project).  

![core-migration003](images/core-migration003.png)

4\. In Visual Studio 2022 go to Project -> Add Existing Item. Navigate to the standard application and select the form files. 


![core-migration004](images/core-migration004.png)


5\.Change the namespace in the newly added files to __MyWinformsApp1__ and then change the startup form in the Program.cs file. That is all, now you can start the new application.


![core-migration005](images/core-migration005.png)

## See Also
* [Download Product Files]({%slug winforms/installation-deployment-and-distribution/download-product-files%}) 
* [How to Migrate a WinForms .NET Framework Project to .NET Core]({%slug migare-net-framework-project-to-core%})



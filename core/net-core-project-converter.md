---
title: .NET Core Project Converter
page_title: .NET Core Project Converter | NET Core
description:   
slug: net-core-project-converter
tags: convert, WinForms application, .NET Core
published: True
position: 3
---

# .NET Core Project Converter

Since **R2 2020** Telerik UI for WinForms suite provides tooling in **Visual Studio 2019**, via our [Visual Studio Extensions]({%slug winforms-installation-deployment-and-distribution-visual-studio-extensions%}), that will convert client projects that use **.NET Framework 4.8** (or lower) into **.NET Core** projects to ease out the migration.  

>note It is based on the [Try-Convert](https://github.com/dotnet/try-convert) tool and the [.NET Portability Analyzer ](https://github.com/microsoft/dotnet-apiport) that Microsoft offers to help .NET developers port their projects to .NET Core. Please have in mind that even though the conversion may be successful, we don't guarantee that the project will be compiled and you may need to fine-tune the output.

This article will guide you through the conversion process:

1. Let's start with an existing Telerik WinForms project that uses .NET Framework 4.5:

	![net-core-project-converter 001](images/net-core-project-converter001.png)  

	![net-core-project-converter 002](images/net-core-project-converter002.png)  

2. Navigate to the **Extensions** menu. If the Telerik menu item is not available, click **Manage Extensions** and download it:

	![net-core-project-converter 003](images/net-core-project-converter003.png)  

	![net-core-project-converter 004](images/net-core-project-converter004.png)  

3. After restarting Visual Studio, you are expected to see the **.NET Core Project Converter** option in the **Extensions** menu and in the project's context menu as well:

	![net-core-project-converter 005](images/net-core-project-converter005.png)  

	![net-core-project-converter 006](images/net-core-project-converter006.png) 

4. Run the converter and follow the wizard:


	![net-core-project-converter 007](images/net-core-project-converter007.png)

	![net-core-project-converter 008](images/net-core-project-converter008.png)

	![net-core-project-converter 009](images/net-core-project-converter009.png)

	![net-core-project-converter 010](images/net-core-project-converter010.png)

	![net-core-project-converter 011](images/net-core-project-converter011.png)

	![net-core-project-converter 012](images/net-core-project-converter012.png)

	![net-core-project-converter 013](images/net-core-project-converter013.png)

5. Now, the project can be run using .NET Core 3.1:

	![net-core-project-converter 014](images/net-core-project-converter014.png)

6. There is a backup folder containing the initial project:

	![net-core-project-converter 015](images/net-core-project-converter015.png)



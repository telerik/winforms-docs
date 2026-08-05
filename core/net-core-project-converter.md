---
title: .NET Core Project Converter
page_title: .NET Core Project Converter - NET Core
description:   
slug: net-core-project-converter
tags: convert, WinForms application, .NET Core
published: False
position: 3
---

# .NET Core Project Converter

Since **R2 2020** Telerik UI for WinForms suite provides tooling in **Visual Studio 2019**, via our [Visual Studio Extensions]({%slug winforms-installation-deployment-and-distribution-visual-studio-extensions%}), that will convert client projects that use **.NET Framework 4.8** (or lower) into **.NET Core** projects to ease out the migration.  

>note It is based on the [Try-Convert](https://github.com/dotnet/try-convert) tool and the [.NET Portability Analyzer ](https://github.com/microsoft/dotnet-apiport) that Microsoft offers to help .NET developers port their projects to .NET Core. Please have in mind that even though the conversion may be successful, we don't guarantee that the project will be compiled and you may need to fine-tune the output.

This article will guide you through the conversion process:

1. Let's start with an existing Telerik WinForms project that uses .NET Framework 4.5:

	![Existing Telerik UI for WinForms .NET Framework project before conversion](images/net-core-project-converter001.png)  

	![Visual Studio project showing the Telerik UI for WinForms .NET Framework project configuration](images/net-core-project-converter002.png)  

2. Navigate to the **Extensions** menu. If the Telerik menu item is not available, click **Manage Extensions** and download it:

	![Visual Studio Extensions menu for accessing the Telerik UI for WinForms project converter](images/net-core-project-converter003.png)  

	![Visual Studio Manage Extensions dialog for installing the Telerik UI for WinForms extensions](images/net-core-project-converter004.png)  

3. After restarting Visual Studio, you are expected to see the **.NET Core Project Converter** option in the **Extensions** menu and in the project's context menu as well:

	![Visual Studio Extensions menu showing the .NET Core Project Converter command](images/net-core-project-converter005.png)  

	![Telerik UI for WinForms .NET Core Project Converter command in the project context menu](images/net-core-project-converter006.png) 

4. Run the converter and follow the wizard:


	![Telerik UI for WinForms .NET Core Project Converter welcome page](images/net-core-project-converter007.png)

	![Telerik UI for WinForms .NET Core Project Converter project selection page](images/net-core-project-converter008.png)

	![Telerik UI for WinForms .NET Core Project Converter target framework selection page](images/net-core-project-converter009.png)

	![Telerik UI for WinForms .NET Core Project Converter conversion options page](images/net-core-project-converter010.png)

	![Telerik UI for WinForms .NET Core Project Converter assembly and project conversion step](images/net-core-project-converter011.png)

	![Telerik UI for WinForms .NET Core Project with Visual Studio "File Modification Detected" warning dialog indicating that the project "TryConvertWinForms" was modified outside the environment](images/net-core-project-converter012.png)

	![Telerik UI for WinForms .NET Core Project Converter completion page](images/net-core-project-converter013.png)

5. Now, the project can be run using .NET Core 3.1:

	![Converted Telerik UI for WinForms project running on .NET Core 3.1](images/net-core-project-converter014.png)

6. There is a backup folder containing the initial project:

	![Backup folder containing the original Telerik UI for WinForms project](images/net-core-project-converter015.png)

## See Also

* [Download Product Files]({%slug winforms/installation-deployment-and-distribution/download-product-files%}) 
* [How to Migrate a WinForms .NET Framework Project to .NET Core]({%slug migare-net-framework-project-to-core%})

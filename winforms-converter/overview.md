---
title: Overview
page_title: Overview - WinForms Converter
description: This article shows what the winforms converter represents and what it supports. 
slug: winforms/installation-deployment-and-distribution/visual-studio-extensions/winforms-converter
tags: convert, winforms, radcontrols
published: True
position: 0
---

# WinForms Converter

This tool allows you to convert the standard .NET Windows Forms controls for all projects in a particular solution to their equivalent in Telerik UI for WinForms. It aims to speed up the conversion process and save time when such projects are modernized. The tool is built on top of the [Roslyn](https://roslyn.codeplex.com/) compiler platform. 

>caution The WinForms Converter is not supported in Visual Studio 2022. This means that running it in Visual Studio 2022 will lead to errors. The last supported version of Visual Studio is 2019.
>

>caption Figure 1: Sample application converted to use the Telerik controls. 
 
![winforms-converter-overview001](images/winforms-converter-overview001.png)

Here are the main capabilities:

* __Large number of supported controls__ - complete list of the converted controls is available here: [Supported Controls]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/supported-controls%}). You can chose which controls to convert as well.

* __Real-Time differences__ - after the project is converted you can view the differences in Visual Studio.

* __Auto BackUp Support__ - by default, the tool creates a project backup. You can find it in the project folder.  

* __Conversion Log__ - Conversion log is created when the process is completed. It contains a complete list of all converted files.   

* __Convert to a specific version__ - you can choose to which version of __Telerik UI for WinForms__ you want to convert. 

* Visual Basic and C# projects are supported. 

Before proceeding further, make sure that you meet the [Requirements]({%slug winforms/winforms-converter/requirements%}) for the Converter Tool.

## See Also

* [Step-by-step tutorial]({%slug winforms/winforms-converter/step-by-step-tutorial%})
* [Requirements]({%slug winforms/winforms-converter/requirements%}) 

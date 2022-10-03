---
title: How to Deal with Multiplied Controls in Toolbox  
description: Learn how to deal with multiplied controls in WinForms Toolbox.
type: how-to 
page_title: How to Deal with Multiplied Controls in Toolbox  
slug: multiplied-controls-in-toolbox
position: 39
tags: multiple, multiplied, twice, controls, toolbox
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2022.2.622|UI for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|


## Description

A common case is to observe the Telerik controls displayed twice in the Visual Studio Toolbox:

![multiplied-controls-in-toolbox 001](images/multiplied-controls-in-toolbox001.png)
 
 
## Solution

The first thing to try is to **reset** the Visual Studio **Toolbox** by right-clicking on it and select *Reset Toolbox* option. Alternatively, you can uninstall the Telerik UI for WinForms suite and [install]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}) it again.

![multiplied-controls-in-toolbox 002](images/multiplied-controls-in-toolbox002.png)

Another approach is to:

1. Close all Visual Studio instances.
2. Open Windows Explorer and navigate to **%localappdata%\Microsoft\VisualStudio\15.0_<instanceID>** (e.g. VS 2017). Note that you might have several such folders according to the Visual Studio versions that are installed.
3. Make sure that the option '*Show hidden files, folders and drives*' is selected in the Windows Explorer options.
4. Delete all *.tbd files.
5. Start Visual Studio 2017 and check if the issue still persists.

If there is no Telerik controls in toolbox please use [Toolbox Configuration Wizard](%slug %) to set them.

# See Also

* [Adding RadControls to Visual Studio Toolbox in .NET Framework Projects]({%slug winforms/installation-deployment-and-distribution/adding-radcontrols-to-visual-studio-toolbox%}) 
* [Adding RadControls to Visual Studio Toolbox in .NET Core Projects]({%slug core-toolbox-version%}) 
* [Set Toolbox Version]({%slug winforms/installation-deployment-and-distribution/visual-studio-extensions/toolbox-configurator%})

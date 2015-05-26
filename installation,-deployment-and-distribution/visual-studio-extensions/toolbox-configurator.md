---
title: Toolbox configurator
page_title: Toolbox configurator | UI for WinForms Documentation
description: Toolbox configurator
slug: winforms/installation,-deployment-and-distribution/visual-studio-extensions/toolbox-configurator
tags: toolbox,configurator
published: True
position: 4
---

# Toolbox configurator



## 

Starting with __Q3 2010__ we introduced the Toolbox Configuration utility.
          Its purpose is to choose which version of Telerik UI for WinForms to be populated in the Visual
          Studio’s Toolbox. The user can select among all versions of the suite that are currently on the
          machine and have been either installed or downloaded using the VS Extensions.
        

The Toolbox Configurator can be launched from the Telerik menu:![installation-deployment-and-distribution-vsx-toolbox-configurator 001](images/installation-deployment-and-distribution-vsx-toolbox-configurator001.png)

The user can make his selection using the dropdown menu which lists all versions
          discovered on the machine. When the Finish button is clicked Visual Studio will be
          restarted so that the changes can take effect.
        

The Toolbox Configurator is supported in Visual Studio 2005, 2008, 2010, 2012, 2013 and 2015.

>note The Toolbox Configurator registers the selected version of Telerik UI for WinForms in AssemblyFoldersEx. This makes them visible in the Add Reference
            dialog and Choose Toolbox Items dialog (accessible from the toolbox context menu).
>
![installation-deployment-and-distribution-vsx-toolbox-configurator 002](images/installation-deployment-and-distribution-vsx-toolbox-configurator002.png)

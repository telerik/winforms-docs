---
title: Design-time assembly handling
page_title: Design-time assembly handling
description: Design-time assembly handling
slug: winforms/installation-deployment-and-distribution/visual-studio-extensions/design-time-assembly-handling
tags: design-time,assembly,handling
published: True
position: 9
previous_url: installation-deployment-and-distribution-vsx-design-time-assembly-handling
---

# Design-time assembly handling



## Significance of the Design Assembly
      

__Telerik.WinControls.UI.Design__ is the design-time assembly responsible for the proper rendering of Telerik UI for WinForms in the Designer.
        

When viewing controls from the designer, Visual Studio tries to resolve the corresponding  __Telerik.WinControls.UI.Design__. If the assembly is not in the __GAC__, controls dependent on it will not be visible when added from the __toolbox__.
 
![installation-deployment-and-distribution-vsx-design-time-assembly-handling 001](images/installation-deployment-and-distribution-vsx-design-time-assembly-handling001.png)

Designer in __Visual Studio 2010 SP1__ showing errors when a design assembly is missing.
        

## Actions taken during the Telerik UI for WinForms Setup
      

To ensure __proper design time support__ the design assembly is added to the __Global Assembly Cache__ during installation from where Visual Studio can later resolve it.
        

## Actions taken by the Telerik Visual Studio Extensions Wizards
      


![installation-deployment-and-distribution-vsx-design-time-assembly-handling 002](images/installation-deployment-and-distribution-vsx-design-time-assembly-handling002.png)

> __Elevated privileges__ are required to add an assembly to the GAC. In case your machine has __User Account Control__ enabled a permission dialog will appear later in the wizard and must be confirmed.
>  

##  Location of Telerik.WinControls.UI.Design assembly
      

The design assembly comes along with the distribution of control assemblies. If the distribution was downloaded through the extensions it can be found in __%APPDATA%\Telerik\Updates__.
        

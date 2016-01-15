---
title: Design-time assembly handling
page_title: Design-time assembly handling | UI for WinForms Documentation
description: Design-time assembly handling
slug: winforms/installation-deployment-and-distribution/visual-studio-extensions/design-time-assembly-handling
tags: design-time,assembly,handling
published: True
position: 3
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
      

When the Telerik Project Wizard offers you available distributions to choose it also checks whether the design assembly is in the GAC:
          

* In case it is not, the option to add the corresponding __Telerik.WinControls.UI.Design__ from the selected distribution to GAC will be present:
 ![installation-deployment-and-distribution-vsx-design-time-assembly-handling 002](images/installation-deployment-and-distribution-vsx-design-time-assembly-handling002.png)![installation-deployment-and-distribution-vsx-design-time-assembly-handling 003](images/installation-deployment-and-distribution-vsx-design-time-assembly-handling003.png)

> __Elevated privileges__ are required to add an assembly to the GAC. In case your machine has __User Account Control__ enabled a permission dialog will appear later in the wizard and must be confirmed.
>


* In case the corresponding __Telerik.WinControls.UI.Design__ is missing from the distribution and is not in the GAC a warning is shown:
 
![installation-deployment-and-distribution-vsx-design-time-assembly-handling 004](images/installation-deployment-and-distribution-vsx-design-time-assembly-handling004.png)

This indicates that __Telerik.WinControls.UI.Design.dll__ is missing from the distribution. To avoid the errors in the Designer you can download the chosen distribution again (making sure no files are missing) and run the wizard again.
              

##  Location of Telerik.WinControls.UI.Design assembly
      

The design assembly comes along with the distribution of control assemblies. If the distribution was downloaded through the extensions it can be found in __%APPDATA%\Telerik\Updates__.
        

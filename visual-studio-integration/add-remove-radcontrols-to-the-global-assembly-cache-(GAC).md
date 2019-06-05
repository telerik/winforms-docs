---
title: Add/Remove RadControls to the Global Assembly Cache (GAC)
page_title: Add/Remove RadControls to the Global Assembly Cache (GAC)
description: Add/Remove RadControls to the Global Assembly Cache (GAC)
slug: winforms/installation-deployment-and-distribution/application-deploymentadd-remove-radcontrols-to-the-global-assembly-cache-(gac)
tags: add/remove,radcontrols,to,the,global,assembly,cache,(gac)
published: True
position: 4
previous_url: installation-deployment-and-distribution-add-remove-radcontrols-to-the-global-assembly-cache-(gac)
---

# Add/Remove RadControls to the Global Assembly Cache (GAC)



## Adding controls to GAC by using the gacutil tool (Windows XP, Vista, Win7)

To add Telerik controls to the [Global Assembly Cache](http://msdn.microsoft.com/en-us/library/yf1d93sz%28VS.71%29.aspx) (GAC):


1. Run the .NET command prompt (Start >> Programs >> Microsoft VS.NET >> VS.NET Tools >> VS.NET prompt)

1. Start the [gacutil.exe tool](http://msdn.microsoft.com/en-us/library/ex0ss12c%28VS.80%29.aspx) with __-i__ parameter (install) and the full path to the control's DLL. For example:

 * gacutil.exe -i "C:\Program Files\Telerik\UI for WinForms\Version\bin\TelerikCommon.dll"

 * gacutil.exe -i "C:\Program Files\Telerik\UI for WinForms\Version\bin\Telerik.WinControls.dll"

To get information on the the assembly attributes (Version, Culture, PublicKeyToken), run the gacutil __/l__ command which will return a list of all the assemblies in the GAC. You can also see the information associated with a particular assembly using the __-l__ parameter. For example:

 * gacutil -l TelerikCommon*

The command above will return:

 * TelerikCommon, Version=5.0.3.0, Culture=neutral, PublicKeyToken=5bb2a467cbec79, processorArchitecture=MSIL

## Removing assemblies by using the gacutil tool (Windows XP, Vista, Win7)

To remove assemblies via the gacutil tool, please see the [gacutil.exe tool's help.](http://msdn.microsoft.com/en-us/library/ex0ss12c%28VS.80%29.aspx)

## Adding and removing controls to GAC manually (Vista, Win7)

Simply copy the dll files from the installation directory to __C:\WINDOWS\assembly__. This is equivalent to running the gacutil.exe utility.


To remove the assemblies, open __C:\WINDOWS\assembly__ and select the assemblies you want removed. Press DELETE on the keyboard.

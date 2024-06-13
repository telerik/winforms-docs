---
title: Adding a control to the GAC (Global Assembly Cache) for WinForms
description: Adding a control to the GAC (Global Assembly Cache) for WinForms. Check it now!
type: how-to
page_title: Adding a control to the GAC (Global Assembly Cache) for WinForms
slug: adding-a-control-to-the-gac-(global-assembly-cache)-for-winforms
tags: common
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2008|RadControls for WinForms|Nikolay Diyanov|Apr 03, 2008|
  
   
**HOW TO**  
Add a control to the **GAC** (Global Assembly Cache)  
   
**SOLUTION**
To install a control to the GAC, you need to run the .NET command prompt (*Start &gt;&gt; Programs &gt;&gt; Microsoft VS.NET &gt;&gt; VS.NET Tools &gt;&gt; VS.NET prompt*) and start the gacutil.exe tool with **-i** parameter (install) and the full path to the control's DLL.  
   
For example:  
   
***gacutil.exe -i "C:\Program Files\Telerik\RadControls for WinForms Q3 2007 SP1\bin\TelerikCommon.dll"***

***gacutil.exe -i "C:\Program Files\Telerik\RadControls for WinForms Q3 2007 SP1\bin\Telerik.WinControls.dll"***


You may also directly copy the dll files to the *C:\WINDOWS\assembly,*by drag and drop operation - this is equivalent to running the ***gacutil.exe*** utility.  
   
To get the information that goes into the assembly attribute (Version, Culture, PublicKeyToken), you can run the **gacutil */l*** command which will return a list of all the assemblies in the GAC. You can also see the information associated with a particular assembly using the **-l** parameter.   
   
For example:  
   
***gacutil -l TelerikCommon***  
The command above will return:  
   
***TelerikCommon, Version=5.0.3.0, Culture=neutral, PublicKeyToken=5bb2a467cbec79, processorArchitecture=MSIL***


---
title: Increasing the execution speed of Telerik assemblies
description: Increasing the execution speed of Telerik assemblies. Check it now!
type: how-to
page_title: Increasing the execution speed of Telerik assemblies
slug: increasing-the-execution-speed-of-telerik-assemblies
res_type: kb
---

|Article relates to|Product|Author|Last modified|  
|----|----|----|----|
|RadControls for WinForms|Telerik UI for WinForms|Nikolay Diyanov|Dec 12, 2007| 
 
## How To

Increase the execution speed of Telerik assemblies (NGEN Telerik Assemblies)   
   
## Solution
  
Native Image Generator (ngen.exe) is a tool that creates a native image from a managed assembly and installs it into the native image cache on the local computer. This will allow the assembly to execute faster. The **ngen.exe **is located in the following directory:   
*"C:\WINDOWS\Microsoft.NET\[version folder]\"*

The command to NGEN an assembly looks like this:   
*ngen [assembly name | assembly path]*  

Assuming that you want to NGEN TelerikCommon.dll the command is:   
*ngen "C:\Program Files\Telerik\RadControls for WinForms Q2 2007\bin\TelerikCommon.dll"*  
   
You have to specify the fully assembly name if you want **ngen.exe** to locate it and use the assembly's publisher policy.   
   
After you have generated a native image for the assembly, the runtime automatically attempts to locate and use this native image each time it runs the assembly.   
   
You can also use **ngen.exe **to create native images for an application. Since this time you need the fully specified names of the assemblies, which the application refers to, use the [Ildasm.exe](http://msdn2.microsoft.com/en-us/library/f7dy01k1%28VS.71%29.aspx) tool to see them. Then NGEN the application using this command:   
*ngen [application name], "[fully specified assembly name]"*  
   
If the assembly also refers to another assembly, you have to include them both in the command, let's say that ControlLibrary.dll refers to TelerikCommon.dll:   
*ngen TestApplication.exe "ControlLibrary.dll, Version=1.0.0.0 Culture=neutral, PublicKeyToken=432gg43gm31muy2u", "TelerikCommon.dll, Version=4.0.2.0 Culture=neutral, PublicKeyToken=5bb2a467cbec794"*  
   
For detailed information about this topic, please to [MSDN](http://msdn2.microsoft.com/en-us/library/6t9t5wcf%28VS.71%29.aspx).  


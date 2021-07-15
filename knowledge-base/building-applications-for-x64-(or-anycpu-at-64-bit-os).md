---
title: Building applications for x64 (or AnyCPU at 64-bit OS)
description: Building applications for x64 (or AnyCPU at 64-bit OS). Check it now!
type: how-to
page_title: Building applications for x64 (or AnyCPU at 64-bit OS)
slug: building-applications-for-x64-(or-anycpu-at-64-bit-os)
res_type: kb
---

|Article relates to|Product|Author|Last modified|  
|----|----|----|----|
|RadControls for WinForms|Telerik UI for WinForms|Nikolay Diyanov|Jan 18, 2009| 
 
## Problem 
   
If you are trying to build your project for x64 (or AnyCPU, if you are on 64-bit OS), you may experience performance issues.  
   
This is mostly noticeable when the complexity of the processed operations is big. For example, RadRibbonBar is a complex control and you can experience a slow initialization upon a x64 build.  
   
The fact that your applications may be slower if built for x64 comes from a known issue of the .*NET Framework CLR* and *JIT Compiler*. This issue can be easily reproduced by executing a big number of complex math operations.  
   
For additional information about x86 versus x64 compilation, please refer to the following articles:  

[AnyCPU Exes are usually more trouble than they're worth](http://blogs.msdn.com/rmbyers/archive/2009/06/8/anycpu-exes-are-usually-more-trouble-then-they-re-worth.aspx)  

[JIT, NGen, and other Managed Code Generation Stuff](http://blogs.msdn.com/clrcodegeneration/)  

## Solution
 
In case you feel you are using complex controls or math operations, you can simply build your solution for x86.  
   
The other available option is to NGen your application's assemblies. For additional information, please refer to [this article](https://www.telerik.com/support/kb/winforms/details/increasing-the-execution-speed-of-telerik-assemblies).  



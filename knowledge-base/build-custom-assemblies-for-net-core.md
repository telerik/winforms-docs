---
title: How to Build Custom Telerik Assemblies when Using .NET Core and Enable Design Time Experience
description: This article demonstrates how to produce custom Telerik assemblies when using .NET Core in your project and enable design time experience. 
type: how-to
page_title: How to Build Custom Telerik Assemblies when Using .NET Core and Enable Design Time Experience
slug: build-custom-assemblies-for-net-core
position: 0
tags: common, build, code, source, core, net
res_type: kb
---

## Description

In certain scenarios it may be required to modify the source code of the Telerik UI for WinForms suite and use this custom version for the development process. However, it is important to keep the [design time]({%slug core-design-time%}) experience working. When using .NET Framework, it is enough to build the Telerik.WinControls.UI.Design.csproj and use the produced custom dll. But with the introduction of .NET Core, the [Toolbox Version]({%slug core-toolbox-version%}) depends on the installed NuGet package.

This tutorial demonstrates a sample approach how to replace the Telerik assemblies coming from the installed NuGet package with the custom built ones from the source code.
 
## Solution 

Please follow the steps described in the [Download Product Files]({%slug winforms/installation-deployment-and-distribution/download-product-files%}) help article in order to download the product files especially the source code:

![attach-telerik-source-code-to-your-project 001](images/attach-telerik-source-code-to-your-project001.png)

Once you have the source code downloaded, let's continue with the following steps:

1\. Unzip the file in C:\\"your folder", e.g. C:\Telerik_UI_For_WinForms_2023_2_718_source. 

>caution As of R3 2022 the zip contains not only the .NET Framework projects of the Telerik source code, but .NETCore projects as well. Make sure that you don't mix projects of different target framework when building the source code.
>

 2\. Open WinForms.NetCore.sln.

 >caution When the Telerik WinForms source code is downloaded in some situations '.resx' files may be blocked with an error and the projects cannot be built. To unblock those files there is a simple solution for multiple-recursive unblocking: [Unblock .resx Files Downloaded in Telerik WinForms Source Code]({%slug unblock-resx-files-downloaded-in-source-code%})

 3\. Build the project before you apply any modifications to the source code:

 ![build-custom-assemblies-for-net-core 001](images/build-custom-assemblies-for-net-core001.png)
 
 Make sure that no errors occur and the application is built successfully:

![build-custom-assemblies-for-net-core 002](images/build-custom-assemblies-for-net-core002.png) 

4\. Modify these parts of the code you want to customize. For the example here, I will modify the RadForm.cs file and change the Text property in the constructor as follows:

![build-custom-assemblies-for-net-core 003](images/build-custom-assemblies-for-net-core003.png) 

5\. Save the changes and Rebuild the application.

6\. Open the C:\\"your folder"\bin\Debug folder and you will find the produced custom dlls after building the application, e.g. C:\Telerik_UI_For_WinForms_2023_2_718_source\bin\Debug

![build-custom-assemblies-for-net-core 004](images/build-custom-assemblies-for-net-core004.png)  

These are the custom built assemblies that should be used in your project considering the .NET version in the project. 

7\. Let's consider that you have an existing sample project that uses .NET 7. This means that you have the respective [NuGet package]({%slug winforms-available-nugets%}) installed, e.g. UI.for.WinForms.AllControls.Net70 (version 2023.2.718):

![build-custom-assemblies-for-net-core 005](images/build-custom-assemblies-for-net-core005.png)  

Once the project is built, the Toolbox is populated with the respective installed version of the NuGet package:

![build-custom-assemblies-for-net-core 006](images/build-custom-assemblies-for-net-core006.png)  

8\. Expand the package to see all included assemblies along with the full **path** to the respective dll:

![build-custom-assemblies-for-net-core 007](images/build-custom-assemblies-for-net-core007.png)

9\. Close the sample project you have in order to ensure that the DesignToolsServer doesn't use the assemblies.

10\. Navigate to the **path** and replace the dlls with the ones we built in step 6\.

>caption Before

![build-custom-assemblies-for-net-core 008](images/build-custom-assemblies-for-net-core008.png)

>caption After

![build-custom-assemblies-for-net-core 009](images/build-custom-assemblies-for-net-core009.png)
 
 Pay attention to the **Date modified** column to ensure that the desired assemblies are at the proper place.

 >note All Document processing Assemblies are available in the unzipped source code in the folder for the respective .NET version - e.g. C:\Telerik_UI_For_WinForms_2023_2_718_source\RadControls\Dependencies\DocumentsProcessing\net7.0-windows

11\. Reopen the sample project, Clean and Rebuild it.

12\. Since the RadForm.**Text** property is serialized in the **Designer.cs** file, we will comment it to see what text will be displayed. If "Telerik Test" is shown, it means that the custom modification in step 4\. is successfully applied which proves that the custom assemblies are used.

![build-custom-assemblies-for-net-core 010](images/build-custom-assemblies-for-net-core010.png)

12\. Open the designer, e.g. for RadForm1.cs. 

 ![build-custom-assemblies-for-net-core 011](images/build-custom-assemblies-for-net-core011.png) 
 
>caution Note that if you clear the NuGet cache, the folder in which we replaced the custom assemblies will be deleted. Hence, it will be necessary to install the default NuGet package again and replace its assemblies with the custom ones one more time.

# See Also

* [Download Product Files]({%slug winforms/installation-deployment-and-distribution/download-product-files%}) 
* [Design Time Experience]({%slug core-design-time%})
* [Toolbox Version]({%slug core-toolbox-version%})
* [How to Attach Telerik Source Code to Your Project]({%slug attach-telerik-source-code-to-your-project%})


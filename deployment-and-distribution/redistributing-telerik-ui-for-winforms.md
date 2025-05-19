---
title: Redistributing Telerik UI for WinForms
page_title: Redistributing Telerik UI for WinForms
description: Redistributing Telerik UI for WinForms
slug: installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows
tags: redistributing,telerik,ui,for,winforms
published: True
position: 5
previous_url: installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows
---

# Redistributing Telerik UI for WinForms

The Telerik UI for WinForms suite includes a limited run time royalty-free license to redistribute the controls in your own solutions subject to the License Agreement. You can use the components in the suite to build your own solutions, and redistribute your solutions to your end users who are not required to purchase a license from Telerik to access your solution.

## Examples of Permitted Uses

* Windows Forms applications for internal company use.
            
* Commercial WinForms applications deployed to Your end users. __In this case, you may deploy the Telerik assemblies together with your application with the sole exception of the Telerik.WinControls.UI.Design.dll assembly. The Telerik.WinControls.UI.Design.dll assembly may not be deployed to end-users under any circumstance__.

* WinForms applications that offer a trial or free version of Your application. __If offering a free or trial version of Your Integrated Product, redistribution of the assemblies is not permitted. You are required to protect all Telerik assemblies by using one of the methods below (ILMerge to merge the Telerik WinForms assemblies with the executable file (this does not apply to the Document processing assemblies, see below) of your application OR build the Telerik.WinControls.dll assembly from source code using one of the approaches described below)__

> With the introduction of our new licensing mechanism, Telerik UI for WinForms has simplified deployment requirements. Starting from 2025 Q2 users are no longer required to protect the Telerik assemblies using the methods described below. Instead, the product now requires a license key that can be [downloaded from Telerik account]({%slug license-key%})). Applications without a valid license will continue to function normally, but will display a watermark.

## Examples of Uses that Require Discussion

* Products that expose the design-time functionality of the Telerik RadControls or the VisualStyleBuilder.
            
* Products that do not add significant functionality to the Telerik RadControls.
            
* Open source products.

For additional usage requirements, development restrictions and, defined term definitions, please refer to the WinForms [license agreement]({%slug license-key%}). For uses that require additional review, please send e-mail to <a href="mailto:sales@telerik.com?subject=Redistributing Telerik UI for WinForms">sales@telerik.com</a> to discuss your planned use of the controls.
        

## .NET Redistributions

.NET Core allows you to publish applications as self-contained, bundling the runtime and dependencies into a single folder, or even as a single file executable. This approach eliminates the need for additional tools, as everything is already packaged together during the publish process, simplifying deployment and reducing complexity. Deploying your .NET project is futher described in the [Deploying WinForms .NET Core Application]({%slug winforms/virtualgrid/getting-started%})

## .NET Framework Redistributions

In the following section, we will demonstrate various methods to protect assemblies in the .NET Framework.

### Merging all assemblies into one

#### Using ILRepack

__ILRepack__ is similar to ILMerge tool. __ILMerge__ and __ILRepack__ are tools used to merge multiple .NET assemblies into a single output assembly, but ILRepack is the preferred choice for modern development. While __ILMerge__, developed by Microsoft, works well for older .NET Framework projects, it lacks support for newer .NET versions and is no longer actively maintained. In contrast, __ILRepack__ is an open-source, offering compatibility with .NET Core, .NET 5+, and even non-Windows platforms. Its active development ensures support for the latest .NET ecosystems, providing greater flexibility and reliability. For more information regarding ILRepack tool set-up, please refer to its GitHub repository. [ILRepack](https://github.com/gluck/il-repack)

#### Using ILMerge 

>caution The ILMerge project is deprecated and is no longer maintained. You can consider using its successor: [ILRepack]({%slug installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows/ILRepack%})

|RELATED VIDEOS||
|----|----|
|[ILMerge](http://www.telerik.com/videos/winforms/ilmerge)<br>This video demonstrates how to merge your application exe with the Telerik assemblies, so they cannot be reused. (Runtime: 1:57)|![overview-video 001](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows015.png)|

When you deploy your application, you may prefer to do it as a single executable rather than an executable referencing many external assemblies. In this case, you need to ILMerge the assemblies with the executable. Here is a link to MSDN from where you can download the ILMerge executable: [Download ILMerge](https://github.com/dotnet/ILMerge)

In order to use this approach you need to set the __ResolverTypesInCurrentAssembly__ property to *true* in the __static__ constructor of the first form that is created and loaded when your application starts:
        

>Please make sure that you set the ResolverTypesInCurrentAssembly property in the __static__ constructor of the form. This approach will not work if the property is set somewhere else.


{{source=..\SamplesCS\InstallationDeploymentAndDistribution\RedestributingTelerikRadControls.cs region=ResolveTypesInCurrentAssembly}}
{{source=..\SamplesVB\InstallationDeploymentAndDistribution\RedestributingTelerikRadControls.vb region=ResolveTypesInCurrentAssembly}}

````C#
static RedestributingTelerikRadControls()
{
    Telerik.WinControls.RadTypeResolver.Instance.ResolveTypesInCurrentAssembly = true;
}
public RedestributingTelerikRadControls()
{
    InitializeComponent();
}

````
````VB.NET
Shared Sub New()
    Telerik.WinControls.RadTypeResolver.Instance.ResolveTypesInCurrentAssembly = True
End Sub
Public Sub New()
    ' This call is required by the designer.
    InitializeComponent()
    ' Add any initialization after the InitializeComponent() call.
End Sub

````

{{endregion}}

Next, you should build your solution and then ILMerge the built application executable with the Telerik assemblies:

>If you try to run your solution (not just build it, but run the built executable) when the __ResolveTypesInCurrentAssembly__ is *true*, you will get an exception since the application executable is still not merged with the Telerik assemblies. Make sure that the application executable is ILMerged with the Telerik assemblies when the __ResolveTypesInCurrentAssembly__ is *true* and the executable is run.
          

1. Press the Start button and choose Run.
            

1. Type "cmd" (without the quotes).
            

1. In the command prompt navigate to the ILMerge tool directory. Usually, the directory is *C:\Program Files\Microsoft\ILMerge*, although this directory may vary depending on the Operation System version.
            

1. ILMerge the assemblies using the following command in the command prompt: 
            

>tip: This commands will work in case the application executable and the Telerik assemblies are contained in the ILMerge tool folder. In any other case, you will need to include the full path to the assemblies/executables. In addition, the Telerik assemblies that should be given as parameters, should be those referenced by your application.

    ilmerge /target:winexe /out:MergedApplicationExecutable.exe ApplicationExecutable.exe TelerikCommon.dll Telerik.WinControls.UI.dll Telerik.WinControls.dll
            



>If the referenced assemblies are .NET 4.0 assemblies, you need to specify the targetplatform also:
   
    ILMerge.exe /target:winexe /targetplatform:"v4, C:\Windows\Microsoft.NET\Framework\v4.0.30319" /out:MergedApplicationExecutable.exe AppliocationExecutable.exe Telerik.WinControls.dll Telerik.WinControls.UI.dll TelerikCommon.dll
            
>note In case you encounter an error for duplicated types, please use the **/allowDup** flag:
>
>*ILMerge.exe /target:winexe /targetplatform:"v4, C:\Windows\Microsoft.NET\Framework\v4.0.30319" /out:MergedApplicationExecutable.exe /allowDup 1469949TestILMerge.exe Telerik.WinControls.dll Telerik.WinControls.UI.dll TelerikCommon.dll Telerik.WinControls.SpellChecker.dll* 

![installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows.gif)

The MergedApplicationExecutable.exe is now a stand-alone application executable that does not need any additional references to the Telerik assemblies.

### Building the Telerik assemblies from Source Code

#### Using the OemAssemblyName

|RELATED VIDEOS||
|----|----|
|[Redistribute OEM](http://www.telerik.com/videos/winforms/redistribute-oem)<br>This video demonstrates how to build the Telerik assemblies, so they are locked to your application and cannot be reused outside of it. (Runtime: 5:49)|![overview-video 001](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows016.png)|

This method requires modifications to the source files, which are distributed as part of the Subscription license. If you have purchased a Subscription license for Telerik UI for WinForms, and would like to explore this method, the following information will allow you to do so.
        

Protecting Telerik UI for WinForms requires the Telerik assemblies to be built from source code. The essential part of this approach is that you need to introduce a small modification to the Telerik.WinControls project. For brevity this document assumes that the source distribution ZIP file is extracted in C:\Telerik UI for WinForms Source:
        
1. Open the following solution file: C:\Telerik UI for WinForms Source\RadControlsVS2010.sln
            

1. In the properties for the Telerik.WinControls project, open the Build tab and add an OEM conditional compilation symbol, as shown below:
 
	Before:
             
 	![installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows 001](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows001.png)

	After: 

	![installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows 002](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows002.png)

	>tip: If you are building the .NET4.0 version of the assemblies, you need to use the Release40 build configuration. In this case, when you add the "OEM" symbol, you need to keep the existing NET4 symbol - "OEM; NET4".

1. Open C:\Telerik UI for WinForms Source\RadControl\TPF\Control\RadControl.cs in a text editor (notepad, Visual Studio etc).
            

1. Uncomment the following line and change the string to you application’s assembly name:
    
    Before:
            
    ![installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows 003](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows003.png)

    After:                

    ![installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows 004](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows004.png)

1. Save RadControl.cs and rebuild the solution.

1. In your application replace the __existing__ references to Telerik UI for WinForms assemblies with the ones built from source code __and rebuild your project so it will use the newly build assemblies__.
            

Once you finish these steps, and if you or someone else tries to use that assembly from another application the evaluation dialog will appear (randomly).

![installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows 005](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows005.png)

#### Using the OemPublicKeyToken

|RELATED VIDEOS||
|----|----|
|[Redistribute OEMKEY](http://www.telerik.com/videos/winforms/redistribute-oemkey)<br>This video demonstrates how to build the Telerik assemblies, so they are locked to your application public token key and cannot be reused outside of it. (Runtime: 7:19)|![overview-video 001](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows017.png)|

This section demonstrates how to deploy a project with a public token key. We will assume that you have downloaded and extracted your source code distribution in C:\Telerik UI for WinForms Source\RadControlsVS2010.sln:
        

1. Open the following solution file: C:\Telerik UI for WinForms Source\RadControlsVS2010.sln
            

1. In the properties for the Telerik.WinControls project, open the Build tab and add an OEMKEY conditional compilation symbol, as shown below:
            
    Before:     

    ![installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows 006](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows006.png)

    After: 

    ![installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows 007](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows007.png)

1. Open C:\Telerik UI for WinForms Source\RadControl\TPF\Control\ RadControl.cs in a text editor (notepad, Visual Studio etc).
            

1. Delete the value of the OemPublicKeyToken:
            
    Before:
	
    ![installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows 008](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows008.png)
	
    After:    
	
    ![installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows 009](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows009.png)

1. Open your project and go to *Properties*, then select the *Signing* tab.

1. Mark *Sign the Assembly checkbox* and create a new strong name key.![installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows 010](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows010.png)

1. Build your project and copy the route to your executable file.
            

1. Open the Developer Command Prompt for your version of Visual Studio.
            ![installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows 011](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows011.png)

1. Execute the following command with a parameter the route to your assembly.
            ![installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows 012](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows012.png)

1. Copy the generated public key token.                                    
            ![installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows 013](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows013.png)

1. Return to the RadControlsVS2010 solution, open the RadControl.cs file and set the OemPublicKeyToken to equal the value of the newly generated key token.                                                
            ![installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows 014](images/installation-deployment-and-distribution-redestributing-telerik-radcontrols-for-windows014.png)

1. Build the solution.
            

1. In your application replace the existing references to Telerik UI for WinForms assemblies with the ones built from source code and rebuild your project so it will use the newly build assemblies.
            

## Using the Telerik Document Processing Libraries in Your Solutions

In order to include the Telerik Document Processing libraries in your application, you should build the source code as described below. The source code of the Document Processing libraries is distributed together with the Telerik UI for WinForms source code and installation and is available for downloading from the client accounts. For brevity this document assumes that the source distribution ZIP file is extracted in C:\DPL.
         		         
 		 
 __Instructions__

1\. Open `C:\DPL\Documents\Licensing\AssemblyProtection.cs` in a text editor (notepad, Visual Studio, etc.). In versions of the suite prior to R2 2016, the path is `C:\DPL\Documents\Core\Core\Licensing\AssemblyProtection.cs`.   
            

2\. Uncomment the following line:
            

Before:

{{source=..\SamplesCS\InstallationDeploymentAndDistribution\RedestributingTelerikRadControls.cs region=CommentedIsValid}}
{{source=..\SamplesVB\InstallationDeploymentAndDistribution\RedestributingTelerikRadControls.vb region=CommentedIsValid}}

````C#
public static bool IsValid()
{
    // Uncomment the following line
    // return ValidatePassPhrase();
    return true;
}

````
````VB.NET
Public Shared Function IsValid() As Boolean
    ' Uncomment the following line
    ' return ValidatePassPhrase();
    Return True
End Function

````

{{endregion}}


After:

{{source=..\SamplesCS\InstallationDeploymentAndDistribution\RedestributingTelerikRadControls2.cs region=UnCommentedIsValid}}
{{source=..\SamplesVB\InstallationDeploymentAndDistribution\RedestributingTelerikRadControls2.vb region=UnCommentedIsValid}}

````C#
public static bool IsValid()
{
    // Uncomment the following line
    return ValidatePassPhrase();
}

````
````VB.NET
Public Shared Function IsValid() As Boolean
    ' Uncomment the following line
    Return ValidatePassPhrase()
End Function

````

{{endregion}}

3\. Change the ApplicationName constant to match the name of your application:

Before:

{{source=..\SamplesCS\InstallationDeploymentAndDistribution\RedestributingTelerikRadControls.cs region=AppNameBefore}}
{{source=..\SamplesVB\InstallationDeploymentAndDistribution\RedestributingTelerikRadControls.vb region=AppNameBefore}}

````C#
internal const string ApplicationName = "MyApp";

````
````VB.NET
Friend Const ApplicationName As String = "MyApp"

````

{{endregion}}


After:

{{source=..\SamplesCS\InstallationDeploymentAndDistribution\RedestributingTelerikRadControls2.cs region=AppNameAfter}}
{{source=..\SamplesVB\InstallationDeploymentAndDistribution\RedestributingTelerikRadControls2.vb region=AppNameAfter}}

````C#
internal const string ApplicationName = "Sample Application Name v2.0 (tm)";

````
````VB.NET
Friend Const ApplicationName As String = "Sample Application Name v2.0 (tm)"

````	

{{endregion}}

4\. Save __AssemblyProtection.cs__ and rebuild.
            

5\. In your application replace the existing references to the Telerik assemblies with the ones built from the source code.

6\. If you run the application now you should get an exception with message “This version of Telerik UI for WinForms is licensed only for use by Sample Application Name v2.0 (tm)”. Note that “Sample Application Name v2.0 (tm)” will be replaced with the value of the ApplicationName constant.
            

## Using the Images from the Suite in Your Solutions

When you install the suite together with the installation we deploy a few different kinds of images - some come with the controls, others with the examples, with themes, etc. Following you can find information on which images can be reused in your applications and how this can be done.
        

* Images displayed in the examples __may not__ be used/reused at all by our Licensees.
            

* Images and other resources provided in the core product __may not__ be used outside of the Telerik components.
            

* Images from one Telerik control __can be reused in another Telerik control__ as long as the customer has obtained licenses for both Telerik products.
            

## Telerik UI for WinForms Assemblies

When deploying your application on customer machines, you should make sure that the following assemblies are included in the distribution, being merged with the application executable or being recompiled with the special symbol set:    

__Assemblies that you should redistribute in all scenarios are listed below. The rest of our assemblies depend on these ones.:__

* TelerikCommon.dll
            

* Telerik.WinControls.dll

The rest of the assemblies that will be distributed depend on the controls used in your project and if they are referenced inside your project. You can find all referenced assemblies in the __/bin__ folder of your installation.
        

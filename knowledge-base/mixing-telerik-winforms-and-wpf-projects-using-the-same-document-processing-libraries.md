---
title: Mixing Telerik UI for WinForms and Telerik UI for WPF projects, using the same Document Processing Libraries but with different version
description: Mixing Telerik UI for WinForms and Telerik UI for WPF projects, using the same Document Processing Libraries but with different version. Check it now!
type: how-to
page_title: Mixing Telerik UI for WinForms and Telerik UI for WPF projects, using the same Document Processing Libraries but with different version
slug: mixing-telerik-winforms-and-wpf-projects-using-the-same-document-processing-libraries
tags: common, wpf, wf, winforms,
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q3 2014|RadControls for WinForms|Stefan Stefanov|November 06, 2014|

## Problem

Telerik UI for WinForms, Telerik UI for WPF and Telerik UI for ASP.NET AJAX are distributing the Document Processing Libraries (DPL) with each package. These assemblies are all the same in all suites - the assemblies content and public keytoken is the same. However, their version is not always aligned. One would ask, but why if these assemblies are the same have different version. And the answer will be that this might happen if case one of the suite releases a service pack before the other, or in other case of release date misalignment.  
   
Furthermore, in all three suites there are features that rely on these libs e.g. the [SpreadExport](https://docs.telerik.com/devtools/winforms/gridview/exporting-data/spread-export) functionality of the Telerik UI for WinForms RadGridView allows exporting the grid contents using an exporter, which internally uses the Document Processing Libraries.   
   
So, the problem comes, when you have a WinForms project, using one version of the DPL assemblies (let's say version 2014.3.1104) and you have a WPF project, using the same assemblies but different version (2014.3.1021) AND the WinForms project references the WPF project (or vice versa).  
   
In the above case (when the WinForms project has a reference to the WPF project), when you attempt to run or deploy the application with ClickOnce for example, you will get an error, because the assemblies (all needed assemblies, not just the DPL ones) for the WPF project does not exist in this project.   
   
 
## Solution

The solution to this case is in the following steps:  
   
1. Make sure you merge the references - in the WinForms project, add all references (and dependence references of the referenced assemblies) to the WinForms project.   
   
2. Since the DPL assemblies the WPF project need version 1021, while the WinForms project uses 1104, and because you cannot add two assemblies with the same name, but with different version to one project, the WPF project will still throw error for missing references to assemblies with version 1021. The solution to this is to add binding redirect. To redirect all eight DPL assemblies from the WinForms suite, add an *app.config* file to the project with the following content:  
 
````XML
<?xml version="1.0" encoding="utf-8" ?>
<configuration>
  <runtime>
    <assemblyBinding xmlns="urn:schemas-microsoft-com:asm.v1">
 
    <dependentAssembly>
        <assemblyIdentity name="Telerik.Windows.Zip" publicKeyToken="5803cfa389c90ce7" />
        <bindingRedirect oldVersion="2014.3.1104.40" newVersion="2014.3.1021.40" />
      </dependentAssembly>
 
      <dependentAssembly>
        <assemblyIdentity name="Telerik.Windows.Documents.Spreadsheet" publicKeyToken="5803cfa389c90ce7" />
        <bindingRedirect oldVersion="2014.3.1104.40" newVersion="2014.3.1021.40" />
      </dependentAssembly>
 
      <dependentAssembly>
        <assemblyIdentity name="Telerik.Windows.Documents.Spreadsheet.FormatProviders.OpenXml" publicKeyToken="5803cfa389c90ce7" />
        <bindingRedirect oldVersion="2014.3.1104.40" newVersion="2014.3.1021.40" />
      </dependentAssembly>
      
      <dependentAssembly>
        <assemblyIdentity name="Telerik.Windows.Documents.Core" publicKeyToken="5803cfa389c90ce7" />
        <bindingRedirect oldVersion="2014.3.1104.40" newVersion="2014.3.1021.40" />
      </dependentAssembly>
 
      <dependentAssembly>
        <assemblyIdentity name="Telerik.Windows.Maths" publicKeyToken="5803cfa389c90ce7" />
        <bindingRedirect oldVersion="2014.3.1104.40" newVersion="2014.3.1021.40" />
      </dependentAssembly>
 
      <dependentAssembly>
        <assemblyIdentity name="Telerik.Windows.Documents.Spreadsheet.FormatProviders.Pdf" publicKeyToken="5803cfa389c90ce7" />
        <bindingRedirect oldVersion="2014.3.1104.40" newVersion="2014.3.1021.40" />
      </dependentAssembly>
 
      <dependentAssembly>
        <assemblyIdentity name="Telerik.Windows.Documents.Fixed" publicKeyToken="5803cfa389c90ce7" />
        <bindingRedirect oldVersion="2014.3.1104.40" newVersion="2014.3.1021.40" />
      </dependentAssembly>
       
    </assemblyBinding>
  </runtime>
</configuration>

````



3. Rebuild the project and you should be able to run it, as now, when the WPF project asks for a 1021 assembly, the binding redirect will redirect it to the 1104 assembly, and since it has the same content, the WPF project will be happy.  
   
In case you want to deploy it with ClickOnce, make sure app *ApplicationFiles* are included and publish the project.  
   
Note. If an error "*Reference in the manifest does not match the identity of the downloaded assembly*" is raised, make sure that in the project properties -&gt; Application tab -&gt; Resources -&gt; set manifest to "Create application without a manifest".


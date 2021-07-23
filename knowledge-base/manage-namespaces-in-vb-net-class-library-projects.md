---
title: Manage namespaces in VB.NET class library projects
description: Manage namespaces in VB.NET class library projects. Check it now!
type: how-to
page_title: Manage namespaces in VB.NET class library projects
slug: manage-namespaces-in-vb-net-class-library-projects
res_type: kb
---

|Article relates to|Author|Last modified|  
|----|----|----|----|
|RadControls for WinForms|Nikolay Diyanov|Jan 07, 2008| 
 
## How To
 
Manage namespaces in VB.NET class library projects, to allow using the classes defined in one project in another project be referencing them with the names they were define with.  
   
## Problem

Let’s take a look at the following example: 
We start with two projects: a class library project and an application project that references to the first one. In all the *vb* files in the class library project we use the *ClassLibrary* namespace. One might expect to access the classes from the class library project in the application project by including the *ClassLibrary* namespace. However, this will result in an invalid reference error.
 
The reason for this is that VB adds the value of the **ProjectName** property to the beginning of the namespaces defined in a project. In this way, if the **ProjectName** is set to *CustomControls*, and the namespace is **ClassLibrary**, the full namespace name will become **CustomControls.ClassLibrary**.
   
## Solution

To avoid this, in the VB class library project properties, you should leave the **RootNamespace** text field empty. This will allow you to access the classes only by using the **ClassLibrary** namespace.
   
   



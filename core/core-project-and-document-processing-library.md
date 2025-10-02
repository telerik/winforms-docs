---
title: Document Processing Library and WinForms .NET application
page_title: Document Processing Library and WinForms .NET application
description: Use Telerik Document Processing Libraries in WinForms projects to create, edit, and export documents without relying on external software.
slug: core-project-and-document-processing-library
tags: document processing, WinForms application, .NET
published: True
position: 5
---

# Telerik Document Processing Libraries and WinForms .NET application

Since the Telerik Document Processing Libraries depend on some types from WPF using any library in a WinForms application requires making changes in the project file. This is not necessary in the .NET framework projects where you can just add the references in Visual Studio. 

By default, when creating a WinForms .NET application the **Microsoft.WindowsDesktop.App.WindowsForms** framework is added. This does not include the required WPF references. 

![core-project-and-document-processing-library001](images/core-project-and-document-processing-library001.png)

To add the required references, you need to:

1\. Edit the project file:  

![core-project-and-document-processing-library002](images/core-project-and-document-processing-library002.png)

2\. Under the **UseWindowsForms** line, add the **UseWPF** tag. The file should look like this:

![core-project-and-document-processing-library003](images/core-project-and-document-processing-library003.png)

3\. Save and reload the file. Now, you should see the **Microsoft.WindowsDesktop.App** in the frameworks node:

![core-project-and-document-processing-library004](images/core-project-and-document-processing-library004.png)

This is all that is required and now you can continue with your application. 

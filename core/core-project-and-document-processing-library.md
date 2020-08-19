---
title: Document Processing Library and WinForms .NET Core application
page_title: Document Processing Library and WinForms .NET Core application
description:  
slug: core-project-and-document-processing-library
tags: document processing, WinForms application, .NET Core
published: True
position: 5
---

# Document Processing Library and WinForms .NET Core application. 

Since the Document Processing Library is depends on some types from WPF using the library in a WinForms application requires making changes in the project file. This is not necessary in the .NET framework projects where you can just add the refences in Visual Studio. 

By default, when creating a WinForms .NET Core application the **Microsoft.WindowsDesktop.App.WindowsForms** framework is added. This does not include the required WPF references. 

![core-project-and-document-processing-library001](images/core-project-and-document-processing-library001.png)

To add the required references you need to edit the project file.  

![core-project-and-document-processing-library002](images/core-project-and-document-processing-library002.png)

Under the **UseWindowsForms** line add the **UseWPF** tag. The file should look like this.

![core-project-and-document-processing-library003](images/core-project-and-document-processing-library003.png)

Save and reload the file. Now you should see the **Microsoft.WindowsDesktop.App** in the frameworks node.

![core-project-and-document-processing-library004](images/core-project-and-document-processing-library004.png)

This is all that is required and now you can continue with your application. 




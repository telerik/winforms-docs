---
title: Unblock .resx Files Downloaded in Telerik WinForms Source Code
description: This tutorial explains in details how to upgrade your Telerik trial to a licensed version.
type: how-to
page_title: How to Unblock .resx Files Downloaded in Telerik WinForms Source Code
slug: unblock-resx-files-downloaded-in-source-code 
position: 
tags: 
res_type: kb
---

### Environment
 
|Product Version|Product|Author|
|----|----|----|
|2023.2.718|UI for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 
## Description
 
When the Telerik WinForms [source code is downloaded]({%slug winforms/installation-deployment-and-distribution/download-product-files%}), in some situations **.resx** files may be blocked with an error and the projects cannot be built.

>caption Zipped Telerik Source Code

![unblock-resx-files-downloaded-in-source-code 001](images/unblock-resx-files-downloaded-in-source-code001.png)

Once the source code is downloaded and unzipped, if you try to build the application, you may observe the following build errors:

![unblock-resx-files-downloaded-in-source-code 002](images/unblock-resx-files-downloaded-in-source-code002.png)

## Solution

To unblock those files there is a simple solution for multiple-recursive unblocking:

1\. Use 'Open in Terminal' item of the solution in 'Solution Explorer'.

![unblock-resx-files-downloaded-in-source-code 003](images/unblock-resx-files-downloaded-in-source-code003.png)

2\. Enter the next commands in opened 'Developer PowerShell terminal':

Get-ChildItem *.resx -Recurse | Unblock-File

![unblock-resx-files-downloaded-in-source-code 004](images/unblock-resx-files-downloaded-in-source-code004.png)

3\. The command will complete without a confirmation.

4\. The projects in the solution now can be built.

# See Also

* [How to Attach Telerik Source Code to Your Project]({%slug attach-telerik-source-code-to-your-project%})
* [Download Product Files]({%slug winforms/installation-deployment-and-distribution/download-product-files%})



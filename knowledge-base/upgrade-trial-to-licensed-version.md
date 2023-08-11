---
title: How to Upgrade Trial to Licensed Version
description: This tutorial explains in details how to upgrade your Telerik trial to a licensed version.
type: how-to
page_title: How to Upgrade Trial to Licensed Version
slug: upgrade-trial-to-licensed-version
position: 
tags: 
ticketid: 1619579
res_type: kb
---

### Environment
 
|Product Version|Product|Author|
|----|----|----|
|2023.2.718|UI for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 
## Description

This tutorial explains in details how to upgrade your [Telerik Trial to a Licensed version]({%slug winforms/licensing/trial-vs-license%}).

Let's start with having a trial version installed on your machine and a project that uses the trial version:

>caption Access to the Trial installation file from your Telerik account

![upgrade-trial-to-licensed-version 001](images/upgrade-trial-to-licensed-version001.png)

If you expand the **References** in the Solution Explorer in Visual Studio, you will see the trial assemblies are added to the project:

>caption Trial Assemblies referred in the project

![upgrade-trial-to-licensed-version 002](images/upgrade-trial-to-licensed-version002.png)

## Solution

Once you purchase a Telerik license, you will have access to the *Purchase* **License Type** in your [Telerik account]({%slug winforms/installation-deployment-and-distribution/download-product-files%}):

![upgrade-trial-to-licensed-version 003](images/upgrade-trial-to-licensed-version003.png)

1\. **Download** the .msi file for the *Purchase* version.

2\. **Uninstall** the already installed *Trial* version:

![upgrade-trial-to-licensed-version 004](images/upgrade-trial-to-licensed-version004.png)

3\. **Install** the downloaded .msi file in step 1.

4\. [Update the references]({%slug winforms/installation-deployment-and-distribution/updating-assemblies-in-a-project%}) in your project with the assemblies from the latest installation.

5\. **Delete** the license.licx file. 

6\. **Rebuild** your project, close Visual Studio and open it again to make sure that no references are kept in the memory by Visual Studio. 

7\. **Ensure** that [no old versions are available in GAC]({%slug radcontrols-examine-the-gac%}): 

# See Also

* [Trial vs Licensed version]({%slug winforms/licensing/trial-vs-license%})
* [Download Product Files]({%slug winforms/installation-deployment-and-distribution/download-product-files%}):



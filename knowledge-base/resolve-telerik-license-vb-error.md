---
title: Resolving TelerikLicense.vb Build Error for Telerik UI for WinForms 2025 Q1 License Key
description: Learn how to resolvr TelerikLicense.vb Build Error for Telerik UI for WinForms 2025 Q1 License Key
type: how-to
page_title: Resolving TelerikLicense.vb Build Error for Telerik UI for WinForms 2025 Q1 License Key
slug: resolve-telerik-license-vb-error
tags: licensing , key, winforms, wf, vb, error, build
res_type: kb
---

## Environment

| Product | Version
| ---- | ---- |
| Telerik UI for .NET WinForms | 2025 Q1 or later |

## Description

Updating .NET projects in Visual Basics with the new 2025 Q1 assemblies for Progress® Telerik® UI for WinForms results in a build error related to the TelerikLicense.vb file. The build error **"BC30034: Bracketed identifier is missing closing ']'"** occurs when trying to follow the instructions for adding the license key to the project. Additionally, the Telerik License Key view uses C# syntax, which the VB compiler does not understand.

The cause of the build error is an incorrect syntax used in the **TelerikLicense.vb** file. The VB compiler does not recognize the C# syntax provided in the Telerik License Key view.

## Solution

To resolve the build error, use the correct VB syntax in the **TelerikLicense.vb** file. Replace the content of the TelerikLicense.vb file with the following VB syntax:

````VB.NET

<Assembly: Telerik.Licensing.EvidenceAttribute("...your license code string...")>

```` 

Replace *...your license code string...* with your actual license code string from your Telerik account.

Alternatively, to prevent licensing warnings and make the license key available to all Telerik .NET apps you develop on your local machine, follow these steps:

1. Go to the **License Keys** page in your Telerik account.
2. Click the **Download License Key** button.
3. Save the **telerik-license.txt** file to one of the following directories on your local machine:
    * %AppData%\Telerik\telerik-license.txt (e.g., C:\Users\...\AppData\Roaming\Telerik\telerik-license.txt)
    * C:\inetpub\wwwroot\telerik-license.txt
    * C:\inetpub\telerik-license.txt
    * C:\telerik-license.txt


## See Also

* [Setting Up Your License Key]({%slug license-key%})
* [License Activation Errors and Warnings]({%slug license-errors-warnings%})
* [Frequently Asked Questions about Your Telerik UI for .NET WinForms License Key]({%slug licensing-faq%})
* [Adding the License Key to CI Services]({%slug add-license-to-ci-cd%})

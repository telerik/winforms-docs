---
title: License Activation Errors and Warnings
page_title: License Activation Errors and Warnings
description: Learn what can cause an invalid license for Telerik UI for .NET WinForms, learn what are the common warnings and errors, and learn how to solve them.
slug: license-errors-warnings
tags: winforms,wf,components,license,activate,download,error,warning
position: 4
---

# License Activation Errors and Warnings

Starting with the __2025 Q1 release__, using Telerik UI for .NET WinForms without a license or with an invalid license causes specific license warnings and errors. This article defines what an invalid license is, explains what is causing it, and describes the related license warnings and errors.

## Invalid License

An invalid license can be caused by any of the following:

- Using an expired subscription license—subscription licenses expire at the end of the subscription term.
- Using a perpetual license for product versions released outside the validity period of your license.
- Using an expired trial license.
- A missing license for Telerik UI for .NET WinForms.
- Not installing a license key in your application.
- Not updating the license key after renewing your Telerik UI for .NET WinForms license.

## License Warnings and Errors

When using Telerik UI for .NET WinForms in a project with an expired or missing license, the `Telerik.Licensing` build task will indicate the following errors:

| Error or Condition                              | Solution                                                                                      |
|----------------------------------------|-----------------------------------------------------------------------------------------------|
| `No license key is detected` | [Set up a license key]({%slug license-key%}) to activate the UI controls and remove the error message. | 
| `Invalid license key` | [Download a new license key]({%slug license-key%}#downloading-the-license-key) and use it to activate the UI controls and remove the error message. |
| `Your subscription license has expired.` | Renew your subscription and [download a new license key]({%slug license-key%}#downloading-the-license-key). |
| `Your perpetual license is invalid.` | You are using a product version released outside the validity period of your perpetual license. To remove the error message, do either of the following: |
|                                        | - Renew your license, then download a new license key and use it to activate the controls. |
|                                        | - Downgrade to a product version included in your perpetual license as indicated in the message. |
| `Your trial license has expired.`        | Purchase a commercial license to continue using the product. |
| `Your license is not valid for the detected product(s).` | Review the purchase options for the listed products. Alternatively, remove the references to the listed packages from `package.json`. |

## See Also

* [Setting Up Your License Key]({%slug license-key%})
* [Adding the License Key to CI Services]({%slug add-license-to-ci-cd%})
* [Frequently Asked Questions about Your Telerik UI for .NET WinForms License Key]({%slug licensing-faq%})
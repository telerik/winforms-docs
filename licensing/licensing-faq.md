---
title: Frequently Asked Questions
page_title: Frequently Asked Questions about Your Telerik UI for .NET WinForms License
description: Learn what can cause an invalid license for Telerik UI for .NET WinForms, learn what are the common warnings and errors, and learn how to solve them.
slug: licensing-faq
tags: WinForms,components,license,activate,download,error,warning,questions,faq
position: 3
---

# Frequently Asked Questions about Your Telerik UI for .NET WinForms License

This article lists the answers to the most frequently asked questions (FAQs) about working with the Telerik UI for .NET WinForms license key.

## Does the license key expire?

Yes, the license key expires at the end of your subscription:

* For trial users, this is at the end of your 30-day trial period.
* For commercial license holders, this is when your subscription term expires.

You need to download and install a new license key after:

* Starting a new trial.
* Buying a new license.
* Renewing an existing license.
* Upgrading an existing license.

An expired [perpetual license](https://www.telerik.com/purchase/faq/licensing-purchasing#licensing) key is valid for all Telerik UI for .NET WinForms versions published before the license's expiration date.

## Will Telerik UI for .NET WinForms function with an expired license key?

This depends on the [Telerik UI for .NET WinForms license type (perpetual, subscription, or trial)](https://www.telerik.com/purchase/faq/licensing-purchasing#licensing):

* *Perpetual licenses* function normally with an expired license key, as long as the application is using a Telerik UI for .NET WinForms version that was released before the expiration date of the license.
* *Subscription licenses* function normally in already deployed applications, but you cannot rebuild and republish the app.
* *Trial licenses* function normally only within the 30-day trial period.

If none of the above conditions are met, the following behaviors occur:

* A modal dialog appears on application startup.
* A watermark appears on Telerik UI .NET WinForms components.
* A warning message appears in the application's build log.

## I updated the Telerik UI for .NET WinForms version in my project and license errors appeared. Why?

The most likely cause is that the new Telerik UI for .NET WinForms version was released after the expiration date of your current license or license key. To fix this issue:

1. Renew your Telerik UI for .NET WinForms license if necessary.
1. Download a new [license key file]({%slug set-up-your-license%}) and use it to activate the components.

## Can I use the same license key in multiple builds?

You can use your personal license key in multiple pipelines, builds, and environments. However, each individual developer must use a unique personal license key.

## Do I need an Internet connection to activate the license?

No, the license activation and validation are performed entirely offline.

## Do I have to add the license key to source control?

No, you do not have to add the `telerik-license.txt` license key file or its contents to source control.

Do not store the license key in plain text, for example, in a GitHub Actions Workflow definition. Build servers must use the `TELERIK_LICENSE` environment variable described in [Adding the License Key to CI Services]({%slug add-license-to-ci-cd%}).

## What happens if both the environment variable and the license key file are present?

If both the `TELERIK_LICENSE` environment variable and the `telerik-license.txt` file are present, then the environment variable will be used.

To use the license key file, unset the environment variable.

## What happens if several license key files exist?

If both a global and a project-specific `telerik-license.txt` files exist, then the project-specific license key will be used.

## My team has more than one license holders. Which key do we have to use?

* [Every developer must be assigned their own license or seat](https://www.telerik.com/purchase/faq/licensing-purchasing).
* Every developer must use a license key that is associated with their personal Telerik account.
* In a CI/CD environment, use any of the license keys in your team.

## Are earlier versions of Telerik UI for .NET WinForms affected?

No, versions released prior to January 2025 do not require a license key.

## See Also

* [Setting Up Your License Key]({%slug license-key%})
* [License Activation Errors and Warnings]({%slug license-errors-warnings%})
* [Adding the License Key to CI Services]({%slug add-license-to-ci-cd%})
---
title: Adding Your License Key to CI Services
page_title: Adding Your License Key to CI Services
description: Learn how to activate the Telerik UI for .NET WinForms components by downloading and setting up your Telerik components license key for use in CI/CD environments.
slug: add-license-to-ci-cd
tags: winforms,components,license,activate,download,ci,cd,environment
position: 2
---

# Adding Your License Key to CI/CD Services

This article describes how to set up and activate your Telerik UI for .NET WinForms [license key]({%slug license-key%}) across a few popular CI/CD services by using environment variables.

When working with CI/CD platforms, always add the `Telerik.Licensing` NuGet package as a project dependency. This package activates the Telerik UI for .NET MAUI components at build time by using the provided license key.

> If you cannot use NuGet packages in your project, see the workaround in the [Adding Your License Key to CI Platforms as a Code Snippet]({%slug add-license-as-snippet-ci-cd%}) KB article.
The license activation process in a CI/CD environment involves the following steps:

1. [Download]({%slug license-key%}) a license key from your Telerik account.

1. Add the `Telerik.Licensing` NuGet package as a project dependency.

    ```
    <PackageReference Include="Telerik.Licensing" Version="1.*" />
    ```
1. [Create an environment variable](#creating-an-environment-variable) named `TELERIK_LICENSE` and add your Telerik UI for .NET MAUI license key as a value.
## Creating an Environment Variable
The recommended approach for providing your license key to the `Telerik.Licensing` NuGet package is to use environment variables. Each CI/CD platform has a different process for setting environment variables and this article lists only some of the most popular examples.
### Azure Pipelines (YAML)
1. Create a new [user-defined variable](https://docs.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops&tabs=yaml%2Cbatch) named `TELERIK_LICENSE`.
1. Paste the contents of the license key file as a value.
### Azure Pipelines (Classic)
1. Create a new [user-defined variable](https://docs.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops&tabs=classic%2Cbatch) named `TELERIK_LICENSE`.
1. Paste the contents of the license key file as a value.
### GitHub Actions
1. Create a new [Repository Secret](https://docs.github.com/en/actions/reference/encrypted-secrets#creating-encrypted-secrets-for-a-repository) or an [Organization Secret](https://docs.github.com/en/actions/reference/encrypted-secrets#creating-encrypted-secrets-for-an-organization).
1. Set the name of the secret to `TELERIK_LICENSE` and paste the contents of the license file as a value.
1. After running npm install or yarn, add a build step to activate the license:
```YAML
env:
    TELERIK_LICENSE: ${{ secrets.TELERIK_LICENSE }}
```

## See Also

* [Setting Up Your License Key]({%slug license-key%})
* [License Activation Errors and Warnings]({%slug license-errors-warnings%})
* [Frequently Asked Questions about Your Telerik UI for .NET WinForms License Key]({%slug licensing-faq%})
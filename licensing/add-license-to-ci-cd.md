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

When working with CI/CD platforms, always add the `Telerik.Licensing` NuGet package as a project dependency. This package activates the Telerik UI for .NET WinForms components at build time by using the provided license key.

> If you cannot use NuGet packages in your project, see the workaround in the [Adding Your License Key to CI Platforms as a Code Snippet]({%slug add-license-as-snippet-ci-cd%}) KB article.

The license activation process in a CI/CD environment involves the following steps:

1. [Download]({%slug license-key%}) a license key from your Telerik account.

1. Add the `Telerik.Licensing` NuGet package as a project dependency.

    ````XML
    <PackageReference Include="Telerik.Licensing" Version="1.*" />
    ````
1. [Create an environment variable](#creating-an-environment-variable) named `TELERIK_LICENSE` and add your Telerik UI for .NET WinForms license key as a value.

## Creating an Environment Variable
The recommended approach for providing your license key to the `Telerik.Licensing` NuGet package is to use environment variables. Each CI/CD platform has a different process for setting environment variables and this article lists only some of the most popular examples.

### GitHub Actions

1. Create a new [Repository Secret](https://docs.github.com/en/actions/reference/encrypted-secrets#creating-encrypted-secrets-for-a-repository) or an [Organization Secret](https://docs.github.com/en/actions/reference/encrypted-secrets#creating-encrypted-secrets-for-an-organization).

1. Set the name of the secret to `TELERIK_LICENSE` and paste the contents of the license file as a value.

1. After running `npm install` or `yarn`, add a build step to activate the license:

	```YML
		env:
			TELERIK_LICENSE: ${{ "{{ secrets.TELERIK_LICENSE }}" }}
	```

### Azure Pipelines

1. Create a new [secret variable](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops&tabs=yaml%2Cbatch#secret-variables) named `TELERIK_LICENSE`.

1. Paste the contents of the license key file as a value.

	> Always consider the Variable size limit—if you are using a [Variable Group](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/variable-groups?view=azure-devops&tabs=azure-pipelines-ui%2Cyaml), the license key will typically exceed the character limit for the variable values. The only way to have a long value in the Variable Group is to [link it from Azure Key Vault](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/link-variable-groups-to-key-vaults?view=azure-devops). If you cannot use a Key Vault, then use a normal pipeline variable instead or use the [Secure files approach instead](link-to-section).
	
## Using Secure Files on Azure DevOps

[Secure files](https://learn.microsoft.com/en-us/azure/devops/pipelines/library/secure-files?view=azure-devops) are an alternative approach for sharing the license key file in Azure Pipelines that does not have the size limitations of environment variables.

You have two options for the file-based approach. Set the `TELERIK_LICENSE_PATH` variable or add a file named `telerik-license.txt` to the project directory or a parent directory.

>Make sure to reference Telerik.Licensing v.1.4.10 or later.

For a walkthrough example and more details, see [DevOps Examples - Telerik License with Secure File in Classic Pipeline](https://github.com/LanceMcCarthy/DevOpsExamples?tab=readme-ov-file#classic-pipeline)

### YAML Pipeline

With a YAML pipeline, you can use the [DownloadSecureFile@1](https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/download-secure-file-v1?view=azure-pipelines) task, then use `$(name.secureFilePath)` to reference it. For example:

```yaml
   - task: DownloadSecureFile@1
    name: DownloadTelerikLicenseFile # defining the 'name' is important
    displayName: 'Download Telerik License Key File'
    inputs:
      secureFile: 'telerik-license.txt'

  - task: MSBuild@1
    displayName: 'Build Project'
    inputs:
      solution: 'myapp.csproj'
      platform: Any CPU
      configuration: Release
      msbuildArguments: '/p:RestorePackages=false'
    env:
      # use the name.secureFilePath value to set TELERIK_LICENSE_PATH
      TELERIK_LICENSE_PATH: $(DownloadTelerikLicenseFile.secureFilePath)
```

### Classic Pipeline

With a classic pipeline, use the “Download secure file” task and a PowerShell script to set `TELERIK_LICENSE_PATH` to the secure file path.

1. Add a “Download secure file” task and set the output variable's name to `telerikLicense`.
	
 	![](images/installing-license-to-ci-services-0.png)

1. Add a PowerShell task and set the `TELERIK_LICENSE_PATH` variable to the `secureFilePath` property of the output variable.
	
 	![](images/installing-license-to-ci-services-1.png)

The script to set the environment variable is quoted below:

```powershell
	Write-Host "Setting TELERIK_LICENSE_PATH to $(telerikLicense.secureFilePath)"
	Write-Host "##vso[task.setvariable variable=TELERIK_LICENSE_PATH;]$(telerikLicense.secureFilePath)"
```

Alternatively, copy the file into the repository directory:

```powershell
	echo "Copying $(telerikLicense.secureFilePath) to $(Build.Repository.LocalPath)/telerik-license.txt"
	Copy-Item -Path $(telerikLicense.secureFilePath) -Destination "$(Build.Repository.LocalPath)/telerik-license.txt" -Force
```

## See Also

* [Setting Up Your License Key]({%slug license-key%})
* [License Activation Errors and Warnings]({%slug license-errors-warnings%})
* [Frequently Asked Questions about Your Telerik UI for .NET WinForms License Key]({%slug licensing-faq%})

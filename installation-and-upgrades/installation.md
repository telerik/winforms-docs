---
title: Installation
page_title: Setup the Telerik WinForms Telerik CLI - Installation, Setup, and Command Reference for Telerik UI for WinForms
description: Install and use the Telerik CLI to set up the Telerik NuGet feed, create WinForms projects from templates, and update Telerik UI for WinForms packages from the command line.
slug: installation
tags: telerik,cli,command line,cli,dotnet tool,nuget,setup,install,create project,update,template,winforms,telerik,getting started,environment
published: True
position: 1
---

# Quick Start Installation

The easiest way to install Telerik UI for WinForms is to use the [Telerik CLI]({%slug telerik-cli%}). This is a .NET global tool that automates common Telerik development tasks from the command line.

## Setup Development Environment

To set up the environment needed to start development with Telerik UI for WinForms, install the Telerik CLI tool and run the `setup` command. This will log you into your Telerik account, download the [Telerik UI for WinForms license key file]({%slug license-key%}), and set up the [Telerik NuGet package source]({%slug telerik-cli%}#set-up-telerik-nuget-feed).

1. Open any terminal and install the Telerik CLI.

	```
	dotnet tool install -g Telerik.CLI
	```
	
1. Call the `telerik setup winforms` command in the terminal.

	```
	telerik setup winforms
	```

1. Use the __NuGet Package Manager__ to install the needed Telerik packages. For example, `Telerik.UI.for.WinForms.AllControls`.

	```
	<PackageReference Include="Telerik.UI.for.WinForms.AllControls" Version="*" />
	```

### Install License Key

> This step is automatically executed when the `telerik setup winforms` command is invoked.

To download and install a Telerik license key, you can use the `telerik license get-key` command.

```
telerik license get-key
```

### Setup Telerik NuGet Package Source

> This step is automatically executed when the `telerik setup winforms` command is invoked.

>important Starting with the Q3 2026 release, all Telerik UI for WinForms NuGet packages will also be available on NuGet.org. If you use nuget.org, you will not need to configure the Telerik NuGet server.

To automatically configure the Telerik NuGet feed, you can use the `telerik nuget config` command. This adds a package source in the NuGet.config file that points to `https://nuget.telerik.com/v3/index.json`.

```
telerik nuget config
```

### Other Installation Options

The __recommended installation approach__ is using __Telerik CLI__ and __NuGet packages__, as it is easier to use and maintain. In addition to that, Telerik distributes several more installation options:

* [Install Telerik UI for WinForms from NuGet packages]({%slug winforms/nuget%})

* [Install Telerik UI for WinForms with the MSI installer]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%})

* [Install Telerik UI for WinForms from Progress Control Panel]({%slug installing-from-progress-control-panel%})
---
title: Analyze API Changes Before Upgrade
page_title: Telerik CLI migrate analyze - Detect WinForms Breaking Changes
description: Use the Telerik CLI migrate analyze command to scan Telerik UI for WinForms projects for API breaking changes between versions. Learn project, directory, and file scanning, version selection, and JSON output.
components: ["general"]
slug: telerik-cli-migrate-analyzer
tags: telerik,winforms,cli,migrate,analyze,breaking changes,upgrade,upgrading,API compatibility,command line
published: True
position: 5
tag: new
---

# Detecting WinForms Breaking Changes with the Telerik CLI migrate analyze Command

The `migrate analyze` command of the [Telerik CLI]({%slug telerik-cli%}) scans Telerik UI for WinForms projects and reports API breaking changes between product versions. Use it before upgrading a project to identify affected C# or VB.NET source code and review the recommended changes.

## Why Use the migrate Command

Upgrading to a newer Telerik UI for WinForms release can involve breaking API changes, such as removed or renamed members. Instead of upgrading blindly and fixing compiler errors one at a time, `migrate analyze` scans your project up front and lists affected files, the exact line and column, and guidance on how to update the code. The command works through static analysis, so your project does not need to build successfully first.

## Prerequisites

The `migrate analyze` command requires the Telerik CLI to be installed as a .NET global tool.

```powershell
dotnet tool install -g Telerik.CLI
```

For more information, see [Setup and Installation with Telerik CLI]({%slug telerik-cli%}#how-to-install-the-telerik-cli).

## Quick Start

To analyze a project and let the command auto-detect your current Telerik version from the project references, run the following command.

```powershell
telerik migrate analyze --product winforms --project ./MyWinFormsApp.csproj
```

>note Auto-detection relies on the project referencing Telerik packages or assemblies in a recognizable way. If the command cannot determine your current version, pass `--from-version` explicitly.

## More Usage Examples

To pin an explicit version range instead of relying on auto-detection, use `--from-version` and `--to-version`.

```powershell
telerik migrate analyze --product winforms --project ./MyWinFormsApp.csproj --from-version 2020.3.915 --to-version 2026.2.701
```

To scan a source directory recursively without a project file, use `--directory`.

```powershell
telerik migrate analyze --product winforms --directory ./src --from-version 2024.4.1111
```

To analyze only specific files, use `--file` with one or more space-separated paths. For example, include a form and its designer file.

```powershell
telerik migrate analyze --product winforms --file MainForm.cs MainForm.Designer.cs --from-version 2024.4.1111
```

To get machine-readable output for scripting or CI pipelines, add `--json`.

```powershell
telerik migrate analyze --product winforms --project ./MyWinFormsApp.csproj --json
```

## Output Formats

By default, the command prints a human-readable table to the console.

```text
Telerik version range: 2020.3.915 → 2026.2.701
Files discovered: 42, analyzed: 18
Breaking changes found: 7

--------------------------------------------------------------------------------
C:\MyApp\MainForm.cs
--------------------------------------------------------------------------------
  L14:C32  [Removed]  RadGridView.OldPropertyName
           Use the replacement property instead.
```

The output above is illustrative. The reported control members and recommended changes depend on the breaking changes detected for the versions you analyze.

Pass the `--json` option to the `migrate analyze` command to get the same information as structured data, suitable for CI pipelines.

```json
{
  "exitCode": 1,
  "message": "Analysis complete (2020.3.915 → 2026.2.701). 7 breaking change(s) detected.",
  "success": false,
  "data": [
    {
      "filePath": "C:\\MyApp\\MainForm.cs",
      "line": 14,
      "column": 32,
      "typeName": "RadGridView",
      "member": "OldPropertyName",
      "memberKind": "property",
      "changeKind": "removed",
      "old": "",
      "new": "",
      "message": "Use the replacement property instead.",
      "confidence": "direct"
    }
  ]
}
```

To save the results to a file for later review, redirect the output.

```powershell
telerik migrate analyze --product winforms --project ./MyWinFormsApp.csproj --json > findings.json
```

## See Also

* [Setup and Installation with Telerik CLI]({%slug telerik-cli%})
* [Use the WinForms MCP Upgrade Assistant]({%slug ai-upgrade-assistant%})

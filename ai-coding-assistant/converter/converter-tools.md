---
title: Telerik Converter MCP Tools
page_title: Telerik UI for WinForms Converter - MCP Tools, Prompts, and Converter Engine Reference
description: Reference documentation for the Telerik WinForms Converter MCP tools, pre-built prompts, converter engine internals, migration strategy, and MCP resources. Covers telerik_convert_file, telerik_analyze_project, telerik_get_migration_plan parameters and behavior.
slug: converter-tools
tags: telerik,winforms,converter,mcp,mcp tools,telerik_convert_file,telerik_analyze_project,telerik_get_migration_plan,migration strategy,converter engine,roslyn,prompts
published: True
position: 3
tag: preview
---

# Telerik Converter MCP Tools Reference

The Telerik WinForms MCP server exposes the following migration-specific tools for the converter. The AI agent calls these tools automatically in a sequence when you prompt it to migrate your application. You do not call the tools manually — the AI agent manages the workflow for you.

### Tool: telerik_get_migration_plan

It is the starting point for migration. Returns the recommended migration workflow, critical rules, and anti-patterns to avoid. The AI agent calls this tool first before starting any migration.

**What it returns:**

* A step-by-step workflow with the recommended tool order.
* The migration strategy (Divide and Conquer approach with per-class and full-project workflows).
* Critical rules the AI agent must follow (e.g., always use the converter tool instead of editing code manually, convert one class at a time, build after each pair).
* Anti-patterns to avoid (e.g., creating wrapper classes, batch-converting all files at once).
* File ordering guidance and a list of files to skip (`.resx`, `.resources`, `.settings`).
* Error handling guidance for conversion failures, build failures, and designer errors.

### Tool: telerik_analyze_project

Analyzes a `.csproj` file to determine target framework, project style, and existing Telerik references. The AI agent calls this tool once at the start of the conversion.

**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `csprojPath` | string | The absolute path to the `.csproj` file. |

**What it returns:**

* Project name, target framework (e.g., `net8.0-windows`, `v4.8`), and project style (`SDK` or `Classic`).
* Output type (e.g., `WinExe`, `Library`).
* Existing Telerik references (NuGet packages and assembly references).
* Whether the `Telerik.UI.for.WinForms.AllControls` NuGet package is already installed.
* Whether Windows Forms is enabled in the project.
* Whether a `packages.config` file exists.
* Recommendations based on the analysis (e.g., migrate to SDK-style, add the AllControls NuGet package).

### Tool: telerik_add_package_reference

Returns the correct way to add the `Telerik.UI.for.WinForms.AllControls` NuGet package based on the project analysis. For Classic-style .NET Framework projects, this tool can directly modify the `.csproj` file to add the package reference.

**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `targetFramework` | string (optional) | Target framework from project analysis (e.g., `net8.0-windows`, `v4.8`). |
| `projectStyle` | string (optional) | `SDK` or `Classic`. |
| `csprojPath` | string (optional) | The absolute path to the `.csproj` file. |

**What it returns:**

* The NuGet package name (`Telerik.UI.for.WinForms.AllControls`).
* The install method (`PackageReference` for SDK-style, `PackageReference` or `packages.config` for Classic).
* An XML snippet to add to the `.csproj` file.
* The CLI command to install the package (`dotnet add package` or `Install-Package`).
* Telerik NuGet source configuration (URL, setup instructions, and a sample `NuGet.config` template).
* Warnings and notes (e.g., authentication requirements, .NET Framework-specific notes).

### Tool: telerik_convert_file

The core conversion tool. Converts a C# or VB.NET file from Microsoft WinForms controls to Telerik equivalents using the Roslyn-based converter engine.

>important The AI agent always uses this tool for WinForms code changes. It never edits WinForms code manually.

**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `filePath` | string | Absolute path to the source file (`.cs` or `.vb`). |
| `dryRun` | bool (optional) | If `true`, returns the converted source without modifying the file on disk. Defaults to `false`. |

**What it does:**

* Parses the source file using Roslyn.
* Applies type mappings (e.g., `Button` → `RadButton`, `DataGridView` → `RadGridView`).
* Applies property mappings, enum mappings, and context-specific transformations.
* Adds required `using` directives for Telerik namespaces.
* Removes or comments out properties that have no Telerik equivalent.
* Creates a `.bak` backup of the original file before overwriting (when `dryRun` is `false`).

**What it returns:**

* A summary of changes: total changes, types converted, properties changed, events updated, and properties removed.
* A list of items to review — properties or events that were removed because they have no direct Telerik equivalent. The AI agent reviews these and asks the `telerik_winforms_assistant` tool for potential alternatives.
* Warnings (if any).
* In dry-run mode: the full list of changes with line numbers, original source lines, and converted source lines.

### Tool: telerik_get_theme_setup

Returns instructions for configuring a Telerik theme in the application. The AI agent calls this tool after all forms have been converted.

**What it returns:**

* The recommended theme (`Fluent`).
* Instructions for applying the theme via `App.config` (preferred method) or `Program.cs` (fallback).
* Sample `App.config` and `Program.cs` snippets.
* A list of available themes (e.g., `Fluent`, `FluentDark`).

### Tool: telerik_winforms_assistant

The general-purpose AI coding assistant tool. The AI agent uses this tool to ask about Telerik UI for WinForms features, components, and APIs. In the context of migration, the agent calls this tool to research alternatives for properties or events that were removed during conversion (items listed in the `itemsToReview` array).

**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `query` | string | The question to ask about Telerik UI for WinForms. |
| `component` | enum (optional) | The specific Telerik UI for WinForms component to ask about. |

## Pre-built Prompts

The MCP server also provides pre-built prompts that you can select from the MCP prompt list in supported clients:

| Prompt | Description |
|--------|-------------|
| **Migrate WinForms Project to Telerik** (`migrate-project`) | Migrates an entire WinForms application to Telerik UI for WinForms using the recommended step-by-step workflow. Each converted file is backed up as a `.bak` file before being overwritten. |
| **Migrate WinForms Project to Telerik (Dry Run)** (`migrate-project-dryrun`) | Same as `migrate-project` but uses dry-run mode so you can review each file's changes before they are applied. Takes more time because each file is reviewed before being written. |
| **Convert Single File to Telerik** (`convert-file`) | Converts a single WinForms file to use Telerik RadControls. If applied to a `Designer.cs` file, also converts the corresponding `.cs` file. |

## Converter Engine

The Roslyn-based converter engine performs the following transformations:

### Type Mappings

Standard Microsoft WinForms control types are mapped to their Telerik equivalents:

| Microsoft Control | Telerik Control |
|-------------------|-----------------|
| `Button` | `RadButton` |
| `TextBox` | `RadTextBox` |
| `DataGridView` | `RadGridView` |
| `ComboBox` | `RadDropDownList` |
| `DateTimePicker` | `RadDateTimePicker` |
| `TreeView` | `RadTreeView` |
| `ListView` | `RadListView` |
| `MenuStrip` | `RadMenu` |
| `ToolStrip` | `RadCommandBar` |
| `StatusStrip` | `RadStatusStrip` |
| `SplitContainer` | `RadSplitContainer` |
| `Form` | `RadForm` |
| ... | ... |

>tip The full mapping database is embedded in the converter and covers a comprehensive set of Microsoft WinForms controls and their properties, events, and enum values.

### Context-Specific Type Mappings

The same Microsoft control type can map to different Telerik types depending on which container it belongs to:

```csharp
// A ToolStripButton inside a ToolStrip becomes a CommandBarButton
private CommandBarButton tsbBack;

// A ToolStripSeparator inside a MenuStrip becomes a RadMenuSeparatorItem
private RadMenuSeparatorItem menuSep;
```

The converter pre-scans the code to determine which container each control belongs to (via `Controls.Add()` and `AddRange()` calls), and applies the correct type mapping based on context.

### Property and Enum Mappings

Properties and enum values are mapped to their Telerik equivalents:

```csharp
// Before
dgv.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;

// After
dgv.AutoSizeColumnsMode = GridViewAutoSizeColumnsMode.Fill;
```

### Unsupported Property Removal

Properties that have no Telerik equivalent are commented out with a clear note:

```csharp
// Before
this.button1.FlatStyle = FlatStyle.Flat;

// After
// Removed (no Telerik equivalent): this.button1.FlatStyle = FlatStyle.Flat;
```

These removed properties are listed in the `itemsToReview` array returned by the converter. The AI agent reviews each item and uses the `telerik_winforms_assistant` tool to check whether a Telerik alternative exists.

>important The converter only removes properties from controls that are being converted to Telerik types. Custom controls or unmapped types are left untouched.

### Using Directives

The converter automatically adds the required `using` directives for Telerik namespaces (e.g., `Telerik.WinControls.UI`).

### Backup Files

When running in non-dry-run mode (the default), the converter creates a `.bak` backup of each file before overwriting it. This provides a safety net in case you need to revert changes.

## Interactive Path Resolution (Elicitation)

Some MCP tools need file paths that the AI agent may not always resolve correctly (for example, a `.csproj` path or a project root directory). When a path cannot be found or falls outside the allowed workspace, the MCP server uses [MCP elicitation](https://modelcontextprotocol.io/specification/2025-06-18/server/utilities/elicitation) to ask you directly for the correct path. This means you may see a prompt in your IDE asking you to provide or confirm a file path during the migration process.

Elicitation is used in the following scenarios:

* **`.csproj` path not found** — If the `.csproj` path provided by the AI agent does not exist on disk, the `telerik_analyze_project` and `telerik_add_package_reference` tools will prompt you for the correct path.
* **Path outside workspace** — If the resolved path is outside the MCP client's declared workspace roots, the tool will inform you of the allowed boundaries and ask you to provide a path within the workspace.
* **Project root discovery** — If the MCP client does not support workspace roots, the server will ask you once per session for the project root directory. All subsequent path validations will use this boundary.

>tip Elicitation requires MCP client support. If your client does not support elicitation, the tools will return an error message with guidance instead.

## Migration Strategy

The converter follows a **Divide and Conquer** strategy for migrating applications:

### Per-Form Workflow

1. Convert the `FormName.Designer.cs` file first (contains control declarations).
2. Convert the `FormName.cs` file immediately after (contains event handlers).
3. Review the `itemsToReview` array — properties or events the converter removed because they have no direct Telerik equivalent.
4. Build the project (`dotnet build`) and fix only errors in the files just converted.
5. Repeat build-and-fix until the converted files are error-free.
6. Move to the next form or user control.

### Full-Project Workflow

1. Analyze the project and identify all forms and user controls.
2. Add Telerik NuGet package references and run `dotnet restore`.
3. For each form/user control:
   - Convert `Designer.cs`, then `.cs`.
   - Build and fix errors in that pair only.
   - Move to the next form/user control.
4. After all forms are converted, run a full build to fix any cross-form errors.
5. Apply theme setup.
6. Final verification build.

### Files to Skip

The following file types do not require conversion:

* `.resx` — Resource files
* `.resources` — Compiled resources
* `.settings` — Application settings files
* Non-WinForms code (services, models, utilities)

## Usage Example

To migrate a WinForms application, open your project in an MCP-compatible IDE (such as Visual Studio or VS Code with Copilot), ensure the [Telerik WinForms MCP server is configured]({%slug ai-mcp-server%}), and prompt the AI agent to migrate this WinForms application to Telerik UI for WinForms. 

> For a complete step-by-step walkthrough, see [Getting Started with the Telerik WinForms Converter]({%slug converter-getting-started%}).

The AI agent will:

1. Call `telerik_get_migration_plan` to understand the workflow.
2. Call `telerik_analyze_project` to inspect your project.
3. Call `telerik_add_package_reference` to add the Telerik NuGet package.
4. For each form, call `telerik_convert_file` on the `Designer.cs` and `.cs` files, build, and fix errors.
5. Call `telerik_get_theme_setup` to configure the Fluent theme.
6. Run a final verification build.

To convert a single file:

```
#telerik-winforms-assistant Convert this file to Telerik UI for WinForms controls
```

To perform a dry run (review changes before applying):

```
#telerik-winforms-assistant Migrate this WinForms application to Telerik UI for WinForms using dry run mode
```

## MCP Resources

The MCP server also exposes template resources that the AI agent (or you) can reference:

| Resource URI | Description |
|-------------|-------------|
| `telerik://templates/app.config` | Sample `App.config` with Telerik Fluent theme configuration. |
| `telerik://templates/program.cs` | Sample `Program.cs` with Telerik theme initialization via code. |
| `telerik://templates/nuget.config` | Sample `NuGet.config` with the Telerik NuGet feed configured. |

## See Also

* [Telerik WinForms Converter Overview]({%slug converter%})
* [Getting Started with the WinForms Converter]({%slug converter-getting-started%})
* [Configure the Telerik WinForms MCP Server]({%slug ai-mcp-server%})

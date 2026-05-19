---
title: Overview
page_title: Telerik UI for WinForms Converter - Automated AI-Powered Migration from Microsoft WinForms Controls to Telerik
description: The Telerik WinForms Converter is an AI-assisted migration tool in the MCP Server that automatically converts Microsoft WinForms controls to Telerik UI for WinForms. Supports C# and VB.NET projects targeting .NET and also .NET Framework projects.
slug: converter
tags: telerik,winforms,converter,tool,migration,convert,mcp,mcp server,automated migration,radgridview,radbutton,radtextbox,ai,code generation,upgrade,modernize
published: True
position: 0
tag: preview
---

# Telerik UI for WinForms Converter

The Telerik UI for WinForms Converter is an automated migration tool that converts existing Microsoft WinForms applications to use Telerik UI for WinForms controls. The converter is integrated into the [Telerik WinForms MCP Server]({%slug ai-mcp-server%}) and works with AI-powered IDEs such as Visual Studio and Visual Studio Code to guide you through the entire migration process.

The converter uses Microsoft Roslyn — the .NET compiler platform — to parse, analyze, and transform your C# and VB.NET source code. Unlike simple find-and-replace or regex approaches, Roslyn provides a full understanding of the code structure through Abstract Syntax Trees (ASTs), enabling accurate, context-aware transformations.

>tip The WinForms Converter replaces the legacy Visual Studio Extension-based converter, which was limited to Visual Studio 2019. The new converter works in any MCP-compatible IDE and supports modern .NET versions.

## Prerequisites

To use the Telerik UI for WinForms Converter, you need:

* An active [Telerik user account](https://www.telerik.com/account/).
* A Telerik [Subscription license](https://www.telerik.com/purchase/faq/licensing-purchasing) or a [Telerik UI for WinForms trial](https://www.telerik.com/try/ui-for-winforms).
* An MCP-compatible IDE — Visual Studio with Copilot or VS Code with GitHub Copilot Agent mode.
* A configured [Telerik WinForms MCP Server]({%slug ai-mcp-server%}) with the server name `telerik-winforms-assistant`.
* A connection established to the [Telerik NuGet server](https://nuget.telerik.com/v3/index.json).
* A WinForms application that uses Microsoft WinForms controls. It can be either .NET Framework or .NET project.

>note A Subscription license and a configured [Telerik WinForms MCP Server]({%slug ai-mcp-server%}) are required.

## How It Works

The **Telerik UI for WinForms Converter** exposes a set of [MCP tools]({%slug converter-tools%}) that the AI agent calls in sequence. The agent acts as the orchestrator — it calls the tools, interprets results, builds the project, fixes errors, and guides you through the process step by step.

The typical migration workflow is:

1. **Get the migration plan** — The AI agent calls `telerik_get_migration_plan` to understand the recommended workflow, rules, and anti-patterns.
2. **Analyze the project** — The AI agent calls `telerik_analyze_project` to inspect the `.csproj` file and determine target framework, project style, and existing Telerik references.
3. **Add Telerik NuGet packages** — The AI agent calls `telerik_add_package_reference` to add the `Telerik.UI.for.WinForms.AllControls` NuGet package.
4. **Convert files one at a time** — The AI agent calls `telerik_convert_file` for each form, converting the `Designer.cs` file first, then the corresponding `.cs` file. After each pair, the agent builds and fixes errors before moving to the next form.
5. **Apply a theme** — The AI agent calls `telerik_get_theme_setup` to configure a Telerik theme (for example, Fluent).
6. **Final build** — The agent runs a final build to verify the completed migration.

>tip The converter follows a **Divide and Conquer** strategy. Even when you ask to convert an entire project, the AI agent converts one form or user control at a time. This keeps the error surface small, prevents error accumulation, and ensures each form works before moving on.

## Supported Type Mappings

Standard Microsoft WinForms control types are mapped to their Telerik equivalents:

| Microsoft Control | Telerik Control |
|---|---|
| `System.Windows.Forms.BindingNavigator` | `Telerik.WinControls.UI.RadBindingNavigator` |
| `System.Windows.Forms.Button` | `Telerik.WinControls.UI.RadButton` |
| `System.Windows.Forms.CheckBox` | `Telerik.WinControls.UI.RadCheckBox` |
| `System.Windows.Forms.CheckedListBox` | `Telerik.WinControls.UI.RadCheckedListBox` |
| `System.Windows.Forms.ComboBox` | `Telerik.WinControls.UI.RadDropDownList` |
| `System.Windows.Forms.DataGridView` | `Telerik.WinControls.UI.RadGridView` |
| `System.Windows.Forms.DomainUpDown` | `Telerik.WinControls.UI.RadDomainUpDown` |
| `System.Windows.Forms.Form` | `Telerik.WinControls.UI.RadForm` |
| `System.Windows.Forms.GroupBox` | `Telerik.WinControls.UI.RadGroupBox` |
| `System.Windows.Forms.HScrollBar` | `Telerik.WinControls.UI.RadHScrollBar` |
| `System.Windows.Forms.Label` | `Telerik.WinControls.UI.RadLabel` |
| `System.Windows.Forms.ListBox` | `Telerik.WinControls.UI.RadListControl` |
| `System.Windows.Forms.MaskedTextBox` | `Telerik.WinControls.UI.RadMaskedEditBox` |
| `System.Windows.Forms.MenuStrip` | `Telerik.WinControls.UI.RadMenu` |
| `System.Windows.Forms.MessageBox` | `Telerik.WinControls.RadMessageBox` |
| `System.Windows.Forms.MonthCalendar` | `Telerik.WinControls.UI.RadCalendar` |
| `System.Windows.Forms.NumericUpDown` | `Telerik.WinControls.UI.RadSpinEditor` |
| `System.Windows.Forms.Panel` | `Telerik.WinControls.UI.RadPanel` |
| `System.Windows.Forms.ProgressBar` | `Telerik.WinControls.UI.RadProgressBar` |
| `System.Windows.Forms.PropertyGrid` | `Telerik.WinControls.UI.RadPropertyGrid` |
| `System.Windows.Forms.RadioButton` | `Telerik.WinControls.UI.RadRadioButton` |
| `System.Windows.Forms.RichTextBox` | `Telerik.WinControls.UI.RadRichTextEditor` |
| `System.Windows.Forms.SplitContainer` | `Telerik.WinControls.UI.RadSplitContainer` |
| `System.Windows.Forms.StatusStrip` | `Telerik.WinControls.UI.RadStatusStrip` |
| `System.Windows.Forms.TabControl` | `Telerik.WinControls.UI.RadPageView` |
| `System.Windows.Forms.TextBox` | `Telerik.WinControls.UI.RadTextBox` |
| `System.Windows.Forms.ToolStrip` | `Telerik.WinControls.UI.RadCommandBar` |
| `System.Windows.Forms.TrackBar` | `Telerik.WinControls.UI.RadTrackBar` |
| `System.Windows.Forms.TreeView` | `Telerik.WinControls.UI.RadTreeView` |
| `System.Windows.Forms.VScrollBar` | `Telerik.WinControls.UI.RadVScrollBar` |

>tip The full mapping database is embedded in the converter and covers a comprehensive set of Microsoft WinForms controls and their properties, events, and enum values. 

## Supported Languages

The converter supports both C# and VB.NET source files:

| Extension | Language |
|-----------|----------|
| `.cs` | C# |
| `.vb` | VB.NET |

The language is automatically detected from the file extension. Both languages share the same mapping configuration.

## License Requirements

Access to the Telerik UI for WinForms Converter depends on your [Telerik license type](https://www.telerik.com/purchase/faq/licensing-purchasing):

| License Type | Converter Access | Details |
|---|---|---|
| **Subscription License** | Unlimited conversions | Full access with a fair use threshold of 300 requests per day. |
| **Trial License** | 20 file conversions | Designed for evaluating the migration workflow before purchasing. |
| **Perpetual License** | No access* | Start a [30-day trial](https://www.telerik.com/try/ui-for-winforms) or convert to a Subscription license. |

<small>*\* Perpetual license holders do **not** have access to the WinForms Converter. A Subscription license is required for unlimited conversions.*</small>

## Security and Safety

The converter implements several safety measures:

* **Workspace boundary enforcement** — The converter only operates on files within the MCP client's declared workspace roots. If a path is outside the allowed workspace, the tool asks the user for a valid path via [elicitation]({%slug converter-tools%}#interactive-path-resolution-elicitation).
* **Backup before overwrite** — A `.bak` backup of the original file is created before any file is modified.
* **Path canonicalization** — All file paths are canonicalized to prevent path traversal.
* **Secure XML parsing** — DTD processing is disabled and no external XML resolver is used when parsing `.csproj` and other XML files.
* **Trial usage limits** — Trial accounts are limited to 20 file conversions. A subscription license is required for unlimited conversions.

## See Also

* [Getting Started with the WinForms Converter]({%slug converter-getting-started%})
* [Converter MCP Tools, Prompts, and Engine Reference]({%slug converter-tools%})
* [Configure the Telerik WinForms MCP Server]({%slug ai-mcp-server%})

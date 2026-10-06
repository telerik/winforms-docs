---
title: Upgrade Assistant
page_title: Telerik UI for WinForms MCP Upgrade Tool
description: Learn how to use the telerik_upgrade_assistant tool from the Telerik WinForms MCP Server to analyze your WinForms projects for breaking changes when upgrading between Telerik UI for WinForms versions.
components: ["general"]
slug: ai-upgrade-assistant
tags: telerik,winforms,ai,coding assistant,upgrade,migration,breaking changes,mcp
position: 2
tag: new
---

# Telerik UI for WinForms MCP Upgrade Assistant

The `telerik_upgrade_assistant` tool is part of the [Telerik WinForms MCP Server]({%slug ai-mcp-server%}). It helps you analyze your existing WinForms projects for breaking changes when upgrading between Telerik UI for WinForms versions.

The tool integrates with the [Telerik CLI]({%slug telerik-cli%}) (`telerik migrate analyze` command) and returns structured findings to the AI model, which can then interpret and apply the necessary code fixes automatically.

## Prerequisites

To use the upgrade tool, you need:

* The [Telerik WinForms MCP Server]({%slug ai-mcp-server%}) installed and configured.
* The [Telerik CLI]({%slug telerik-cli%}) global .NET tool. If not already installed, the upgrade tool will detect this and prompt you to install it automatically.
* A WinForms project (`.csproj`) that references Telerik UI for WinForms assemblies.

>tip If the Telerik CLI is not installed on your machine, the tool will ask for your permission to install it via `dotnet tool install --global Telerik.CLI`. It will also check for available updates and apply them when needed.


## Using the Upgrade Tool

To analyze your WinForms project for Telerik-related upgrade issues, follow these steps:

1. Open your WinForms solution in Visual Studio or Visual Studio Code.
2. Open the **Copilot Chat** window.
3. Make sure the `telerik-winforms-assistant` MCP tool is enabled in the Copilot Chat tool selection dropdown. For setup instructions, see [Getting Started with Telerik WinForms MCP Server]({%slug ai-mcp-server%}).

![Telerik WinForms Assistant](images/ai-upgrade-tool_01.png)

4. Type a prompt such as:

    `@telerik-winforms-assistant Analyze this WinForms project for Telerik-related upgrade issues.`

    You can also specify version details:

    `@telerik Analyze my WinForms project for breaking changes when upgrading from version 2024.4.1111 to 2025.2.513.`

5. Grant permissions when prompted (per session, workspace, or always). The AI model automatically invokes the `telerik_upgrade_assistant` tool, which runs the analysis and returns a structured report of any breaking changes found in your project.

6. Review the results. The AI model presents the findings grouped by file, with line numbers, affected API members, and recommended actions. You can then ask the AI to apply the suggested fixes directly to your code.

>tip The `telerik_upgrade_assistant` tool uses the [Telerik CLI]({%slug telerik-cli%}) `telerik migrate analyze` command under the hood. You can also run this command directly from the terminal. For all available command options, see the [Telerik CLI Migrate Analyzer]({%slug telerik-cli-migrate-analyzer%}) article.

## Understanding the Results

The upgrade tool returns a structured report that includes:

* **File path**&mdash;The source file where a breaking change was detected.
* **Line number**&mdash;The exact line in the file.
* **Member name**&mdash;The affected API member (property, method, event, or class).
* **Change kind**&mdash;The type of breaking change (removed, renamed, signature changed, etc.).
* **Old signature**&mdash;The previous API signature (when available).
* **New signature**&mdash;The replacement API signature (when available).
* **Next steps**&mdash;Recommended actions for resolving each finding.

## See Also

* [Telerik WinForms MCP Server]({%slug ai-mcp-server%})
* [Telerik CLI]({%slug telerik-cli%})
* [Telerik CLI Migrate Analyzer]({%slug telerik-cli-migrate-analyzer%})
* [Telerik WinForms AI Coding Assistant Overview]({%slug ai-overview%})

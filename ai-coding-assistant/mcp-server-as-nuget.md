---
title: MCP Server as a NuGet Package
page_title: Telerik WinForms MCP (Model Context Protocol) Server as a NuGet Package
description: Learn how to add and use the Telerik WinForms MCP Server via a NuGet package with the dnx command as a WinForms AI coding assistant and code generator for better developer productivity. The Telerik WinForms MCP server provides proprietary context about Telerik UI for WinForms to AI-powered software.
slug: ai-mcp-server-as-a-nuget
tags: telerik,winforms,ai,ai server,dotnetWF,coding assistant,nuget
position: 3
---

# Telerik WinForms MCP Server (NuGet)

The Telerik WinForms [MCP (Model Context Protocol) Server](https://modelcontextprotocol.io/introduction) is also available as a NuGet package. This NuGet distribution exposes the same AI Coding Assistant functionality as the npm package. Beginning with .NET 10 it can be executed directly via the `dnx` command. For .NET 8 and .NET 9 (where `dnx` is not available) you can install it as a local dotnet tool and invoke its executable.

## Prerequisites

To use the Telerik WinForms MCP server via NuGet, you need:

| Target Runtime | Required SDK | Invocation Method | Notes |
|----------------|--------------|-------------------|-------|
| .NET 8 / .NET 9 | .NET 8 or .NET 9 SDK | Local dotnet tool (`telerik-winforms-mcp.exe`) | `dnx` not supported; install tool manually |
| .NET 10 | .NET 10 SDK (Preview 6 or newer) | `dnx` dynamic execution | Simplest approach; no prior install step |

Common requirements:

* An [MCP-compatible client](https://modelcontextprotocol.io/clients) that supports MCP tools (latest version recommended).
* A WinForms project targeting net8.0-windows, net9.0-windows, or net10.0-windows if you want local project context to be part of AI responses.
* A valid [Telerik license key]({%slug license-key%}).

## Summary of Installation Approaches

| Aspect | .NET 8 / 9 | .NET 10 |
|--------|------------|---------|
| Availability of `dnx` | Not available | Available |
| Install Command | `dotnet tool install --tool-path ./.tools Telerik.WinForms.MCP` | None (resolved on demand) |
| Executable Path | `./.tools/telerik-winforms-mcp.exe` | Handled by `dnx` |
| .mcp.json Command | `.\\.tools\\telerik-winforms-mcp.exe` | `dnx` |
| .mcp.json Args | _None_ | `Telerik.WinForms.MCP`, `--yes` |
| Update Version | Re-run tool install with `--version` or `tool update` | Handled by latest package resolved by `dnx` |
| Offline Use | Requires prior tool install | Requires prior NuGet cache warm-up |

## Server Installation

### .NET 8 / .NET 9

Install the MCP server as a local tool in your solution root (or another chosen path):

```powershell
dotnet tool install --tool-path ./.tools Telerik.WinForms.MCP
```

If updating:

```powershell
dotnet tool update --tool-path ./.tools Telerik.WinForms.MCP
```

This creates the executable at `./.tools/telerik-winforms-mcp.exe`.

### .NET 10

No manual install step is needed. The `dnx` command will download and execute the NuGet package on demand.

## Server Configuration

### .NET 8 / .NET 9 Configuration (`.mcp.json`)

Add a `.mcp.json` file to your solution root (or to `%USERPROFILE%` for global usage):

```json
{
  "servers": {
    "telerik-winforms-assistant": {
      "type": "stdio",
      "command": ".\\.tools\\telerik-winforms-mcp.exe",
      "env": {
        "TELERIK_LICENSE_PATH": "THE_PATH_TO_YOUR_LICENSE_FILE"
      }
    }
  }
}
```

If you prefer embedding the license string directly:

```json
"env": {
  "TELERIK_LICENSE": "YOUR_LICENSE_KEY"
}
```

### .NET 10 Configuration (`.mcp.json`)

Use these settings when configuring the server in your MCP client:

| Setting | Value |
|---------|-------|
| Package Name | `Telerik.WinForms.MCP` |
| Type | `stdio` |
| Command | `dnx` |
| Arguments | `Telerik.WinForms.MCP`, `--yes` |
| Server Name | `telerik-winforms-assistant` (customizable) |

### Workspace-Specific Setup

Add a `.mcp.json` file to your solution (root) folder. Choose the variant that matches your target .NET runtime:

#### .NET 8 / .NET 9 Example

```json
{
  "servers": {
    "telerik-winforms-assistant": {
      "type": "stdio",
      "command": ".\\.tools\\telerik-winforms-mcp.exe",
      "env": {
        "TELERIK_LICENSE_PATH": "THE_PATH_TO_YOUR_LICENSE_FILE"
      }
    }
  }
}
```

#### .NET 10 Example (using `dnx`)


```json
{
  "servers": {
    "telerik-winforms-assistant": {
      "type": "stdio",
      "command": "dnx",
      "args": ["Telerik.WinForms.MCP", "--yes"],
      "env": {
        "TELERIK_LICENSE_PATH": "THE_PATH_TO_YOUR_LICENSE_FILE"
      }
    }
  }
}

```

You may substitute `TELERIK_LICENSE` instead of `TELERIK_LICENSE_PATH` (see License Configuration section below for details and recommendations). The `inputs` array is optional and not required for current functionality.

After saving the file, restart Visual Studio and enable the `telerik-winforms-assistant` tool in the [Copilot Chat window's tool selection dropdown](https://learn.microsoft.com/en-us/visualstudio/ide/mcp-servers?view=vs-2022#configuration-example-with-github-mcp-server).


### Global Setup

To enable the server globally for all projects, add the `.mcp.json` file to your user directory (`%USERPROFILE%`, e.g., `C:\Users\YourName\.mcp.json`). The same distinction applies: use the executable path for .NET 8/9, or `dnx` for .NET 10.

## License Configuration

Add your [Telerik license key]({%slug license-key%}) using one of these options in the `env` section.

__Option 1: License File Path (Recommended)__

```json
"env": {
  "TELERIK_LICENSE_PATH": "THE_PATH_TO_YOUR_LICENSE_FILE"
}
```

The `THE_PATH_TO_YOUR_LICENSE_FILE` should point to the `telerik-license.txt` file, usually in the AppData folder. Often it will look like:

`"TELERIK_LICENSE_PATH": "%appdata%/Telerik/telerik-license.txt"`

__Option 2: Direct License Key__

```json
"env": {
  "TELERIK_LICENSE": "YOUR_LICENSE_KEY_HERE"
}
```

> Option 1 is recommended unless you're sharing settings across different systems. Remember to [update your license key]({%slug license-key%}#updating-your-license-key) when necessary.

## See also

* [AI Coding Assistant Overview]({%slug ai-overview%})
* [npm-based Telerik WinForms MCP Server]({%slug ai-mcp-server%})
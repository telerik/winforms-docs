---
title: MCP Server
page_title: Telerik WinForms MCP Server
description: Learn how to add and use the Telerik WinForms MCP Server as a WinForms AI coding assistant and code generator for better developer productivity. The Telerik WinForms MCP server provides proprietary context about Telerik UI for WinForms to AI-powered software.
slug: ai-mcp-server
tags: telerik,winforms,ai,ai server,coding assistant
position: 2
---

# Telerik WinForms MCP Server

The Telerik WinForms [MCP (Model Context Protocol) Server](https://modelcontextprotocol.io/introduction) enhances your AI-powered development experience by providing specialized context about Telerik UI for WinForms components.

This MCP server enables AI-powered IDEs and tools to generate more accurate, tailored code that leverages [Telerik UI for WinForms components](https://docs.telerik.com/devtools/winforms/introduction) and APIs. You can ask complex questions about Telerik components, request specific implementations, and generate comprehensive code solutions.

## Prerequisites

To use the Telerik WinForms MCP server, you need:

* [Node.js](https://nodejs.org/en) 18 or newer.
* An [MCP-compatible client](https://modelcontextprotocol.io/clients) that supports **MCP tools** (latest version recommended).
* A [Telerik user account](https://www.telerik.com/account/?_gl=1*rbcezh*_gcl_au*NzA0NDU3NzU1LjE3NTA2NTk3NDY.*_ga*ODUxNTg5NDI5LjE2OTU2NDQ2ODI.*_ga_9JSNBCSF54*czE3NTQ1NDQ5MTQkbzE0NSRnMSR0MTc1NDU3MjMxMiRqMzAkbDAkaDA.).
* An active [DevCraft or Telerik UI for WinForms license](https://www.telerik.com/purchase/individual/winforms.aspx) or a [Telerik UI for WinForms trial](https://www.telerik.com/try/ui-for-winforms).
* A [WinForms application that includes Telerik UI for WinForms](https://docs.telerik.com/devtools/winforms/getting-started/first-steps).

## Installation

Install the Telerik WinForms MCP server using npm:

```bash
npm i @progress/telerik-winforms-mcp
```

### Configuration

Use these settings when configuring the server in your MCP client:

| Setting | Value |
|---------|-------|
| Package Name | `@progress/telerik-winforms-mcp` |
| Type | `stdio` (standard input/output transport) |
| Command | `npx` |
| Arguments | `-y` |
| Server Name | `telerikWinFormsAssistant` (customizable) |

### License Configuration

Add your [Telerik license key]({%slug license-key%}) as an environment parameter in your `mcp.json` file using one of these options:

Option 1: License File Path (Recommended)

 ```json
 "env": {
     "TELERIK_LICENSE_PATH": "THE_PATH_TO_YOUR_LICENSE_FILE"
 }
 ```

Option 2: Direct License Key

 ```json
 "env": {
     "TELERIK_LICENSE": "YOUR_LICENSE_KEY_HERE"
 }
 ```

> Option 1 is recommended unless you're sharing settings across different systems. Remember to [update your license key]({%slug license-key%}#updating-your-license-key) when necessary.

## Visual Studio

For complete setup instructions, see [Use MCP servers in Visual Studio](https://learn.microsoft.com/en-us/visualstudio/ide/mcp-servers).

> Early Visual Studio 17.14 versions require the Copilot Chat window to be open when opening a solution for the MCP server to work properly.

### Workspace-Specific Setup:

1. Add `.mcp.json` to your solution folder:

 ```json
 {
   "servers": {
     "telerikWinFormsAssistant": {
       "type": "stdio",
       "command": "npx",
       "args": ["-y", "@progress/telerik-winforms-mcp@latest"],
       "env": {
         "TELERIK_LICENSE_PATH": "THE_PATH_TO_YOUR_LICENSE_FILE",
         // or
         "TELERIK_LICENSE": "YOUR_LICENSE_KEY"
       }
     }
   }
 }
 ```

2. Restart Visual Studio.
3. Enable the `telerikWinFormsAssistant` tool in the [Copilot Chat window's tool selection dropdown](https://learn.microsoft.com/en-us/visualstudio/ide/mcp-servers?view=vs-2022#configuration-example-with-github-mcp-server).

### Global Setup:

Add the `.mcp.json` file to your user directory (`%USERPROFILE%`, e.g., `C:\Users\YourName\.mcp.json`).

## Usage

To use the Telerik MCP Server:

1. Start your prompt with one of these triggers:
   - `/telerik` / `@telerik` / `#telerik`
   - `/telerikwinforms` / `@telerikwinforms` / `#telerikwinforms`
   - `#telerik-winforms-assistant`

2. Verify server activation by looking for these messages:
   - Visual Studio: `Running telerikWinFormsAssistant`
   - Visual Studio Code: `Running telerik-winforms-assistant`
   - Cursor: `Calling MCP tool telerikWinFormsAssistant`

3. Grant permissions when prompted (per session, workspace, or always).

4. Start fresh sessions for unrelated prompts to avoid context pollution.

### Improving Server Usage

To increase the likelihood of the Telerik MCP server being used, add custom instructions to your AI tool:
- [GitHub Copilot custom instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot#about-repository-custom-instructions-for-github-copilot-chat)
- [Cursor rules](https://docs.cursor.com/context/rules)

### Sample Prompts

The following examples demonstrate useful prompts for the Telerik WinForms MCP Server:

* "`/telerik` Generate a DataGrid with sorting and paging. Bind it to a Person model with sample ViewModel."
* "`/telerikwinforms` Create a ComboBox showing a product list. Include Product class and sample data."
* "`/telerik` Build a CollectionView with sorting and filtering capabilities."

## Number of Requests

A Telerik [Subscription license](https://www.telerik.com/purchase/faq/licensing-purchasing) is recommended in order to use the Telerik WinForms AI Coding Assistant without restrictions. Perpetual license holders and trial users can make a limited [number of requests per year]({%slug ai-overview%}#number-of-requests).

## Local AI Model Integration

You can use the Telerik WinForms MCP server with local large language models (LLMs):

1. Run a local model, for example, through [Ollama](https://ollama.com).
2. Use a bridge package like [MCP-LLM Bridge](https://github.com/patruff/ollama-mcp-bridge).
3. Connect your local model to the Telerik MCP server.

This setup allows you to use the Telerik AI Coding Assistant without cloud-based AI models.

## See Also

* [Telerik WinForms GitHub Copilot Extension]({%slug ai-copilot-extension%})
* [AI Coding Assistant Overview]({%slug ai-overview%})

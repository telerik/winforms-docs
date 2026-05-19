---
title: AI Coding Assistant Overview
page_title: Telerik UI for WinForms AI Coding Assistant - Overview, Intended Use, Coverage, and Privacy
description: Overview of the Telerik UI for WinForms AI Coding Assistant. Covers intended use cases, supported components and assemblies, code generation capabilities, privacy and data handling, recommendations, and integration.
slug: ai-overview
tags: telerik,winforms,ai,coding assistant,mcp,mcp server,code generation,privacy,data handling,coverage,intended use,recommendations,license, subscription, usage
position: 0
---

# Getting Started with the Telerik UI for WinForms AI Coding Assistant

The Telerik UI for WinForms AI Coding Assistant is an AI-powered code generation tool integrated in the [Telerik WinForms MCP Server]({%slug ai-mcp-server%}). It provides specialized context to AI models, enabling them to produce higher-quality code samples using Telerik UI for WinForms components and APIs.

> To start using AI Coding Assistant, please setup the [Telerik MCP Server]({%slug ai-mcp-server%}).

## Available Tools in Telerik AI Coding Assistant

The Telerik AI Coding Assistant is integrated in the [Telerik WinForms MCP Server]({%slug ai-mcp-server%}).

The major features of the AI Coding Assistant are listed in the table below.

| Feature                | MCP Server                                                                |
|------------------------|---------------------------------------------------------------------------|
| Prompt Handling        | Handles complex, multi-step prompts                                       |
| Client Compatibility   | Works with MCP-enabled clients (e.g., Cursor, Copilot Agent mode)         |
| Code Suggestions       | Can directly suggest changes and rebuild applications to verify code      |
| Response Focus         | Primarily code-focused                                                    |

## Intended Use

>caution Always double-check the code and solutions proposed by any AI-powered tool before applying them to your project.

You can use the AI Coding Assistant for:

* **Initial code generation**: Quickly add components to your app to speed up the initial development.
* **Basic component configuration**: Enable or disable specific component features, or fine tune the configuration through prompting. More complex configurations are possible but may require additional manual work to be production-ready.
* **Dummy data generation and data binding**: Quickly add data to your app for testing and prototyping purposes. Avoid exposing or providing access to your proprietary or production data to AI-enabled tools.
* **Step-by-step explanations**: Understand the solutions provided by the AI Coding Assistant through the detailed explanations (depends on the tool, mode, and model used). To further develop your knowledge, check the respective documentation.
* **Preliminary troubleshooting**: Resolve obvious and easy-to-solve issues affecting your code. For more complex issues, look for assistance by contacting our support team.

## Coverage

The Telerik AI Coding Assistant is trained on the Telerik UI for WinForms API reference, official documentation, and purpose-built code examples for the controls for all assemblies. 

## Telerik Document Processing AI Coding Assistant

You can also use the AI Coding Assistant for [Telerik Document Processing](https://www.telerik.com/document-processing-libraries) to generate high-quality code samples and speed up your development. Read the full guide in the dedicated [DPL AI Coding Assistant](https://docs.telerik.com/devtools/document-processing/ai-coding-assistant/overview) article.

## Recommendations

Consider the following recommendations when working with the AI Coding Assistant:

* When switching between tasks and files, start a new session in a new chat window to avoid polluting the context with irrelevant or outdated information.
* At the time of publishing, Claude Sonnet 4 and GPT-5 produce optimal results.

## Privacy

The Telerik WinForms AI Coding Assistant operates under strict privacy guidelines:

Data Access:
* No access to your workspace and application code.
* Exception: when using the Telerik MCP server (or any other MCP server), the LLM generates parameters for the MCP server request, which may include parts of your application code.

Data Usage:
* Your prompts are not used to train Telerik AI models.
* Does not generate or access AI responses.
* Provides enhanced context to improve responses from your chosen AI model (GPT, Gemini, Claude, etc.).

 Data Storage:
* Prompts and context are anonymized and stored only for statistical analysis and troubleshooting.
* No association between prompts and your Telerik user account.
* Usage metrics are collected to ensure [license compliance](#license-requirements).

> Make sure also to review the terms and privacy policies of your selected AI model and AI client.

## Next Steps

* Configure the [Telerik WinForms MCP Server]({%slug ai-mcp-server%}) with an MCP-enabled client
* Review the [Prompt Library]({%slug ai-prompt-library%})
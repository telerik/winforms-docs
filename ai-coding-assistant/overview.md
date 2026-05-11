---
title: Overview
page_title: Telerik UI for WinForms AI Coding Assistant - Overview, License Requirements, and Usage 
description: Overview of the Telerik UI for WinForms AI Coding Assistant and MCP Server. Covers license requirements for subscription, perpetual, and trial licenses, usage limits, supported components, privacy, and getting started prerequisites.
slug: ai-overview
tags: telerik,winforms,ai,coding assistant,mcp,mcp server,license,perpetual license,subscription license,trial,code generation,usage limits,intended use
position: 0
---

# Telerik UI for WinForms AI Coding Assistant

The Telerik UI for WinForms AI Coding Assistant is an AI-powered code generation tool integrated in the [Telerik WinForms MCP Server]({%slug ai-mcp-server%}). It provides specialized context to AI models, enabling them to produce higher-quality code samples using [Telerik UI for WinForms components](https://www.telerik.com/products/winforms.aspx) and APIs.

## Available Tools

The Telerik AI Coding Assistant is integrated in the [Telerik WinForms MCP Server]({%slug ai-mcp-server%}).

The major features of the AI Coding Assistant are listed in the table below.

| Feature                | MCP Server                                                                |
|------------------------|---------------------------------------------------------------------------|
| Prompt Handling        | Handles complex, multi-step prompts                                       |
| Client Compatibility   | Works with MCP-enabled clients (e.g., Cursor, Copilot Agent mode)         |
| Code Suggestions       | Can directly suggest changes and rebuild applications to verify code      |
| Response Focus         | Primarily code-focused                                                    |

## Getting Started

To use the **Telerik WinForms MCP Server** you need:

* A [Telerik user account](https://www.telerik.com/account/).
* An active [DevCraft or Telerik UI for WinForms license](https://www.telerik.com/purchase/individual/winforms.aspx) or a [Telerik UI for WinForms trial](https://www.telerik.com/try/ui-for-winforms).
* A [WinForms application that includes Telerik UI for WinForms](https://docs.telerik.com/devtools/winforms/getting-started/first-steps).
* A Telerik [Subscription license](https://www.telerik.com/purchase/faq/licensing-purchasing) is required for full access to the AI Coding Assistant. Perpetual license holders do not have access by default—see [License Requirements](#license-requirements) for details.

## Intended Use

>caution Always double-check the code and solutions proposed by any AI-powered tool before applying them to your project.

You can use the AI Coding Assistant for:

* **Initial code generation**: Quickly add components to your app to speed up the initial development.
* **Basic component configuration**: Enable or disable specific component features, or fine tune the configuration through prompting. More complex configurations are possible but may require additional manual work to be production-ready.
* **Dummy data generation and data binding**: Quickly add data to your app for testing and prototyping purposes. Avoid exposing or providing access to your proprietary or production data to AI-enabled tools.
* **Step-by-step explanations**: Understand the solutions provided by the AI Coding Assistant through the detailed explanations (depends on the tool, mode, and model used). To further develop your knowledge, check the respective documentation.
* **Preliminary troubleshooting**: Resolve obvious and easy-to-solve issues affecting your code. For more complex issues, look for assistance by contacting our support team.

## License Requirements

Access to the Telerik UI for WinForms AI Coding Assistant depends on your [Telerik license type](https://www.telerik.com/purchase/faq/licensing-purchasing):

| License Type | AI Coding Assistant | Details |
|---|---|---|
| **Subscription License** | Yes | A Subscription is the primary license that grants full access to the AI Coding Assistant. It includes a virtually unlimited number of requests, with a fair use threshold of 300 requests per day. Best for ongoing and high-volume usage. |
| **Trial License** | Yes | Trial access is designed for evaluating the feature before purchasing. Reactivating the same trial for a new release does not grant additional requests. |
| **Perpetual License** | No* | Perpetual license holders have no access to the AI Coding Assistant. Start a [30-day trial](https://www.telerik.com/try/ui-for-winforms) or convert Perpetual license to a Subscription license. |

\* Perpetual license holders can access the AI Coding Assistant through a [30-day AI Tools trial](https://www.telerik.com/try/ui-for-winforms) or a [Telerik UI for WinForms trial](https://www.telerik.com/try/ui-for-winforms). After the trial expires, access is no longer available unless the Perpetual license is converted to a Subscription license.


>tip All Telerik AI tools share a single request limit for your Telerik account. Telerik MCP server take up from the same usage quota. When using the Telerik MCP server, one prompt may trigger several requests, depending on the prompt complexity.

## Coverage

The Telerik AI Coding Assistant is trained on the Telerik UI for WinForms API reference, official documentation, and purpose-built code examples for the controls in the assemblies listed below:

* Telerik.WinControls.UI
* Telerik.WinControls.GridView
* Telerik.WinControls.RadDock
* Telerik.WinControls.RichTextEditor

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
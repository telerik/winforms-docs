---
title: Overview
page_title: Telerik UI for WinForms AI Tooling Overview
description: Learn about the AI-powered developer tools that integrate with your IDE or code editor for greater productivity and enhanced developer experience.
slug: ai-overview
tags: telerik,winforms,ai,coding assistant
position: 0
---

# Telerik UI for WinForms AI Coding Assistant (Preview)

The Telerik UI for WinForms AI Coding Assistant enhances your developer experience and increases productivity when building WinForms applications with Telerik UI for WinForms components.

The coding assistant is an AI code generator that provides specialized context to AI models, enabling them to produce higher-quality code samples using the [Telerik UI for WinForms components](https://www.telerik.com/products/winforms.aspx) and APIs.

## Available Tools

The Telerik AI Coding Assistant is available through:

* [Telerik WinForms GitHub Copilot Extension]({%slug ai-copilot-extension%})
* [Telerik WinForms MCP Server]({%slug ai-mcp-server%})

### Key Differences

| Feature                | MCP Server                                                                | GitHub Copilot Extension                                   |
|------------------------|---------------------------------------------------------------------------|------------------------------------------------------------|
| Prompt Handling        | Handles complex, multi-step prompts                                       | Offers shorter, focused code snippets                      |
| Client Compatibility   | Works with MCP-enabled clients (e.g., Cursor, Copilot Agent mode)         | Integrated as a Copilot extension                          |
| Code Suggestions       | Can directly suggest changes and rebuild applications to verify code      | Provides detailed explanations alongside code suggestions  |
| Response Focus         | Primarily code-focused                                                    | Better for learning and understanding implementation       |

## Getting Started

To use the Telerik WinForms AI Coding Assistant, you need:

* A [Telerik user account](https://www.telerik.com/account/?_gl=1*rbcezh*_gcl_au*NzA0NDU3NzU1LjE3NTA2NTk3NDY.*_ga*ODUxNTg5NDI5LjE2OTU2NDQ2ODI.*_ga_9JSNBCSF54*czE3NTQ1NDQ5MTQkbzE0NSRnMSR0MTc1NDU3MjMxMiRqMzAkbDAkaDA.).
* An active [DevCraft or Telerik UI for WinForms license](https://www.telerik.com/purchase/individual/winforms.aspx) or a [Telerik UI for WinForms trial](https://www.telerik.com/try/ui-for-winforms).
* A [WinForms application that includes Telerik UI for WinForms](https://docs.telerik.com/devtools/winforms/getting-started/first-steps).
* A Telerik [Subscription license](https://www.telerik.com/purchase/faq/licensing-purchasing) is recommended in order to use the Telerik WinForms AI Coding Assistant without restrictions. Perpetual license holders and trial users can make a limited number of requests per year.

## Number of Requests

The Telerik WinForms AI Coding Assistant allows the following maximum number of requests based on your [Telerik license type](https://www.telerik.com/purchase/faq/licensing-purchasing):

| License Type | Request Limit |
|--------------|---------------|
| Perpetual | 50 requests per year |
| Subscription | Virtually unlimited with a fair use threshold of 300 requests per day |
| Trial | 300 requests per trial period (does not reset with new trial activations) |

> All Telerik AI tools share a single request quota for your Telerik account. Usage from the [Telerik Copilot extension]({%slug ai-copilot-extension%}) and [Telerik MCP server]({%slug ai-mcp-server%}) counts toward the same limit. Complex prompts in the MCP server may consume multiple requests.

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
* Usage metrics are collected to ensure [license compliance](#number-of-requests).

> Make sure also to review the terms and privacy policies of your selected AI model and AI client.

## Next Steps

* Install the [Telerik WinForms GitHub Copilot Extension]({%slug ai-copilot-extension%})
* Configure the [Telerik WinForms MCP Server]({%slug ai-mcp-server%}) with an MCP-enabled client

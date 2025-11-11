---
title: AI Summarization
page_title: AI Summarization
description: Check our AI Summarization documentation article for the RadPdfViewer WinForms control.
slug: radpdfviewer-ai-summarization
tags: getting, started, ai, summarize
published: True
position: 5
---

# AI Summarization for RadPdfViewer

RadPdfViewer provides a smart summarization feature that allows you to use Large Language Models (LLMs) services to analyze the content of the PDF document. This functionality allows you to summarize document content and ask questions about the document, with the AI providing relevant answers based on the document's content.

The AI Summarization feature is accessible through an integrated chat interface within the RadPdfViewer component. You can connect the RadPdfViewer to supported AI services to enable document analysis and summarization capabilities. The integrated chat interface allows users to enter custom prompts and receive AI-generated responses based on the PDF document content.

![ai-summary1](images/pdfviewer-ai-summarization001.png)

## Required NuGet Packages

The summarization feature requires the installation of several additional packages beyond those needed for the RadPdfViewer control.

### Required Packages

```XML
<ItemGroup>
 <PackageReference Include="Azure.AI.OpenAI" Version="2.2.0-beta.2" />
 <PackageReference Include="Microsoft.Extensions.AI.OpenAI" Version="9.3.0-preview.1.25161.3" />
 <PackageReference Include="Microsoft.Extensions.AI.Ollama" Version="9.3.0-preview.1.25161.3" />
 <PackageReference Include="Telerik.UI.for.WinForms.AllControls" Version="2025.4.1111" />
 <PackageReference Include="Telerik.Licensing" Version="1.6.31" />
 <PackageReference Include="Telerik.Windows.Documents.Fixed" Version="2025.4.*" />
 <PackageReference Include="Telerik.Windows.Documents.Core" Version="2025.4.*" />
 <PackageReference Include="Telerik.Windows.Documents.AIConnector" Version="*-*" />
</ItemGroup>
```

### Using Assembly References

The recommended installation approach is to use the Telerik NuGet packages, but in case you cannot do this, the following list shows the required `.dll` files.

* `Telerik.Documents.AI.Core.dll`
* `Telerik.Documents.AI.RAG.dll`
* `Telerik.Windows.Documents.AIConnector.dll`
* `Telerik.Windows.Documents.Core.dll`
* `Telerik.Windows.Documents.Fixed.dll`
* `Telerik.Licensing.Runtime.dll`
* `Telerik.WinControls.dll`
* `Telerik.WinControlsUI.dll`
* `Telerik.Common.dll`
* `TelerikData.dll`


## Showing the AI Summarization UI

The AI summarization is represented by a RadChat component that allows you to craft prompts and recieve reponses from the corresponding AI service. To enable it, set the `EnableAISummary` property to `true`. This will include an extra tab on the left part in the navigation pane in RadPdfViewer. Additionally, the **RadPdfViewerNavigator** shows a button that can be used to quickly show/hide the AI summarization feature directly from the UI. 

````C#
this.radPdfViewer1.EnableAISummary = true;

````
````VB.NET
Me.RadPdfViewer1.EnableAISummary = True

````

![ai-summary2](images/pdfviewer-ai-summarization002.png)


## Setting up the AI Provider

To connect the chat to an AI service, one of the built-in UI providers can be used. This setting is adjusted via the view model of the `PdfViewerElement`. All AI Providers implements the `ISummaryProvider` interface. 

````C#
// set the aiSummaryProvider beforehand
this.radPdfViewer1.PdfViewerElement.SummaryProvider = aiSummaryProvider;

````
````VB.NET
Me.RadPdfViewer1.PdfViewerElement.SummaryProvider = aiSummaryProvider

````


### Using Azure OpenAI Provider

To enable the Azure OpenAI services, use the `AzureOpenAISummaryProvider` class. 

```C#
// Azure OpenAI Summary Provider example
string key = "your-azure-openai-key";
SecureString secureKey = new SecureString();
foreach (char c in key)
{
    secureKey.AppendChar(c);
}

string endpoint = "https://your-resource-name.openai.azure.com/";
string model = "model-name"; //ex: "gpt-4o-mini"
var azureOpenAIprovider = new Telerik.WinControls.UI.AIProviders.AzureOpenAISummaryProvider(secureKey, endpoint, model);
this.radPdfViewer1.PdfViewerElement.SummaryProvider = azureOpenAIprovider;

```

### Using OpenAI Provider

To enable the OpenAI services, use the `OpenAISummaryProvider` class. 

```C#
// Using OpenAI Provider
string key = "your-openai-key";
SecureString secureKey = new SecureString();
foreach (char c in key)
{
    secureKey.AppendChar(c);
}

string model = "model-name"; //ex: "gpt-4o-mini"

var openAIprovider = new Telerik.WinControls.UI.AIProviders.OpenAISummaryProvider(secureKey, model);
this.radPdfViewer1.PdfViewerElement.SummaryProvider = openAIprovider;

```

### Using Ollama AI Provider (Local AI)

To use a local Ollama AI model, utilize the `LlamaSummaryProvider` class. 

```C#
//Use Ollama Provider
string endpoint = "localhost server"; //ex: "http://localhost:11434/"
string model = "model-name"; //ex: "llama3"

var ollamaProvider = new Telerik.WinControls.UI.AIProviders.LlamaSummaryProvider(endpoint, model);
this.radPdfViewer1.PdfViewerElement.SummaryProvider = ollamaProvider;

```

#### Get Summary Programmatically

To get a summarization of the document programmatically, use `GetSummary` method of the corresponding AI provider.

```C#
var textDoc = this.radPdfViewer1.Document.ToSimpleTextDocument(null);
var summaryProvider = this.radPdfViewer1.PdfViewerElement.SummaryProvider;
Task.Run(() =>
{
    string summary = summaryProvider.GetSummary(textDoc);

    // this is required only if you want to update the WinForms UI with the result
    Application.Current.Dispatcher.Invoke(() =>
    {
        // update the UI if needed
    });
});

```

#### Append Additional Instructions

You can customize the AI behavior by setting the `PromptAddition` property of the provider. This property allows you to append additional instructions to the prompt, which will be applied during both summarization and question-answering operations. The following example demonstrates how to configure the AI provider to deliver a concise summary translated into Bulgarian.

````C#
var summaryProvider = this.radPdfViewer1.PdfViewerElement.SummaryProvider;
summaryProvider.PromptAddition = "Be concise and translate the summary to Bulgarian.";

````

#### SummaryResourcesCalculated Event 

The summary providers expose also an event called `SummaryResourcesCalculated` which is invoked before the actual summarization process begins (after the `GetSummary` method is invoked), providing information about the estimated resource usage. The `SummaryResourcesCalculatedEventArgs` provides the following properties: 

* `EstimatedCallsRequired`- The number of API calls required
* `EstimatedTokensRequired` - The number of tokens to be processed
* `ShouldContinueExecution` -  A boolean flag indicating whether to proceed with summarization. The default value is `true`.

````C#
private void SummarizationProvider_SummaryResourcesCalculated(object? sender, Telerik.Windows.Documents.AIConnector.SummaryResourcesCalculatedEventArgs e)
{
	// set e.ShouldContinueExecution = false; to cancel the summarization process
}

````

### Adjusting the Max Number of Tokens

The maximum number of tokens allowed is set via the `MaxTokenCount` property of the summary provider.

```C#
var azureOpenAIprovider = new Telerik.Windows.Controls.FixedDocumentViewersUI.AIProviders.AzureOpenAISummaryProvider(secureKey, endpoint, model);
azureOpenAIprovider.MaxTokenCount = 1000;

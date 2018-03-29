---
title: Text Analysis
page_title: Text Analysis | Cloud Services
description: This section shows how one can use various cloud services like GoogleCloud, AWS, and Azure with the Telerik UI For Winforms suite.
slug: cloud-services/azure/text-analysis
tags: cloud,azure
published: true
position: 5

---

# Text Analysis

This article will guide you through the process of integrating Azure's [Text Analytics API](https://azure.microsoft.com/en-us/services/cognitive-services/text-analytics/) with the controls from the Telerik UI for WinForm suite.  

## Step 1: Create a Text Analytics API Account

Before you start, you need to create a new Text Analytics API account through the Azure portal. This has been explained in great detail in [this article](https://docs.microsoft.com/en-us/azure/cognitive-services/cognitive-services-apis-create-account).

![](images/azure-text-analysis001.png)

Once you've created the account, you have to obtain the subscription keys that have been generated for you. You will require them later on in order to make API calls from your application.

## Step 2: Create the Application

Create a standard [Telerik WinForms]({%slug winforms/visual-studio-templates%}) application and add two [RadTextBoxes]({%slug winforms/editors/textbox%}) a [RadButton]({%slug winforms/buttons/button%}) three [RadLabels]({%slug winforms/panels-and-labels/label%}) and a [RadSpinEditor]({%slug winforms/editors/spineditor%}) to it. The layout should look like this:

![](images/azure-text-analysis002.png)

## Step 3: Add the Microsoft.Azure.CognitiveServices.Language NuGet Package

You can now add the **Microsoft.Azure.CognitiveServices.Language** NuGet package corresponding which provides access to the Microsoft Cognitive Services Language APIs.

>note Mark the __Include Prerelease__ checkbox.

>note The package requires a .NET Framework version equal or higher than **4.5.2**. If you're using a lower version, you will need to call the HTTP endpoints directly from C# and serialize and deserialize the requests and responses similarly to the example found in the [Image Analysis]({%slug cloud-services/azure/image-analysis%}) article.

![](images/azure-text-analysis003.png)

## Step 4: Use the Text Analytics API

**Example 3** demonstrates how to handle the button's **Click** event and use the Text Analytics API to analyze the text input in the RadWatermarkBox.


````C#
const string subscriptionKey = "Add your key here.";
public ITextAnalyticsAPI client;

public RadForm1()
{
    InitializeComponent();
    client = new TextAnalyticsAPI();
    client.AzureRegion = AzureRegions.Westeurope;
    client.SubscriptionKey = subscriptionKey;

}
private async void MakeAnalysisRequest(string text)
{
    LanguageBatchResult languageResult = await client.DetectLanguageAsync(
            new BatchInput(new List<Input>() { new Input("1", text) }));

    var language = languageResult.Documents.First().DetectedLanguages.First();

    SentimentBatchResult sentimentResult = await client.SentimentAsync(
        new MultiLanguageBatchInput(new List<MultiLanguageInput>(){
        new MultiLanguageInput(language.Iso6391Name, "1", text) }));

    var sentiment = sentimentResult.Documents.First();

    this.languageTextBox.Text = language.Name;
    this.sentimentEditor.Value = (decimal)sentiment.Score.Value * 100;
}
private void radButton1_Click(object sender, EventArgs e)
{
     MakeAnalysisRequest(radTextBoxInput.Text);
}

````

This is all, you are ready to test the application.

![](images/azure-text-analysis004.png)

# See Also

* [Cosmos DB]({%slug cloud-services/azure/cosmosdb%})
* [Image Analysis]({%slug cloud-services/azure/image-analysis%})
* [SQL Database]({%slug cloud-services/azure/sql-database%})
* [Blob Storage]({%slug cloud-services/azure/blob-storage%})
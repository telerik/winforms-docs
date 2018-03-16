---
title: Image Analysis
page_title: Image Analysis | Cloud Services
description: This section shows how one can use various cloud services like GoogleCloud, AWS, and Azure with the Telerik UI For Winforms suite.
slug: cloud-services/azure/cognitive-services
tags: cloud,azure
published: True
position: 5

---

# Image Analysis

This article will guide you through the process of integrating Azure's [Computer Vision API](https://azure.microsoft.com/en-us/services/cognitive-services/computer-vision/) with the controls from the UI for WinForms suite. You will be able to upload an image which will be analyzed by the service.

## Step 1: Create a Computer Vision API Account

Before creating the application, you need to create a new Computer Vision API account through the Azure portal. This is explained in great detail [here]](https://docs.microsoft.com/en-us/azure/cognitive-services/cognitive-services-apis-create-account).

![](images/azure-cognitive-services-image-analysis001.png)

Once you've created the account, you have to obtain the subscription keys. You will need them later on in order to make API calls from your application.

## Step 2: Add the Newtonsoft.Json NuGet Package

Now add the **Newtonsoft.Json** NuGet package which will allow you to deserialize the returned result.

You need to add a reference to **System.Net.Http** which holds the API required to make requests to the service's REST API as well.

## Create the Application





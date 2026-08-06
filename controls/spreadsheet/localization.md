---
title: Localization
page_title: Localization - WinForms Spreadsheet Control
description: To change the default English localization provider in WinForms Spreadsheet, use the CurrentProvider static property of the SpreadsheetLocalizationProvider class.
slug: radspreadsheet-localization
tags: localization
published: True
position: 7
---

# Localization
 
To change the default English localization provider you should use the __CurrentProvider__ static property of the __SpreadsheetLocalizationProvider__ class. For example, you can load the string from a XML file like this:

<snippet id='spreadsheet-localization-loadfromfile-cs' />
<snippet id='spreadsheet-localization-loadfromfile-vb' />



>important You can download a XML file that contains all the currently used strings from here: [Strings file](https://github.com/telerik/winforms-sdk/blob/master/Localization%20Providers/SpreadsheetStrings.xml)
>

>note __SpreadsheetLocalizationProvider__ contains all strings related to the __RadSpreadsheetRibbonBar__ as well.
>

## AI Assistant Localization Strings

The following table lists all localization strings used by the AI Assistant feature:

| Localization String | Default Value |
|---|---|
| `Spreadsheet_AI_AuthorName` | Spreadsheet AI |
| `Spreadsheet_AI_WelcomeMessage` | Hello! I am your AI assistant. Ask me anything about this spreadsheet. |
| `Spreadsheet_AI_ProviderNotConfigured` | AI provider is not configured. Please set the AIToolsProvider property. |
| `Spreadsheet_AI_InputBoxWatermark` | Ask me anything... |
| `Spreadsheet_AI_ThinkingWatermark` | AI is thinking... |
| `Spreadsheet_AI_ErrorProcessingRequest` | An error occurred while processing your request. |

## Custom Localization Provider

Another approach is to create a custom localization provider class which inherits __SpreadsheetLocalizationProvider__. In it you should just override the __GetLocalizedString__  method and return the localized string depending on current id.

<snippet id='spreadsheet-localization-customprovider-cs' />
<snippet id='spreadsheet-localization-customprovider-vb' />



The following code snippet shows how you can use the new class:

<snippet id='spreadsheet-localization-changeprovider-cs' />
<snippet id='spreadsheet-localization-changeprovider-vb' />



>note It is necessary to set the SpreadsheetLocalizationProvider. __CurrentProvider__ property before initializing the components.
>

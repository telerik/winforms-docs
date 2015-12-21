---
title: Settings
page_title: Settings | UI for WinForms Documentation
description: Settings
slug: winforms/spread-processing/formats-and-conversion/txt/settings
tags: settings
published: True
position: 1
---

# Settings



__TxtFormatProvider__ allows to import and export TXT documents. Additionally, there are a number of settings that allow you to modify the import/export. The current article outlines the available settings.
      

## 

__TxtFormatProvider__ exposes a __Settings__ property of type __TxtSettings__. This allows you to specify the following:
        

* __Delimiter__: Gets or sets the list separator. By default the TxtFormatProvider class imports and exports files using the list separator specified by the current culture of the system.
            

* __Quote__: Gets or sets the quote symbol
            

* __HasHeaderRow__: Specifies whether the document has header row. The default value is __false__.
            

__Example 1__ shows how to create and specify particular setting to a TxtFormatProvider.

#### Example 1: Use TxtSettings

{{source=..\SamplesCS\RadSpreadProcessing\FormatsAndConversion\Txt\RadSpreadProcessingTxtSettings.cs region=radspreadprocessing-formats-and-conversion-Txt-settings_0}} 
{{source=..\SamplesVB\RadSpreadProcessing\FormatsAndConversion\Txt\RadSpreadProcessingTxtSettings.vb region=radspreadprocessing-formats-and-conversion-Txt-settings_0}}````C#
TxtFormatProvider provider = new TxtFormatProvider();
provider.Settings.Delimiter = ';';
provider.Settings.Quote = '^';
provider.Settings.HasHeaderRow = true;

````
````VB.NET
Dim provider As New TxtFormatProvider()
provider.Settings.Delimiter = ";"c
provider.Settings.Quote = "^"c
provider.Settings.HasHeaderRow = True

```` 


{{endregion}} 


	



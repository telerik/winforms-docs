---
title: Localization
page_title: Localization
description: Localization
slug: radspreadsheet-localization
tags: localization
published: True
position: 7
---

# Localization
 
To change the default English localization provider you should use the __CurrentProvider__ static property of the __SpreadsheetLocalizationProvider__ class. For example, you can load the string from a XML file like this:

{{source=..\SamplesCS\Spreadsheet\Localization.cs region=xml}} 
{{source=..\SamplesVB\Spreadsheet\Localization.vb region=xml}} 

 
{{endregion}} 

 
>important You can download a XML file that contains all the currently used strings from here: [Strings file]()
>

Another approach is to create a custom localization provider class which inherits __RichTextBoxLocalizationProvider__. In it you should just override the __GetLocalizedString__  method and return the localized string depending on current id.

{{source=..\SamplesCS\Spreadsheet\Localization.cs region=CustomClass}} 
{{source=..\SamplesVB\Spreadsheet\Localization.vb region=CustomClass}} 

 
{{endregion}} 

>note It is necessary to specify the RichTextBoxLocalizationProvider. __CurrentProvider__ property before initializing the components.
>
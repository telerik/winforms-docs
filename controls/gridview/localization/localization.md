---
title: Localization
page_title: Localization - WinForms GridView Control
description: Learn how you can localize all string used inside WinForms GridView.
slug: winforms/gridview/localization/localization
tags: localization
published: True
position: 0
previous_url: gridview-localization
---

# Localization

To localize RadGridView to display control text and messages in a specific language:

*  All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

*  Start by creating a descendant of the __RadGridLocalizationProvider__ class.

*  Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

>important **RadGridView** uses a **RadDataFilter** control to allow building of custom filtering expressions. The strings used by the data filter control can be customized after inheriting the **DataFilterLocalizationProvider** class: [RadDataFilter Localization](https://docs.telerik.com/devtools/winforms/controls/datafilter/localization/localization)

Below is a sample implementation of an English localization provider:

#### Localizing RadGridView Strings

<snippet id='gridview-myenglishradgridlocalizationprovider-myenglishlocalizationprovider-cs' />
<snippet id='gridview-myenglishradgridlocalizationprovider-myenglishlocalizationprovider-vb' />

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

<snippet id='gridview-localization1-localizegrid-cs' />
<snippet id='gridview-localization1-localizegrid-vb' />

The code provided above illustrates the approach to be used to localize the __RadGridView__ and is not intended as a full translation.

## Composite Filter Dialog Localization

The __CompositeFilterForm__ contains a __RadDataFilter__ control. To localize the strings within this control, use the __DataFilterLocalizationProvider__ class. For details about this class and the available localization strings, see the [RadDataFilter - Localization]({%slug winforms/datafilter/localization%}) article.
     
## See Also
* [Right-to-left support]({%slug winforms/gridview/localization/right-to-left-support%})



---
title: Localization
page_title: Localization - RadDataFilter
description: RadDataFilter allows you to build complex filter expressions based on the data and collection type of the source fields. 
slug: winforms/datafilter/localization
tags: data, filter, localization
published: True
position: 0
---

# Localization

To localize **RadDataFilter** to display control text and messages in a specific language:

*  All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

*  Start by creating a descendant of the **DataFilterLocalizationProvider** class.

*  Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

#### Localizing RadDataFilter Strings

<snippet id='datafilter-localization-mylocalizationprovider-cs' />
<snippet id='datafilter-localization-mylocalizationprovider-vb' />

 

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

<snippet id='datafilter-localization-applylocalizationprovider-cs' />
<snippet id='datafilter-localization-applylocalizationprovider-vb' />

 

The code provided above illustrates the approach to be used to localize the **RadDataFilter** and is not intended as a full translation.

# See Also

* [Rigth-To-Left Support]({%slug winforms/datafilter/right-to-left%})	

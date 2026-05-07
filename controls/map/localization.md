---
title: Localization
page_title: Localization - RadMap
description: RadMap can visualize tile data from the Bing Maps and the OpenStreetMaps REST services as well as from the local file system.
slug: winforms/map/localization
tags: map, structure
published: True
position: 10
---

# Localization

All required classes for localization are defined in the __Telerik.WinControls.UI.Localization__ namespace. To localize __RadMap__ to display text in a specific language:
 
*  Start by creating a descendant of the __RadMapLocalizationProvider__ class.

*  Override the __GetLocalizedString(string id)__ method and provide a translation for the label. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement.

Below is a sample implementation of an English localization provider:

#### Localizing RadMap's Strings

<snippet id='map-maplocalization-localizetext-cs' />
<snippet id='map-maplocalization-localizetext-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

<snippet id='map-maplocalization-setmaplocalization-cs' />
<snippet id='map-maplocalization-setmaplocalization-vb' />




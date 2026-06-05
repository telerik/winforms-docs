---
title: Localization
page_title: Localization - RadVirtualGrid
description: This article shows how you can localize all strings used in RadVirtualGrid.
slug: winforms/virtualgrid/localization/localization
tags: localization
published: True
position: 0
---

# Localization

To localize __RadVirtualGrid__ to display control text and messages in a specific language:

*  All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.
          
*  Start by creating a descendant of the __RadVirtualGridLocalizationProvider__ class.

*  Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

#### Localizing RadVirtualGrid Strings

<snippet id='virtualgrid-myradvirtualgridlocalizationprovider-mylocalizationprovider-cs' />
<snippet id='virtualgrid-myradvirtualgridlocalizationprovider-mylocalizationprovider-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

<snippet id='virtualgrid-virtualgridlocalization-localizegrid-cs' />
<snippet id='virtualgrid-virtualgridlocalization-localizegrid-vb' />



The code provided above illustrates the approach to be used to localize the __RadVirtualGrid__ and is not intended as a full translation.
        

# See Also
* [Rigth-To-Left Support]({%slug winforms/virtualgrid/localization/right-to-left-support%})


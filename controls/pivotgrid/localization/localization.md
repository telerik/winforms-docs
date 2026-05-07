---
title: Localization
page_title: Localization - RadPivotGrid
description: RadPivotGrid can be localized to display any text and messages in a specific language by using a PivotGridLocalizationProvider
slug: winforms/pivotgrid/localization/localization
tags: localization
published: True
position: 0
previous_url: pivotgrid-localization-localization
---

# Localization

To localize __RadPivotGrid__ to display any text and messages in a specific language:

* Create a custom __PivotGridLocalizationProvider__ class.

* Override the GetLocalizedString(string id) method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base  __GetLocalizedString__ method in the default clause of the switch statement in the example.

Below is a sample implementation of an English localization provider:

#### Localizing RadPivotGrid Strings

<snippet id='pivotgrid-pivotgridlocalization-customprovider-cs' />
<snippet id='pivotgrid-pivotgridlocalization-customprovider-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider: 

>note **RadPivotGrid**`s localization provider needs to be loaded in the constructor of the form prior to calling the __InitializeComponent__ method.
>

#### Assigning the Current Localization Provider

<snippet id='pivotgrid-pivotgridlocalization-localizepivot-cs' />
<snippet id='pivotgrid-pivotgridlocalization-localizepivot-vb' />



The code provided above illustrates the approach to be used to localize the __RadPivotGrid__ and is not intended as a full translation.

# See Also

* [How to Translate the Month Names in RadPivotGrid]({%slug translate-month-names-in-pivotgrid%}) 


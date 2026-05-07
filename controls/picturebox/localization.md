---
title: Localization
page_title: Localization
description: Localization
slug: radpicturebox-localization
tags: localization
published: True
position: 4
---

# Localization

To localize **RadPictureBox** to display control text and messages in a specific language:

* All required classes for localization are defined in **Telerik.WinControls.UI.Localization** namespace.

* Start by creating a descendant of the **RadPictureBoxLocalizationProvider** class.

Override the **GetLocalizedString(string id)** method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base **GetLocalizedString** method in the default clause of the switch statement in the example.

Below is a sample implementation of an English localization provider:

<snippet id='picturebox-pictureboxlocalizationprovider-localizationprovider-cs' />
<snippet id='picturebox-pictureboxlocalizationprovider-localizationprovider-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider:
### Assigning the Current Localization Provider

<snippet id='picturebox-pictureboxlocalizationprovider-assignlocalizationprovider-cs' />
<snippet id='picturebox-pictureboxlocalizationprovider-assignlocalizationprovider-vb' />




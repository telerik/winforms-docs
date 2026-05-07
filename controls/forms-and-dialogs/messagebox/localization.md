---
title: Localization
page_title: Localization - WinForms MessageBox
description: WinForms MessageBox provides localization of its buttons text via RadMessageLocalizationProvider.
slug: winforms/forms-and-dialogs/messagebox/localization
tags: localization
published: True
position: 5
previous_url: forms-and-dialogs-messagebox-localization
---

# Localization

__RadMessageBox__ provides localization of its buttons text via __RadMessageLocalizationProvider__:

1\. Start by creating a descendant of the __RadGridLocalizationSettings__ class. Then, override the __GetLocalizedString(string id)__ method, and in its implementation, provide a translation for the label and user messages. If one is not provided, the default value will be returned - this is guaranteed by the call to the base __GetLocalizedString__ method in the default clause of the switch statement. 

#### Creating a custom localization provider 

<snippet id='messagebox-messagebox1-localizationprovider-cs' />
<snippet id='messagebox-messagebox1-localizationprovider-vb' />

 
 
2\. To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Setting the custom localization provider to RadMessageBox 

<snippet id='messagebox-messagebox1-settingthelocalizationprovider-cs' />
<snippet id='messagebox-messagebox1-settingthelocalizationprovider-vb' />

 




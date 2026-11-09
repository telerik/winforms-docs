---
title: Localization
page_title: Localization - WinForms MessageBox
description: WinForms MessageBox provides localization of its buttons text via RadMessageLocalizationProvider.
components: ["messagebox"]
slug: winforms/forms-and-dialogs/messagebox/localization
tags: localization
published: True
position: 5
previous_url: forms-and-dialogs-messagebox-localization
---

# Localization

The Progress® Telerik® UI for WinForms `RadMessageBox` uses `RadMessageLocalizationProvider` to localize its button text.

## Configuring the Localization Provider

To provide custom button text, follow these steps:

1. Create a descendant of the `RadGridLocalizationSettings` class and override the `GetLocalizedString(string id)` method. Provide translations for labels and user messages. If a translation is not provided, the default value is returned because the default switch clause calls the base method:

   <snippet id='messagebox-messagebox1-localizationprovider-cs' />
   <snippet id='messagebox-messagebox1-localizationprovider-vb' />

2. Instantiate the custom localization provider and assign it as the current localization provider:

   <snippet id='messagebox-messagebox1-settingthelocalizationprovider-cs' />
   <snippet id='messagebox-messagebox1-settingthelocalizationprovider-vb' />

## See Also

* [MessageBox Overview]({%slug winforms/forms-and-dialogs/messagebox%})
* [MessageBox Structure]({%slug winforms/forms-and-dialogs/messagebox/structure%})

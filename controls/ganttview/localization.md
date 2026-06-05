---
title: Localization
page_title: Localization - WinForms GanttView Control
description: Learn how you can localize WinForms GanttView to display control text and messages in a specific language.
slug: winforms/ganttview-/localization
tags: localization
published: True
position: 16
previous_url: ganttview-localizaton
---

# Localization

To localize __RadGanttView__ to display control text and messages in a specific language:

1. Start by creating a descendant of the __GanttViewLocalizationProvider__ class.

1. Override the __GetLocalizedString(string id)__ method and provide a translation for the texts. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the __base GetLocalizedString__ method in the default clause of the switch statement in the example.
            
Below is a sample implementation of an English localization provider:

<snippet id='ganttview-localizationprovider-localizationprovider-cs' />
<snippet id='ganttview-localizationprovider-localizationprovider-vb' />

 

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

<snippet id='ganttview-localizationprovider-applylocalizationprovider-cs' />
<snippet id='ganttview-localizationprovider-applylocalizationprovider-vb' />

 




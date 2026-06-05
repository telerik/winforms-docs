---
title: Localizing RadScheduler
page_title: Localizing RadScheduler - WinForms Scheduler Control
description: To localize WinForms Scheduler to display control text and messages in a specific language create a descendant of the RadSchedulerLocalizationProvider class.
slug: winforms/scheduler/localization/translating-strings
tags: translating,strings
published: True
position: 0
previous_url: scheduler-localization-translating-strings
---

# Localizing RadScheduler

To localize __RadScheduler__ to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadSchedulerLocalizationProvider__ class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the default clause of the switch statement in the example.

Below is a sample implementation of a custom localization provider:

#### Custom Localization Provider

<snippet id='scheduler-customschedulerlocalizationprovider-schedulerprovider-cs' />
<snippet id='scheduler-customschedulerlocalizationprovider-schedulerprovider-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Change the Current Provider

<snippet id='scheduler-assignproviders-assignschedulerprovider-cs' />
<snippet id='scheduler-assignproviders-assignschedulerprovider-vb' />



# See Also

* [Right-to-Left Support]({%slug winforms/scheduler/localization/right-to-left-support%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Themes and Appearance]({%slug winforms/scheduler/appearance/themes-and-appearance%})


---
title: Localizing Scheduler Navigator
page_title: Localizing Scheduler Navigator - RadScheduler
description: Localizing Scheduler Navigator
slug: winforms/scheduler/localization/localizing-scheduler-navigator
tags: localizing,scheduler,navigator
published: True
position: 1
previous_url: scheduler-localization-localizing-scheduler-navigator
---

# Localizing Scheduler Navigator

The __RadSchedulerNavigator__ control uses the __SchedulerNavigatorLocalizationProvider__ class to define the default values for all strings that are displayed to the user.  You can easily override the default localization by inheriting from the __SchedulerNavigatorLocalizationProvider__ class and override its __GetLocalizedString__ method:

#### Custom Localization Provider

<snippet id='scheduler-customnavigatorlocalizationprovider-navigatorprovider-cs' />
<snippet id='scheduler-customnavigatorlocalizationprovider-navigatorprovider-vb' />



In order to utilize the new Localization Provider, you should create an instance of the new provider and assign it to the static __CurrentProvider__ property of __SchedulerNavigatorLocalizationProvider__ class:

#### Change the Current Provider

<snippet id='scheduler-assignproviders-assignnavigatorprovider-cs' />
<snippet id='scheduler-assignproviders-assignnavigatorprovider-vb' />



# See Also

* [Right-to-Left Support]({%slug winforms/scheduler/localization/right-to-left-support%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Themes and Appearance]({%slug winforms/scheduler/appearance/themes-and-appearance%})

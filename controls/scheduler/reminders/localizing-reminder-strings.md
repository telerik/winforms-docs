---
title: Localizing Reminder Strings
page_title: Localizing Reminder Strings - RadScheduler
description: Localizing Reminder Strings
slug: winforms/scheduler/reminders/localizing-reminder-strings
tags: localizing,reminder,strings
published: True
position: 2
previous_url: scheduler-reminders-localizing-reminder-strings
---

# Localizing Reminder Strings

To localize __RadReminder__ to display control text and messages in a specific language:

* Start by creating a descendant of the __RadReminderLocalizationProvider__ class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

#### Sample English Localization Provider

<snippet id='scheduler-englishreminderlocalizationprovider-englishlocalizationprovider-cs' />
<snippet id='scheduler-englishreminderlocalizationprovider-englishlocalizationprovider-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Change the Current Provider

<snippet id='scheduler-schedulerreminder-usingreminderlocalization-cs' />
<snippet id='scheduler-schedulerreminder-usingreminderlocalization-vb' />



The code provided above illustrates the approach to be used to localize the __RadReminder__ and is not intended as a full translation.

# See Also

* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Working with Appointments]({%slug winforms/scheduler/appointments-and-dialogs/working-with-appointments%})
* [Localizing RadScheduler]({%slug winforms/scheduler/localization/translating-strings%})
* [Themes and Appearance]({%slug winforms/scheduler/appearance/themes-and-appearance%})
        

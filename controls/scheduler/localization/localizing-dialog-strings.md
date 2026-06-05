---
title: Localizing Dialog Strings
page_title: Localizing Dialog Strings - RadScheduler
description: RadScheduler has a built-in LocalizationProvider. You can use it in order to localize your strings. However, when you implement a custom dialog, you can create a custom localization logic.
slug: winforms/scheduler/localization/localizing-dialog-strings
tags: localizing,dialog,strings
published: True
position: 2
previous_url: scheduler-localization-localizing-dialog-strings
---

# Localizing Dialog Strings

__RadScheduler__ has a built-in LocalizationProvider. You can use it in order to localize your strings. However, when you implement a custom dialog, you can create a custom localization logic. The __LocalizeDialog__ method is called when the dialog strings need to be localized. This method is part of the __RadSchedulerDialog__ base class implementation. Take a look at the default implementation:

#### Localizing the EditAppointmentDialog

<snippet id='scheduler-locappointmenteditform-localizedialog-cs' />
<snippet id='scheduler-locappointmenteditform-localizedialog-vb' />



# See Also

* [Right-to-Left Support]({%slug winforms/scheduler/localization/right-to-left-support%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Themes and Appearance]({%slug winforms/scheduler/appearance/themes-and-appearance%})

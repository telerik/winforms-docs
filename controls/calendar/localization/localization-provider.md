---
title: Localization Provider
page_title: Localization Provider - WinForms Calendar Control
description: Learn how to use CalendarLocalizationProvider.
slug: winforms/calendar/localization/localization-provider
tags: localization,provider
published: True
position: 5
previous_url: calendar-localization-localization-provider
---

# Localization Provider

To localize RadCalendar to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI__ namespace.
          

* Start by creating a descendant of the __CalendarLocalizationProvider__ class.
          

* Override the __GetLocalizedString(string id)__ method and provide a translation for the available strings. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.
          

## 

Below is a sample implementation of an English localization provider:
        
<snippet id='calendar-localization-localization-provider-localization-cs' />
<snippet id='calendar-localization-localization-provider-localization-vb' />

 
To apply the custom localization provider, instantiate and assign it to the current localization provider:  

<snippet id='calendar-localization-localization-provider-usage-cs' />
<snippet id='calendar-localization-localization-provider-usage-vb' />

## See Also

* [Date Format Pattern]({%slug winforms/calendar/localization/date-format-pattern%})
* [Globalization Properties]({%slug winforms/calendar/localization/globalization-properties%})
* [Localization]({%slug  winforms/calendar/localization%})
* [CultureInfo and RegionInfo Basics]({%slug winforms/calendar/localization/cultureinfo-and-regioninfo-basics%})
* [Properties that can be localized]({%slug winforms/calendar/localization/properties-that-can-be-localized%})
* [Right-To-Left Support]({%slug winforms/calendar/localization/right-to-left-support%})




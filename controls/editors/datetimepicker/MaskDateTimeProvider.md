---
title: MaskDateTimeProvider
page_title: MaskDateTimeProvider | RadDateTimePicker
description: This article shows what is the MaskDateTimeProvider and how you can access it.
slug: winforms/editors/maskeddatetimeprovider
tags: datetimepicker, maskeddatetimeprovider
published: True
position: 7
---

# MaskDateTimeProvider

The MaskDateTimeProvider is responsible for the parsing of the dates. The MaskDateTimeProvider can be accessed by casting to that appropriate class. This provider contains useful properties and methods that can help you to navigate trough the date parts.
        

* The __AutoSelectNextPart__ property controls whether or not the next date part will be automatically selected when the user types.
            

* The __SelectedItemIndex__ property can be used to retrieve the current selected part of the date.
            

* The __SelectFirstItem__ method just selects the first part of the date.
            

* The __SelectNextItem__ method just selects the last part of the date.

The following code spinet demonstrates how one can access and use the provider:     

{{source=..\SamplesCS\Editors\DateTimePicker2.cs region=provider}} 
{{source=..\SamplesVB\Editors\DateTimePicker2.vb region=provider}} 

````C#
MaskDateTimeProvider provider = this.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider as MaskDateTimeProvider;
provider.AutoSelectNextPart = true;

````
````VB.NET
Dim provider As MaskDateTimeProvider = TryCast(Me.radDateTimePicker1.DateTimePickerElement.TextBoxElement.Provider, MaskDateTimeProvider)
provider.AutoSelectNextPart = True

````

{{endregion}} 

>note 
The __MaskProviderCreated__ event will be fired each time when new provider instance is created. For example when the MaskType is changed.


# See Also

* [Design Time]({%slug winforms/editors/datetimepicker/designtime%})
* [Free Form Date Time Parsing]({%slug winforms/editors/datetimepicker/free-form-date-time-parsing%})
* [Properties]({%slug winforms/editors/datetimepicker/raddatetimepicker-properties%})
* [Structure]({%slug winforms/editors/datetimepicker%})

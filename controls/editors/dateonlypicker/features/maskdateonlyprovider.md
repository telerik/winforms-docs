---
title: MaskDateOnlyProvider
page_title: MaskDateOnlyProvider - RadDateOnlyPicker 
description: This article shows what is the MaskDateOnlyProvider and how you can access it.
slug: editors-features-maskdateonlyprovider
tags: dateonlypicker, maskdateonlyprovider, netcore
published: True
position: 0
---

# MaskDateOnlyProvider

The MaskDateOnlyProvider is responsible for the parsing of the dates. The MaskDateOnlyProvider can be accessed by casting to that appropriate class. Here is a list of the expose properties.

* The __AutoCompleteYear__ property controls whether to auto-complete years on user input.
* The __YearResetValue__ property determines the year value when is has been reset.           
* The __Value__ property gets or sets the value of the provider.
* The __MinDate__ property gets or sets the min date of the provider.
* The __MaxDate__ property gets or sets the max date of the provider.
* The __AutoSelectNextPart__ property controls whether or not the next date part will be automatically selected when the user types.
* The __SelectedItemIndex__ property can be used to retrieve the current selected part of the date.           
* The __SelectFirstItem__ method just selects the first part of the date.
* The __SelectNextItem__ method just selects the last part of the date.

The following code spinet demonstrates how one can access and use the provider:     

{{source=..\SamplesCS\Editors\DateOnlyPicker.cs region=provider}} 
{{source=..\SamplesVB\Editors\DateOnlyPicker.vb region=provider}} 

````C#
MaskDateOnlyProvider provider = this.radDateOnlyPicker1.DateOnlyPickerElement.TextBoxElement.Provider as MaskDateOnlyProvider;
provider.AutoSelectNextPart = true;

````
````VB.NET
Dim provider As MaskDateOnlyProvider = TryCast(Me.radDateOnlyPicker1.DateOnlyPickerElement.TextBoxElement.Provider, MaskDateOnlyProvider)
provider.AutoSelectNextPart = True

````

{{endregion}} 

>note 
The __MaskProviderCreated__ event will be fired each time when new provider instance is created. For example when the MaskType is changed.


## See Also

* [Design Time]({%slug editors-dateonlypicker-design-time%})
* [Properties]({%slug editors-dateonlypicker-properties%})
* [Structure]({%slug editors-dateonlypicker-structure%})

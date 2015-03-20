---
title: Localization
page_title: Localization
description: Localization
slug: editors-timepicker-localization
tags: localization
published: True
position: 3
---

# Localization



## 

To localize RadTimePicker to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadTimePickerLocalizationProvider__class. 

* Override the __GetLocalizedString(string id)__method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__method in the __default__clause of the __switch__statement in the example. 

Below is a sample implementation of an English localization provider:

#### __[C#] Localizing RadTimePicker Strings__

{{region LocalizationProvider}}
	        class MyTimePickerLocalizationProvider : RadTimePickerLocalizationProvider
	        {
	            public override string GetLocalizedString(string id)
	            {
	                switch (id)
	                {
	                    case RadTimePickerStringId.HourHeaderText: return "Hours";
	                    case RadTimePickerStringId.MinutesHeaderText: return "Minutes";
	                    case RadTimePickerStringId.CloseButtonText: return "Close";
	                    default: return string.Empty;
	                }
	            }
	        }
	{{endregion}}



#### __[VB.NET] Localizing RadTimePicker Strings__

{{region LocalizationProvider}}
	    Class MyTimePickerLocalizationProvider
	        Inherits RadTimePickerLocalizationProvider
	
	        Public Overrides Function GetLocalizedString(id As String) As String
	            Select Case id
	                Case RadTimePickerStringId.HourHeaderText
	                    Return "Hours"
	                Case RadTimePickerStringId.MinutesHeaderText
	                    Return "Minutes"
	                Case RadTimePickerStringId.CloseButtonText
	                    Return "Close"
	                Case Else
	                    Return String.Empty
	            End Select
	        End Function
	
	    End Class
	{{endregion}}



To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### __[C#] Assigning the Current Localization Provider__

{{region settingTheLocalizationProvider}}
	            RadTimePickerLocalizationProvider.CurrentProvider = new MyTimePickerLocalizationProvider();
	{{endregion}}



#### __[VB.NET] Assigning the Current Localization Provider__

{{region settingTheLocalizationProvider}}
	        RadTimePickerLocalizationProvider.CurrentProvider = New MyTimePickerLocalizationProvider()
	{{endregion}}



The code provided above illustrates the approach to be used to localize the __RadTimePicker__ and is not intended as a full translation.

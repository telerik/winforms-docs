---
title: Localization
page_title: Localization | UI for WinForms Documentation
description: Localization
slug: winforms/editors/timepicker/localization
tags: localization
published: True
position: 4
previous_url: editors-timepicker-localization
---

# Localization
 

## 

To localize RadTimePicker to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadTimePickerLocalizationProvider__ class. 

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example. 

Below is a sample implementation of an English localization provider:

#### Localizing RadTimePicker Strings 

{{source=..\SamplesCS\Editors\TimePicker1.cs region=LocalizationProvider}} 
{{source=..\SamplesVB\Editors\TimePicker1.vb region=LocalizationProvider}} 

````C#
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

````
````VB.NET
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

````

{{endregion}} 
 

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider 

{{source=..\SamplesCS\Editors\TimePicker1.cs region=settingTheLocalizationProvider}} 
{{source=..\SamplesVB\Editors\TimePicker1.vb region=settingTheLocalizationProvider}} 

````C#
RadTimePickerLocalizationProvider.CurrentProvider = new MyTimePickerLocalizationProvider();

````
````VB.NET
RadTimePickerLocalizationProvider.CurrentProvider = New MyTimePickerLocalizationProvider()

````

{{endregion}} 
 

The code provided above illustrates the approach to be used to localize the __RadTimePicker__ and is not intended as a full translation.

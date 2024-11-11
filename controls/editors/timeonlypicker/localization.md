---
title: Localization
page_title: Localization - WinForms TimeOnlyPicker Control
description: Shows how you can use the localization provider to change all string used in the control to custom ones. 
slug: editors-timeonlypicker-localization
tags: localization
published: True
position: 5
---

# Localization

To localize __RadTimeOnlyPicker__ to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadTimePickerLocalizationProvider__ class. 

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the `default` clause of the __switch__ statement in the example. 

Below is a sample implementation of an English localization provider:

#### Localizing RadTimeOnlyPicker Strings 


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
 

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider 

````C#
RadTimePickerLocalizationProvider.CurrentProvider = new MyTimePickerLocalizationProvider();

````
````VB.NET
RadTimePickerLocalizationProvider.CurrentProvider = New MyTimePickerLocalizationProvider()

````


The code provided above illustrates the approach to be used to localize the __RadTimeOnlyPicker__ and is not intended as a full translation.

## See Also

* [Structure]({%slug editors-timeonlypicker-structure%})
* [Properties and Events]({%slug editors-timeonlypicker-properties-and-events%})
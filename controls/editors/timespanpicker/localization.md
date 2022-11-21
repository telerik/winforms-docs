---
title: Localization
page_title: Localization - RadTimeSpanPicker
description: RadTimeSpanPicker is a UI component that provides a full control over picking a specific time span and duration.
slug: radtimespanpicker-overview
tags: radtimespanpicker
published: True
position: 7
---


# Localization

To localize __RadTimeSpanPicker__ to display any text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadTimeSpanPickerLocalizationProvider__ class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

{{source=..\SamplesCS\Editors\TimeSpanCode.cs region=Localization}} 
{{source=..\SamplesVB\Editors\TimeSpanCode.vb region=Localization}}
````C#
class MyRadTimeSpanPickerLocalizationProvider : RadTimeSpanPickerLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case RadTimeSpanPickerStringId.NullText: return "Select time span";
            case RadTimeSpanPickerStringId.DaysText: return "Days";
            case RadTimeSpanPickerStringId.HoursText: return "Hours";
            case RadTimeSpanPickerStringId.MinutesText: return "Minutes";
            case RadTimeSpanPickerStringId.SecondsText: return "Seconds";
            case RadTimeSpanPickerStringId.MillisecondsText: return "Milliseconds";
            case RadTimeSpanPickerStringId.CloseButtonText: return "Close";
        }
        return base.GetLocalizedString(id);
    }
}

````
````VB.NET
Friend Class MyRadTimeSpanPickerLocalizationProvider
    Inherits RadTimeSpanPickerLocalizationProvider
    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case RadTimeSpanPickerStringId.NullText
                Return "Select time span"
            Case RadTimeSpanPickerStringId.DaysText
                Return "Days"
            Case RadTimeSpanPickerStringId.HoursText
                Return "Hours"
            Case RadTimeSpanPickerStringId.MinutesText
                Return "Minutes"
            Case RadTimeSpanPickerStringId.SecondsText
                Return "Seconds"
            Case RadTimeSpanPickerStringId.MillisecondsText
                Return "Milliseconds"
            Case RadTimeSpanPickerStringId.CloseButtonText
                Return "Close"
        End Select
        Return MyBase.GetLocalizedString(id)
    End Function
End Class

```` 

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\Editors\TimeSpanCode.cs region=ChangeProvider}} 
{{source=..\SamplesVB\Editors\TimeSpanCode.vb region=ChangeProvider}}
````C#
RadTimeSpanPickerLocalizationProvider.CurrentProvider = new MyRadTimeSpanPickerLocalizationProvider();

````
````VB.NET
RadTimeSpanPickerLocalizationProvider.CurrentProvider = New MyRadTimeSpanPickerLocalizationProvider()

```` 

{{endregion}} 


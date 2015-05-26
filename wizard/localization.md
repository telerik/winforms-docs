---
title: Localization
page_title: Localization | UI for WinForms Documentation
description: Localization
slug: winforms/wizard/localization
tags: localization
published: True
position: 6
---

# Localization



## 

To localize RadWizard to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadWizardLocalizationProvider__class. 

* Override the __GetLocalizedString(string id)__method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__method in the __default__clause of the __switch__statement in the example. 

Below is a sample implementation of an English localization provider:#_[C#] Localizing RadWizard Strings_

	



{{source=..\SamplesCS\Wizard\WizardLocalization.cs region=CustomLocalizationProvider}} 
{{source=..\SamplesVB\Wizard\WizardLocalization.vb region=CustomLocalizationProvider}} 

````C#
        class MyWizardLocalizationProvider : RadWizardLocalizationProvider
        {
            public override string GetLocalizedString(string id)
            {
                switch (id)
                {
                    case RadWizardStringId.BackButtonText: return "<   Back";
                    case RadWizardStringId.NextButtonText: return "Next   >";
                    case RadWizardStringId.CancelButtonText: return "Cancel";
                    case RadWizardStringId.FinishButtonText: return "Finish";
                    case RadWizardStringId.HelpButtonText: return "<html><u>Help</u></html>";
                    default: return string.Empty;
                }
            }
        }
````
````VB.NET
    Class MyWizardLocalizationProvider
        Inherits RadWizardLocalizationProvider

        Public Overrides Function GetLocalizedString(id As String) As String
            Select Case id
                Case RadWizardStringId.BackButtonText
                    Return "<   Back"
                Case RadWizardStringId.NextButtonText
                    Return "Next   >"
                Case RadWizardStringId.CancelButtonText
                    Return "Cancel"
                Case RadWizardStringId.FinishButtonText
                    Return "Finish"
                Case RadWizardStringId.HelpButtonText
                    Return "<html><u>Help</u></html>"
                Case Else
                    Return String.Empty
            End Select
        End Function

    End Class
    '
````

{{endregion}} 




To apply the custom localization provider, instantiate and assign it to the current localization provider: #_[C#] Assigning the Current Localization Provider_

	



{{source=..\SamplesCS\Wizard\WizardLocalization.cs region=settingTheProvider}} 
{{source=..\SamplesVB\Wizard\WizardLocalization.vb region=settingTheProvider}} 

````C#
            RadWizardLocalizationProvider.CurrentProvider = new MyWizardLocalizationProvider();
````
````VB.NET
        RadWizardLocalizationProvider.CurrentProvider = New MyWizardLocalizationProvider()
        '
````

{{endregion}} 




The code provided above illustrates the approach to be used to localize the __RadWizard__ and is not intended as a full translation.

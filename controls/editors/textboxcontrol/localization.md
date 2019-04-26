---
title: Localization
page_title: Localization | RadTextBoxControl
description: This article shows how you can localize all string used inside RadTextBoxControl.
slug: winforms/editors/textboxcontrol/localization
tags: textboxcontrol, localization
published: True
position: 11
---

# Localization

To localize **RadTextBoxControl** to display control text and messages in a specific language:

*  All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

*  Start by creating a descendant of the **TextBoxControlLocalizationProvider** class.

*  Override the **GetLocalizedString(string id)** method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base **GetLocalizedString** method.

Below is a sample implementation of an English localization provider:

#### Localizing RadGridView Strings

````C#

    public class CustomTextBoxControlLocalizationProvider : TextBoxControlLocalizationProvider
    {
        public override string GetLocalizedString(string id)
        {
            switch (id)
            {
                case TextBoxControlStringId.ContextMenuCopy:
                    return "&Copy";
                case TextBoxControlStringId.ContextMenuCut:
                    return "Cu&t";
                case TextBoxControlStringId.ContextMenuPaste:
                    return "&Paste";
                case TextBoxControlStringId.ContextMenuDelete:
                    return "&Delete";
                case TextBoxControlStringId.ContextMenuSelectAll:
                    return "&Select All";
            }
            return base.GetLocalizedString(id);
        }
    }

````
````VB.NET

    Public Class CustomTextBoxControlLocalizationProvider
    Inherits TextBoxControlLocalizationProvider

        Public Overrides Function GetLocalizedString(ByVal id As String) As String
            Select Case id
                Case TextBoxControlStringId.ContextMenuCopy
                    Return "&Copy"
                Case TextBoxControlStringId.ContextMenuCut
                    Return "Cu&t"
                Case TextBoxControlStringId.ContextMenuPaste
                    Return "&Paste"
                Case TextBoxControlStringId.ContextMenuDelete
                    Return "&Delete"
                Case TextBoxControlStringId.ContextMenuSelectAll
                    Return "&Select All"
            End Select

            Return MyBase.GetLocalizedString(id)
        End Function
    End Class

````


To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

````C#
 TextBoxControlLocalizationProvider.CurrentProvider = new CustomTextBoxControlLocalizationProvider();

````
````VB.NET
 TextBoxControlLocalizationProvider.CurrentProvider = New CustomTextBoxControlLocalizationProvider()

````

{{endregion}}

# See Also

* [AutoComplete]({%slug winforms/editors/textboxcontrol/autocomplete%})
* [Caret positioning and selection]({%slug winforms/editors/textboxcontrol/caret-positioning-and-selection%})
* [Creating custom blocks]({%slug winforms/editors/textboxcontrol/creating-custom-blocks%})
* [Structure]({%slug winforms/editors/textboxcontrol/element-structure-and-document-object-model%})
* [Properties and Events]({%slug winforms/editors/textboxcontrol/properties%})
* [Text editing]({%slug winforms/editors/textboxcontrol/text-editing%})
---
title: Localization
page_title: Localization | RadGanttView
description: This article shows how  you can localize RadGanttView to display control text and messages in a specific language.
slug: winforms/ganttview-/localization
tags: localization
published: True
position: 13
previous_url: ganttview-localizaton
---

# Localization

To localize __RadGanttView__ to display control text and messages in a specific language:

1. Start by creating a descendant of the __GanttViewLocalizationProvider__ class.

1. Override the __GetLocalizedString(string id)__ method and provide a translation for the texts. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the __base GetLocalizedString__ method in the default clause of the switch statement in the example.
            
Below is a sample implementation of an English localization provider:

{{source=..\SamplesCS\GanttView\Localization\LocalizationProvider.cs region=LocalizationProvider}} 
{{source=..\SamplesVB\GanttView\Localization\LocalizationProvider.vb region=LocalizationProvider}} 

````C#
public class MyEnglishGanttViewLocalizationProvider : GanttViewLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case GanttViewStringId.ContextMenuAdd:
                return "&Add";
            case GanttViewStringId.ContextMenuAddChild:
                return "Add &Child";
            case GanttViewStringId.ContextMenuAddSibling:
                return "Add &Sibling";
            case GanttViewStringId.ContextMenuDelete:
                return "&Delete";
            case GanttViewStringId.ContextMenuProgress:
                return "&Progress";
            case "TimelineWeek":
                return "Week";
        }
        return string.Empty;
    }
}

````
````VB.NET
Public Class MyEnglishGanttViewLocalizationProvider
    Inherits GanttViewLocalizationProvider
    Public Overrides Function GetLocalizedString(id As String) As String
        Select Case id
            Case GanttViewStringId.ContextMenuAdd
                Return "&Add"
            Case GanttViewStringId.ContextMenuAddChild
                Return "Add &Child"
            Case GanttViewStringId.ContextMenuAddSibling
                Return "Add &Sibling"
            Case GanttViewStringId.ContextMenuDelete
                Return "&Delete"
            Case GanttViewStringId.ContextMenuProgress
                Return "&Progress"
            Case "TimelineWeek"
                Return "Week"
        End Select
        Return String.Empty
    End Function
End Class

````

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

{{source=..\SamplesCS\GanttView\Localization\LocalizationProvider.cs region=ApplyLocalizationProvider}} 
{{source=..\SamplesVB\GanttView\Localization\LocalizationProvider.vb region=ApplyLocalizationProvider}} 

````C#
GanttViewLocalizationProvider.CurrentProvider = new MyEnglishGanttViewLocalizationProvider();

````
````VB.NET
GanttViewLocalizationProvider.CurrentProvider = New MyEnglishGanttViewLocalizationProvider()

````

{{endregion}} 




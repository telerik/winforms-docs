---
title: Localization
page_title: Localization
description: Localization
slug: ganttview-localizaton
tags: localization
published: True
position: 11
---

# Localization



## 

To localize RadGanttView to display control text and messages in a specific language:
        

1. Start by creating a descendant of the GanttViewLocalizationProvider class.
            

1. Override the __GetLocalizedString(string id)__ method and provide a translation for the texts.
              If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the
              __base GetLocalizedString__method in the default clause of the switch statement in the example.
            

Below is a sample implementation of an English localization provider:
        

#### __[C#] __

{{region LocalizationProvider}}
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
	{{endregion}}



#### __[VB.NET] __

{{region LocalizationProvider}}
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
	{{endregion}}



To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### __[C#] __

{{region ApplyLocalizationProvider}}
	            GanttViewLocalizationProvider.CurrentProvider = new MyEnglishGanttViewLocalizationProvider();
	{{endregion}}



#### __[VB.NET] __

{{region ApplyLocalizationProvider}}
	        GanttViewLocalizationProvider.CurrentProvider = New MyEnglishGanttViewLocalizationProvider()
	{{endregion}}



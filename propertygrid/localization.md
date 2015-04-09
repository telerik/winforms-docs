---
title: Localization
page_title: Localization
description: Localization
slug: propertygrid-localization
tags: localization
published: True
position: 7
---

# Localization



## 

To localize RadPropertyGrid to display control text and messages in a specific language, please consider the following:
        

* All required classes for localization are defined in __Telerik.WinConrtols.UI.Localization__ namespace.
            

* Start by creating a descendant of the __PropertyGridLocalizationProvider__ class.
            

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label
              and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed
              by the call to the base __GetLocalizedString__ method in the default clause of the switch statement
              in the example.
            

Below is a sample implementation of an English localization provider:

#### __[C#] Creating English localization provider__

{{source=..\SamplesCS\PropertyGrid\PropertyGridLocalization.cs region=localizationProvider}}
	    public class MyEnglishPropertyGridLocalizationProvider : PropertyGridLocalizationProvider
	    {
	        public override string GetLocalizedString(string id)
	        {
	            switch (id)
	            {
	                case PropertyGridStringId.ContextMenuReset: return "Reset";
	                case PropertyGridStringId.ContextMenuEdit: return "Edit";
	                case PropertyGridStringId.ContextMenuExpand: return "Expand";
	                case PropertyGridStringId.ContextMenuCollapse: return "Collapse";
	                case PropertyGridStringId.ContextMenuShowDescription: return "Show description";
	                case PropertyGridStringId.ContextMenuShowToolbar: return "Show toolbar";
	
	                case PropertyGridStringId.ContextMenuSort: return "Sorta";
	                case PropertyGridStringId.ContextMenuNoSort: return "No Sort";
	                case PropertyGridStringId.ContextMenuAlphabetical: return "Alphabetical";
	                case PropertyGridStringId.ContextMenuCategorized: return "Categorized";
	                case PropertyGridStringId.ContextMenuCategorizedAlphabetical: return "Categorized Alphabetical";
	            }
	
	            return base.GetLocalizedString(id);
	        }
	    }
	{{endregion}}



#### __[VB.NET] Creating English localization provider__

{{source=..\SamplesVB\PropertyGrid\PropertyGridLocalization.vb region=localizationProvider}}
	Public Class MyEnglishPropertyGridLocalizationProvider
	    Inherits PropertyGridLocalizationProvider
	    Public Overrides Function GetLocalizedString(ByVal id As String) As String
	        Select Case id
	            Case PropertyGridStringId.ContextMenuReset
	                Return "Reset"
	            Case PropertyGridStringId.ContextMenuEdit
	                Return "Edit"
	            Case PropertyGridStringId.ContextMenuExpand
	                Return "Expand"
	            Case PropertyGridStringId.ContextMenuCollapse
	                Return "Collapse"
	            Case PropertyGridStringId.ContextMenuShowDescription
	                Return "Show description"
	            Case PropertyGridStringId.ContextMenuShowToolbar
	                Return "Show toolbar"
	
	            Case PropertyGridStringId.ContextMenuSort
	                Return "Sort"
	            Case PropertyGridStringId.ContextMenuNoSort
	                Return "No Sort"
	            Case PropertyGridStringId.ContextMenuAlphabetical
	                Return "Alphabetical"
	            Case PropertyGridStringId.ContextMenuCategorized
	                Return "Categorized"
	            Case PropertyGridStringId.ContextMenuCategorizedAlphabetical
	                Return "Categorized Alphabetical"
	        End Select
	
	        Return MyBase.GetLocalizedString(id)
	    End Function
	End Class
	{{endregion}}



To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### __[C#] Changing the localization provider__

{{source=..\SamplesCS\PropertyGrid\PropertyGridLocalization.cs region=changeLocalization}}
	            PropertyGridLocalizationProvider.CurrentProvider = new MyEnglishPropertyGridLocalizationProvider();
	{{endregion}}



#### __[VB.NET] Changing the localization provider__

{{source=..\SamplesVB\PropertyGrid\PropertyGridLocalization.vb region=changeLocalization}}
	        PropertyGridLocalizationProvider.CurrentProvider = New MyEnglishPropertyGridLocalizationProvider()
	{{endregion}}



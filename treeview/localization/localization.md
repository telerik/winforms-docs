---
title: Localization
page_title: Localization
description: Localization
slug: treeview-localization-localization
tags: localization
published: True
position: 0
---

# Localization



## Optional section title

To localize RadTreeView to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI__ namespace.

* Start by creating a descendant of the __TreeViewLocalizationProvider__class. 

* Override the __GetLocalizedString(string id)__method and provide a translation for the label and user messages.
          If a translation is not provided, the default value will be returned. 
          This behavior is guaranteed by the call to the base __GetLocalizedString__method 
          in the __default__clause of the __switch__statement in the example. 
          

Below is a sample implementation of an English localization provider:

#### __[C#] Localizing RadTreeView Strings__

{{region provider}}
	    public class MyEnglishTreeViewLocalizationProvider : TreeViewLocalizationProvider
	    {
	        public override string GetLocalizedString(string id)
	        {
	            switch (id)
	            {
	                case TreeViewStringId.ContextMenuCollapse:
	                    return "Collapse11";
	                case TreeViewStringId.ContextMenuDelete:
	                    return "Delete11";
	                case TreeViewStringId.ContextMenuEdit:
	                    return "Edit11";
	                case TreeViewStringId.ContextMenuExpand:
	                    return "Expand11";
	                case TreeViewStringId.ContextMenuNew:
	                    return "New11";
	            }
	
	            return "";
	        }
	    }
	{{endregion}}



#### __[VB.NET] Localizing RadTreeView Strings__

{{region provider}}
	    Public Overrides Function GetLocalizedString(ByVal id As String) As String
	        Select Case id
	            Case TreeViewStringId.ContextMenuCollapse
	                Return "Collapse"
	            Case TreeViewStringId.ContextMenuDelete
	                Return "Delete"
	            Case TreeViewStringId.ContextMenuEdit
	                Return "Edit"
	            Case TreeViewStringId.ContextMenuExpand
	                Return "Expand"
	            Case TreeViewStringId.ContextMenuNew
	                Return "New"
	        End Select
	
	        Return String.Empty
	    End Function
	{{endregion}}



To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### __[C#] Assigning the Current Localization Provider__

{{region localization}}
	            TreeViewLocalizationProvider.CurrentProvider = new MyEnglishTreeViewLocalizationProvider();
	{{endregion}}



#### __[VB.NET] Assigning the Current Localization Provider__

{{region localization}}
	        TreeViewLocalizationProvider.CurrentProvider = New MyEnglishTreeViewLocalizationProvider()
	{{endregion}}



The code provided above illustrates the approach to be used to localize the __RadTreeView__and is not intended as a full translation.

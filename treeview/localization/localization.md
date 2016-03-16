---
title: Localization
page_title: Localization | UI for WinForms Documentation
description: Localization
slug: winforms/treeview/localization/localization
tags: localization
published: True
position: 0
previous_url: treeview-localization-localization
---

# Localization



## Optional section title

To localize RadTreeView to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI__ namespace.

* Start by creating a descendant of the __TreeViewLocalizationProvider__ class. 

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example. 
          

Below is a sample implementation of an English localization provider:

#### Localizing RadTreeView Strings

{{source=..\SamplesCS\TreeView\MyEnglishTreeViewLocalizationProvider.cs region=provider}} 
{{source=..\SamplesVB\TreeView\MyEnglishTreeViewLocalizationProvider.vb region=provider}} 

````C#
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

````
````VB.NET
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

````

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\TreeView\TreeLocalization.cs region=localization}} 
{{source=..\SamplesVB\TreeView\TreeLocalization.vb region=localization}} 

````C#
TreeViewLocalizationProvider.CurrentProvider = new MyEnglishTreeViewLocalizationProvider();

````
````VB.NET
TreeViewLocalizationProvider.CurrentProvider = New MyEnglishTreeViewLocalizationProvider()

````

{{endregion}} 

The code provided above illustrates the approach to be used to localize the __RadTreeView__ and is not intended as a full translation.

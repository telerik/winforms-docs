---
title: Localization
page_title: Localization - Filter View
description: Learn how you can localize all strings used in the WinForms FilterView control.  
slug: filter-view-localization
tags: filter, view, localization, translate
published: True
position: 6  
---

# Localization

To localize **RadFilterView** to display control text and messages in a specific language:

* All required classes for localization are defined in Telerik.WinControls.UI namespace.

* Start by creating a descendant of the **RadFilterViewLocalizationProvider** class.

* Override the **GetLocalizedString(string id)** method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base **GetLocalizedString** method in the default clause of the switch statement in the example.

Below is a sample implementation of an English localization provider: 

#### Localizing RadFilterView Strings

{{source=..\SamplesCS\FilterView\FilterViewLocalization.cs region=EnglishProvider}} 
{{source=..\SamplesVB\FilterView\FilterViewLocalization.vb region=EnglishProvider}} 

````C#

public class EnglishFilterViewLocalizationProvider : Telerik.WinControls.UI.FilterView.RadFilterViewLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case RadFilterViewStringId.ClearCategoryFilterMenuItem: return "Clear Filter";
            case RadFilterViewStringId.ClearAllFiltersMenuItem: return "Clear All Filters";

            case RadFilterViewStringId.BooleanCategoryTrue: return "True";
            case RadFilterViewStringId.BooleanCategoryFalse: return "False";

            case RadFilterViewStringId.NumericCategoryFrom: return "From:";
            case RadFilterViewStringId.NumericCategoryTo: return "To:";

            default: return base.GetLocalizedString(id);
        }
    }
}

````
````VB.NET

Public Class EnglishFilterViewLocalizationProvider
    Inherits Telerik.WinControls.UI.FilterView.RadFilterViewLocalizationProvider

    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
            Case RadFilterViewStringId.ClearCategoryFilterMenuItem
                Return "Clear Filter"
            Case RadFilterViewStringId.ClearAllFiltersMenuItem
                Return "Clear All Filters"
            Case RadFilterViewStringId.BooleanCategoryTrue
                Return "True"
            Case RadFilterViewStringId.BooleanCategoryFalse
                Return "False"
            Case RadFilterViewStringId.NumericCategoryFrom
                Return "From:"
            Case RadFilterViewStringId.NumericCategoryTo
                Return "To:"
            Case Else
                Return MyBase.GetLocalizedString(id)
        End Select
    End Function
End Class

````

{{endregion}}   

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\FilterView\FilterViewLocalization.cs region=ApplyProvider}} 
{{source=..\SamplesVB\FilterView\FilterViewLocalization.vb region=ApplyProvider}} 

````C#

RadFilterViewLocalizationProvider.CurrentProvider = new EnglishFilterViewLocalizationProvider();
InitializeComponent();

````
````VB.NET

RadFilterViewLocalizationProvider.CurrentProvider = New EnglishFilterViewLocalizationProvider()
InitializeComponent()

````

{{endregion}}   

 
# See Also

* [Getting Started]({%slug filter-view-getting-started%})
* [Structure]({%slug filter-view-structure%})
 
        

---
title: Localization
page_title: Localization | RadVirtualGrid
description: This article shows how you can localize all strings used in RadVirtualGrid.
slug: winforms/virtualgrid/localization/localization
tags: localization
published: True
position: 0
---

# Localization

To localize __RadVirtualGrid__ to display control text and messages in a specific language:

*  All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.
          
*  Start by creating a descendant of the __RadVirtualGridLocalizationProvider__ class.

*  Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

#### Localizing RadVirtualGrid Strings

{{source=..\SamplesCS\VirtualGrid\Localization\MyRadVirtualGridLocalizationProvider.cs  region=MyLocalizationProvider}}
{{source=..\SamplesVB\VirtualGrid\Localization\MyRadVirtualGridLocalizationProvider.vb  region=MyLocalizationProvider}}
````C#
public class MyRadVirtualGridLocalizationProvider : RadVirtualGridLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case RadVirtualGridStringId.NoDataText: return "No data to display";
            case RadVirtualGridStringId.FilterFunctionBetween: return "Between";
            case RadVirtualGridStringId.FilterFunctionContains: return "Contains";
            case RadVirtualGridStringId.FilterFunctionDoesNotContain: return "Does not contain";
            case RadVirtualGridStringId.FilterFunctionEndsWith: return "Ends with";
            case RadVirtualGridStringId.FilterFunctionEqualTo: return "Equals";
            case RadVirtualGridStringId.FilterFunctionGreaterThan: return "Greater than";
            case RadVirtualGridStringId.FilterFunctionGreaterThanOrEqualTo: return "Greater than or equal to";
            case RadVirtualGridStringId.FilterFunctionIsEmpty: return "Is empty";
            case RadVirtualGridStringId.FilterFunctionIsNull: return "Is null";
            case RadVirtualGridStringId.FilterFunctionLessThan: return "Less than";
            case RadVirtualGridStringId.FilterFunctionLessThanOrEqualTo: return "Less than or equal to";
            case RadVirtualGridStringId.FilterFunctionNoFilter: return "No filter";
            case RadVirtualGridStringId.FilterFunctionNotBetween: return "Not between";
            case RadVirtualGridStringId.FilterFunctionNotEqualTo: return "Not equal to";
            case RadVirtualGridStringId.FilterFunctionNotIsEmpty: return "Is not empty";
            case RadVirtualGridStringId.FilterFunctionNotIsNull: return "Is not null";
            case RadVirtualGridStringId.FilterFunctionStartsWith: return "Starts with";
            case RadVirtualGridStringId.FilterFunctionCustom: return "Custom";
            case RadVirtualGridStringId.FilterOperatorNoFilter: return "No filter";
            case RadVirtualGridStringId.FilterOperatorCustom: return "Custom";
            case RadVirtualGridStringId.FilterOperatorIsLike: return "Like";
            case RadVirtualGridStringId.FilterOperatorNotIsLike: return "NotLike";
            case RadVirtualGridStringId.FilterOperatorLessThan: return "LessThan";
            case RadVirtualGridStringId.FilterOperatorLessThanOrEqualTo: return "LessThanOrEquals";
            case RadVirtualGridStringId.FilterOperatorEqualTo: return "Equals";
            case RadVirtualGridStringId.FilterOperatorNotEqualTo: return "NotEquals";
            case RadVirtualGridStringId.FilterOperatorGreaterThanOrEqualTo: return "GreaterThanOrEquals";
            case RadVirtualGridStringId.FilterOperatorGreaterThan: return "GreaterThan";
            case RadVirtualGridStringId.FilterOperatorStartsWith: return "StartsWith";
            case RadVirtualGridStringId.FilterOperatorEndsWith: return "EndsWith";
            case RadVirtualGridStringId.FilterOperatorContains: return "Contains";
            case RadVirtualGridStringId.FilterOperatorDoesNotContain: return "NotContains";
            case RadVirtualGridStringId.FilterOperatorIsNull: return "IsNull";
            case RadVirtualGridStringId.FilterOperatorNotIsNull: return "NotNull";
            case RadVirtualGridStringId.FilterOperatorIsContainedIn: return "ContainedIn";
            case RadVirtualGridStringId.FilterOperatorNotIsContainedIn: return "NotContainedIn";
            case RadVirtualGridStringId.AddNewRowString: return "Click here to add a new row";
            case RadVirtualGridStringId.PagingPanelPagesLabel: return "Page";
            case RadVirtualGridStringId.PagingPanelOfPagesLabel: return "of";
            case RadVirtualGridStringId.BestFitMenuItem: return "Best Fit";
            case RadVirtualGridStringId.ClearSortingMenuItem: return "Clear Sorting";
            case RadVirtualGridStringId.SortDescendingMenuItem: return "Sort Descending";
            case RadVirtualGridStringId.SortAscendingMenuItem: return "Sort Ascending";
            case RadVirtualGridStringId.PinAtRightMenuItem: return "Pin at right";
            case RadVirtualGridStringId.PinAtLeftMenuItem: return "Pin at left";
            case RadVirtualGridStringId.PinAtBottomMenuItem: return "Pin at bottom";
            case RadVirtualGridStringId.PinAtTopMenuItem: return "Pin at top";
            case RadVirtualGridStringId.UnpinColumnMenuItem: return "Unpin Column";
            case RadVirtualGridStringId.UnpinRowMenuItem: return "Unpin Row";
            case RadVirtualGridStringId.PinMenuItem: return "Pinned state";
            case RadVirtualGridStringId.DeleteRowMenuItem: return "Delete Row";
            case RadVirtualGridStringId.ClearValueMenuItem: return "Clear Value";
            case RadVirtualGridStringId.EditMenuItem: return "Edit";
            case RadVirtualGridStringId.PasteMenuItem: return "Paste";
            case RadVirtualGridStringId.CutMenuItem: return "Cut";
            case RadVirtualGridStringId.CopyMenuItem: return "Copy";
            default:
                return base.GetLocalizedString(id);
        }
    }
}

````
````VB.NET
Public Class MyRadVirtualGridLocalizationProvider
    Inherits RadVirtualGridLocalizationProvider
    Public Overrides Function GetLocalizedString(id As String) As String
        Select Case id
            Case RadVirtualGridStringId.NoDataText
                Return "No data to display"
            Case RadVirtualGridStringId.FilterFunctionBetween
                Return "Between"
            Case RadVirtualGridStringId.FilterFunctionContains
                Return "Contains"
            Case RadVirtualGridStringId.FilterFunctionDoesNotContain
                Return "Does not contain"
            Case RadVirtualGridStringId.FilterFunctionEndsWith
                Return "Ends with"
            Case RadVirtualGridStringId.FilterFunctionEqualTo
                Return "Equals"
            Case RadVirtualGridStringId.FilterFunctionGreaterThan
                Return "Greater than"
            Case RadVirtualGridStringId.FilterFunctionGreaterThanOrEqualTo
                Return "Greater than or equal to"
            Case RadVirtualGridStringId.FilterFunctionIsEmpty
                Return "Is empty"
            Case RadVirtualGridStringId.FilterFunctionIsNull
                Return "Is null"
            Case RadVirtualGridStringId.FilterFunctionLessThan
                Return "Less than"
            Case RadVirtualGridStringId.FilterFunctionLessThanOrEqualTo
                Return "Less than or equal to"
            Case RadVirtualGridStringId.FilterFunctionNoFilter
                Return "No filter"
            Case RadVirtualGridStringId.FilterFunctionNotBetween
                Return "Not between"
            Case RadVirtualGridStringId.FilterFunctionNotEqualTo
                Return "Not equal to"
            Case RadVirtualGridStringId.FilterFunctionNotIsEmpty
                Return "Is not empty"
            Case RadVirtualGridStringId.FilterFunctionNotIsNull
                Return "Is not null"
            Case RadVirtualGridStringId.FilterFunctionStartsWith
                Return "Starts with"
            Case RadVirtualGridStringId.FilterFunctionCustom
                Return "Custom"
            Case RadVirtualGridStringId.FilterOperatorNoFilter
                Return "No filter"
            Case RadVirtualGridStringId.FilterOperatorCustom
                Return "Custom"
            Case RadVirtualGridStringId.FilterOperatorIsLike
                Return "Like"
            Case RadVirtualGridStringId.FilterOperatorNotIsLike
                Return "NotLike"
            Case RadVirtualGridStringId.FilterOperatorLessThan
                Return "LessThan"
            Case RadVirtualGridStringId.FilterOperatorLessThanOrEqualTo
                Return "LessThanOrEquals"
            Case RadVirtualGridStringId.FilterOperatorEqualTo
                Return "Equals"
            Case RadVirtualGridStringId.FilterOperatorNotEqualTo
                Return "NotEquals"
            Case RadVirtualGridStringId.FilterOperatorGreaterThanOrEqualTo
                Return "GreaterThanOrEquals"
            Case RadVirtualGridStringId.FilterOperatorGreaterThan
                Return "GreaterThan"
            Case RadVirtualGridStringId.FilterOperatorStartsWith
                Return "StartsWith"
            Case RadVirtualGridStringId.FilterOperatorEndsWith
                Return "EndsWith"
            Case RadVirtualGridStringId.FilterOperatorContains
                Return "Contains"
            Case RadVirtualGridStringId.FilterOperatorDoesNotContain
                Return "NotContains"
            Case RadVirtualGridStringId.FilterOperatorIsNull
                Return "IsNull"
            Case RadVirtualGridStringId.FilterOperatorNotIsNull
                Return "NotNull"
            Case RadVirtualGridStringId.FilterOperatorIsContainedIn
                Return "ContainedIn"
            Case RadVirtualGridStringId.FilterOperatorNotIsContainedIn
                Return "NotContainedIn"
            Case RadVirtualGridStringId.AddNewRowString
                Return "Click here to add a new row"
            Case RadVirtualGridStringId.PagingPanelPagesLabel
                Return "Page"
            Case RadVirtualGridStringId.PagingPanelOfPagesLabel
                Return "of"
            Case RadVirtualGridStringId.BestFitMenuItem
                Return "Best Fit"
            Case RadVirtualGridStringId.ClearSortingMenuItem
                Return "Clear Sorting"
            Case RadVirtualGridStringId.SortDescendingMenuItem
                Return "Sort Descending"
            Case RadVirtualGridStringId.SortAscendingMenuItem
                Return "Sort Ascending"
            Case RadVirtualGridStringId.PinAtRightMenuItem
                Return "Pin at right"
            Case RadVirtualGridStringId.PinAtLeftMenuItem
                Return "Pin at left"
            Case RadVirtualGridStringId.PinAtBottomMenuItem
                Return "Pin at bottom"
            Case RadVirtualGridStringId.PinAtTopMenuItem
                Return "Pin at top"
            Case RadVirtualGridStringId.UnpinColumnMenuItem
                Return "Unpin Column"
            Case RadVirtualGridStringId.UnpinRowMenuItem
                Return "Unpin Row"
            Case RadVirtualGridStringId.PinMenuItem
                Return "Pinned state"
            Case RadVirtualGridStringId.DeleteRowMenuItem
                Return "Delete Row"
            Case RadVirtualGridStringId.ClearValueMenuItem
                Return "Clear Value"
            Case RadVirtualGridStringId.EditMenuItem
                Return "Edit"
            Case RadVirtualGridStringId.PasteMenuItem
                Return "Paste"
            Case RadVirtualGridStringId.CutMenuItem
                Return "Cut"
            Case RadVirtualGridStringId.CopyMenuItem
                Return "Copy"
            Case Else
                Return MyBase.GetLocalizedString(id)
        End Select
    End Function
End Class

````



{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\VirtualGrid\Localization\VirtualGridLocalization.cs  region=LocalizeGrid}} 
{{source=..\SamplesVB\VirtualGrid\Localization\VirtualGridLocalization.vb  region=LocalizeGrid}}
````C#
RadVirtualGridLocalizationProvider.CurrentProvider = new MyRadVirtualGridLocalizationProvider();

````
````VB.NET
RadVirtualGridLocalizationProvider.CurrentProvider = New MyRadVirtualGridLocalizationProvider()

````



{{endregion}} 

The code provided above illustrates the approach to be used to localize the __RadVirtualGrid__ and is not intended as a full translation.
        

# See Also
* [Rigth-To-Left Support]({%slug winforms/virtualgrid/localization/right-to-left-support%})


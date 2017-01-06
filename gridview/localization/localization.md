---
title: Localization
page_title: Localization | RadGridView
description: This article shows how you can localize all string used inside RadGridView.
slug: winforms/gridview/localization/localization
tags: localization
published: True
position: 0
previous_url: gridview-localization
---

# Localization

To localize RadGridView to display control text and messages in a specific language:

*  All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

*  Start by creating a descendant of the __RadGridLocalizationProvider__ class.

*  Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

#### Localizing RadGridView Strings

{{source=..\SamplesCS\GridView\Localization\MyEnglishRadGridLocalizationProvider.cs region=myEnglishLocalizationProvider}} 
{{source=..\SamplesVB\GridView\Localization\MyEnglishRadGridLocalizationProvider.vb region=myEnglishLocalizationProvider}} 

````C#
public class MyEnglishRadGridLocalizationProvider : RadGridLocalizationProvider
{
   public override string GetLocalizedString(string id)
{
    switch (id)
    {
        case RadGridStringId.ConditionalFormattingPleaseSelectValidCellValue: return "Please select valid cell value";
        case RadGridStringId.ConditionalFormattingPleaseSetValidCellValue: return "Please set a valid cell value";
        case RadGridStringId.ConditionalFormattingPleaseSetValidCellValues: return "Please set a valid cell values";
        case RadGridStringId.ConditionalFormattingPleaseSetValidExpression: return "Please set a valid expression";
        case RadGridStringId.ConditionalFormattingItem: return "Item";

        case RadGridStringId.ConditionalFormattingInvalidParameters: return "Invalid parameters";
        case RadGridStringId.FilterFunctionBetween: return "Between";
        case RadGridStringId.FilterFunctionContains: return "Contains";
        case RadGridStringId.FilterFunctionDoesNotContain: return "Does not contain";
        case RadGridStringId.FilterFunctionEndsWith: return "Ends with";
        case RadGridStringId.FilterFunctionEqualTo: return "Equals";
        case RadGridStringId.FilterFunctionGreaterThan: return "Greater than";
        case RadGridStringId.FilterFunctionGreaterThanOrEqualTo: return "Greater than or equal to";
        case RadGridStringId.FilterFunctionIsEmpty: return "Is empty";
        case RadGridStringId.FilterFunctionIsNull: return "Is null";
        case RadGridStringId.FilterFunctionLessThan: return "Less than";
        case RadGridStringId.FilterFunctionLessThanOrEqualTo: return "Less than or equal to";
        case RadGridStringId.FilterFunctionNoFilter: return "No filter";
        case RadGridStringId.FilterFunctionNotBetween: return "Not between";
        case RadGridStringId.FilterFunctionNotEqualTo: return "Not equal to";
        case RadGridStringId.FilterFunctionNotIsEmpty: return "Is not empty";
        case RadGridStringId.FilterFunctionNotIsNull: return "Is not null";
        case RadGridStringId.FilterFunctionStartsWith: return "Starts with";
        case RadGridStringId.FilterFunctionCustom: return "Custom";

        case RadGridStringId.FilterOperatorBetween: return "Between";
        case RadGridStringId.FilterOperatorContains: return "Contains";
        case RadGridStringId.FilterOperatorDoesNotContain: return "NotContains";
        case RadGridStringId.FilterOperatorEndsWith: return "EndsWith";
        case RadGridStringId.FilterOperatorEqualTo: return "Equals";
        case RadGridStringId.FilterOperatorGreaterThan: return "GreaterThan";
        case RadGridStringId.FilterOperatorGreaterThanOrEqualTo: return "GreaterThanOrEquals";
        case RadGridStringId.FilterOperatorIsEmpty: return "IsEmpty";
        case RadGridStringId.FilterOperatorIsNull: return "IsNull";
        case RadGridStringId.FilterOperatorLessThan: return "LessThan";
        case RadGridStringId.FilterOperatorLessThanOrEqualTo: return "LessThanOrEquals";
        case RadGridStringId.FilterOperatorNoFilter: return "No filter";
        case RadGridStringId.FilterOperatorNotBetween: return "NotBetween";
        case RadGridStringId.FilterOperatorNotEqualTo: return "NotEquals";
        case RadGridStringId.FilterOperatorNotIsEmpty: return "NotEmpty";
        case RadGridStringId.FilterOperatorNotIsNull: return "NotNull";
        case RadGridStringId.FilterOperatorStartsWith: return "StartsWith";
        case RadGridStringId.FilterOperatorIsLike: return "Like";
        case RadGridStringId.FilterOperatorNotIsLike: return "NotLike";
        case RadGridStringId.FilterOperatorIsContainedIn: return "ContainedIn";
        case RadGridStringId.FilterOperatorNotIsContainedIn: return "NotContainedIn";
        case RadGridStringId.FilterOperatorCustom: return "Custom";

        case RadGridStringId.CustomFilterMenuItem: return "Custom";
        case RadGridStringId.CustomFilterDialogCaption: return "RadGridView Filter Dialog [{0}]";
        case RadGridStringId.CustomFilterDialogLabel: return "Show rows where:";
        case RadGridStringId.CustomFilterDialogRbAnd: return "And";
        case RadGridStringId.CustomFilterDialogRbOr: return "Or";
        case RadGridStringId.CustomFilterDialogBtnOk: return "OK";
        case RadGridStringId.CustomFilterDialogBtnCancel: return "Cancel";
        case RadGridStringId.CustomFilterDialogCheckBoxNot: return "Not";
        case RadGridStringId.CustomFilterDialogTrue: return "True";
        case RadGridStringId.CustomFilterDialogFalse: return "False";

        case RadGridStringId.FilterMenuBlanks: return "Empty";
        case RadGridStringId.FilterMenuAvailableFilters: return "Available Filters";
        case RadGridStringId.FilterMenuSearchBoxText: return "Search...";
        case RadGridStringId.FilterMenuClearFilters: return "Clear Filter";
        case RadGridStringId.FilterMenuButtonOK: return "OK";
        case RadGridStringId.FilterMenuButtonCancel: return "Cancel";
        case RadGridStringId.FilterMenuSelectionAll: return "All";
        case RadGridStringId.FilterMenuSelectionAllSearched: return "All Search Result";
        case RadGridStringId.FilterMenuSelectionNull: return "Null";
        case RadGridStringId.FilterMenuSelectionNotNull: return "Not Null";

        case RadGridStringId.FilterFunctionSelectedDates: return "Filter by specific dates:";
        case RadGridStringId.FilterFunctionToday: return "Today";
        case RadGridStringId.FilterFunctionYesterday: return "Yesterday";
        case RadGridStringId.FilterFunctionDuringLast7days: return "During last 7 days";

        case RadGridStringId.FilterLogicalOperatorAnd: return "AND";
        case RadGridStringId.FilterLogicalOperatorOr: return "OR";
        case RadGridStringId.FilterCompositeNotOperator: return "NOT";

        case RadGridStringId.DeleteRowMenuItem: return "Delete Row";
        case RadGridStringId.SortAscendingMenuItem: return "Sort Ascending";
        case RadGridStringId.SortDescendingMenuItem: return "Sort Descending";
        case RadGridStringId.ClearSortingMenuItem: return "Clear Sorting";
        case RadGridStringId.ConditionalFormattingMenuItem: return "Conditional Formatting";
        case RadGridStringId.GroupByThisColumnMenuItem: return "Group by this column";
        case RadGridStringId.UngroupThisColumn: return "Ungroup this column";
        case RadGridStringId.ColumnChooserMenuItem: return "Column Chooser";
        case RadGridStringId.HideMenuItem: return "Hide Column";
        case RadGridStringId.HideGroupMenuItem: return "Hide Group";
        case RadGridStringId.UnpinMenuItem: return "Unpin Column";
        case RadGridStringId.UnpinRowMenuItem: return "Unpin Row";
        case RadGridStringId.PinMenuItem: return "Pinned state";
        case RadGridStringId.PinAtLeftMenuItem: return "Pin at left";
        case RadGridStringId.PinAtRightMenuItem: return "Pin at right";
        case RadGridStringId.PinAtBottomMenuItem: return "Pin at bottom";
        case RadGridStringId.PinAtTopMenuItem: return "Pin at top";
        case RadGridStringId.BestFitMenuItem: return "Best Fit";
        case RadGridStringId.PasteMenuItem: return "Paste";
        case RadGridStringId.EditMenuItem: return "Edit";
        case RadGridStringId.ClearValueMenuItem: return "Clear Value";
        case RadGridStringId.CopyMenuItem: return "Copy";
        case RadGridStringId.CutMenuItem: return "Cut";
        case RadGridStringId.AddNewRowString: return "Click here to add a new row";
        case RadGridStringId.ConditionalFormattingSortAlphabetically: return "Sort columns alphabetically";
        case RadGridStringId.ConditionalFormattingCaption: return "Conditional Formatting Rules Manager";
        case RadGridStringId.ConditionalFormattingLblColumn: return "Format only cells with";
        case RadGridStringId.ConditionalFormattingLblName: return "Rule name";
        case RadGridStringId.ConditionalFormattingLblType: return "Cell value";
        case RadGridStringId.ConditionalFormattingLblValue1: return "Value 1";
        case RadGridStringId.ConditionalFormattingLblValue2: return "Value 2";
        case RadGridStringId.ConditionalFormattingGrpConditions: return "Rules";
        case RadGridStringId.ConditionalFormattingGrpProperties: return "Rule Properties";
        case RadGridStringId.ConditionalFormattingChkApplyToRow: return "Apply this formatting to entire row";
        case RadGridStringId.ConditionalFormattingChkApplyOnSelectedRows: return "Apply this formatting if the row is selected";
        case RadGridStringId.ConditionalFormattingBtnAdd: return "Add new rule";
        case RadGridStringId.ConditionalFormattingBtnRemove: return "Remove";
        case RadGridStringId.ConditionalFormattingBtnOK: return "OK";
        case RadGridStringId.ConditionalFormattingBtnCancel: return "Cancel";
        case RadGridStringId.ConditionalFormattingBtnApply: return "Apply";
        case RadGridStringId.ConditionalFormattingRuleAppliesOn: return "Rule applies to";
        case RadGridStringId.ConditionalFormattingCondition: return "Condition";
        case RadGridStringId.ConditionalFormattingExpression: return "Expression";
        case RadGridStringId.ConditionalFormattingChooseOne: return "[Choose one]";
        case RadGridStringId.ConditionalFormattingEqualsTo: return "equals to [Value1]";
        case RadGridStringId.ConditionalFormattingIsNotEqualTo: return "is not equal to [Value1]";
        case RadGridStringId.ConditionalFormattingStartsWith: return "starts with [Value1]";
        case RadGridStringId.ConditionalFormattingEndsWith: return "ends with [Value1]";
        case RadGridStringId.ConditionalFormattingContains: return "contains [Value1]";
        case RadGridStringId.ConditionalFormattingDoesNotContain: return "does not contain [Value1]";
        case RadGridStringId.ConditionalFormattingIsGreaterThan: return "is greater than [Value1]";
        case RadGridStringId.ConditionalFormattingIsGreaterThanOrEqual: return "is greater than or equal [Value1]";
        case RadGridStringId.ConditionalFormattingIsLessThan: return "is less than [Value1]";
        case RadGridStringId.ConditionalFormattingIsLessThanOrEqual: return "is less than or equal to [Value1]";
        case RadGridStringId.ConditionalFormattingIsBetween: return "is between [Value1] and [Value2]";
        case RadGridStringId.ConditionalFormattingIsNotBetween: return "is not between [Value1] and [Value1]";
        case RadGridStringId.ConditionalFormattingLblFormat: return "Format";

        case RadGridStringId.ConditionalFormattingBtnExpression: return "Expression editor";
        case RadGridStringId.ConditionalFormattingTextBoxExpression: return "Expression";

        case RadGridStringId.ConditionalFormattingPropertyGridCaseSensitive: return "CaseSensitive";
        case RadGridStringId.ConditionalFormattingPropertyGridCellBackColor: return "CellBackColor";
        case RadGridStringId.ConditionalFormattingPropertyGridCellForeColor: return "CellForeColor";
        case RadGridStringId.ConditionalFormattingPropertyGridEnabled: return "Enabled";
        case RadGridStringId.ConditionalFormattingPropertyGridRowBackColor: return "RowBackColor";
        case RadGridStringId.ConditionalFormattingPropertyGridRowForeColor: return "RowForeColor";
        case RadGridStringId.ConditionalFormattingPropertyGridRowTextAlignment: return "RowTextAlignment";
        case RadGridStringId.ConditionalFormattingPropertyGridTextAlignment: return "TextAlignment";

        case RadGridStringId.ConditionalFormattingPropertyGridCaseSensitiveDescription: return "Determines whether case-sensitive comparisons will be made when evaluating string values.";
        case RadGridStringId.ConditionalFormattingPropertyGridCellBackColorDescription: return "Enter the background color to be used for the cell.";
        case RadGridStringId.ConditionalFormattingPropertyGridCellForeColorDescription: return "Enter the foreground color to be used for the cell.";
        case RadGridStringId.ConditionalFormattingPropertyGridEnabledDescription: return "Determines whether the condition is enabled (can be evaluated and applied).";
        case RadGridStringId.ConditionalFormattingPropertyGridRowBackColorDescription: return "Enter the background color to be used for the entire row.";
        case RadGridStringId.ConditionalFormattingPropertyGridRowForeColorDescription: return "Enter the foreground color to be used for the entire row.";
        case RadGridStringId.ConditionalFormattingPropertyGridRowTextAlignmentDescription: return "Enter the alignment to be used for the cell values, when ApplyToRow is true.";
        case RadGridStringId.ConditionalFormattingPropertyGridTextAlignmentDescription: return "Enter the alignment to be used for the cell values.";

        case RadGridStringId.ColumnChooserFormCaption: return "Column Chooser";
        case RadGridStringId.ColumnChooserFormMessage: return "Drag a column header from the\ngrid here to remove it from\nthe current view.";
        case RadGridStringId.GroupingPanelDefaultMessage: return "Drag a column here to group by this column.";
        case RadGridStringId.GroupingPanelHeader: return "Group by:";
        case RadGridStringId.PagingPanelPagesLabel: return "Page";
        case RadGridStringId.PagingPanelOfPagesLabel: return "of";
        case RadGridStringId.NoDataText: return "No data to display";
        case RadGridStringId.CompositeFilterFormErrorCaption: return "Filter Error";
        case RadGridStringId.CompositeFilterFormInvalidFilter: return "The composite filter descriptor is not valid.";

        case RadGridStringId.ExpressionMenuItem: return "Expression";
        case RadGridStringId.ExpressionFormTitle: return "Expression Builder";
        case RadGridStringId.ExpressionFormFunctions: return "Functions";
        case RadGridStringId.ExpressionFormFunctionsText: return "Text";
        case RadGridStringId.ExpressionFormFunctionsAggregate: return "Aggregate";
        case RadGridStringId.ExpressionFormFunctionsDateTime: return "Date-Time";
        case RadGridStringId.ExpressionFormFunctionsLogical: return "Logical";
        case RadGridStringId.ExpressionFormFunctionsMath: return "Math";
        case RadGridStringId.ExpressionFormFunctionsOther: return "Other";
        case RadGridStringId.ExpressionFormOperators: return "Operators";
        case RadGridStringId.ExpressionFormConstants: return "Constants";
        case RadGridStringId.ExpressionFormFields: return "Fields";
        case RadGridStringId.ExpressionFormDescription: return "Description";
        case RadGridStringId.ExpressionFormResultPreview: return "Result preview";
        case RadGridStringId.ExpressionFormTooltipPlus: return "Plus";
        case RadGridStringId.ExpressionFormTooltipMinus: return "Minus";
        case RadGridStringId.ExpressionFormTooltipMultiply: return "Multiply";
        case RadGridStringId.ExpressionFormTooltipDivide: return "Divide";
        case RadGridStringId.ExpressionFormTooltipModulo: return "Modulo";
        case RadGridStringId.ExpressionFormTooltipEqual: return "Equal";
        case RadGridStringId.ExpressionFormTooltipNotEqual: return "Not Equal";
        case RadGridStringId.ExpressionFormTooltipLess: return "Less";
        case RadGridStringId.ExpressionFormTooltipLessOrEqual: return "Less Or Equal";
        case RadGridStringId.ExpressionFormTooltipGreaterOrEqual: return "Greater Or Equal";
        case RadGridStringId.ExpressionFormTooltipGreater: return "Greater";
        case RadGridStringId.ExpressionFormTooltipAnd: return "Logical \"AND\"";
        case RadGridStringId.ExpressionFormTooltipOr: return "Logical \"OR\"";
        case RadGridStringId.ExpressionFormTooltipNot: return "Logical \"NOT\"";
        case RadGridStringId.ExpressionFormAndButton: return string.Empty; //if empty, default button image is used
        case RadGridStringId.ExpressionFormOrButton: return string.Empty; //if empty, default button image is used
        case RadGridStringId.ExpressionFormNotButton: return string.Empty; //if empty, default button image is used
        case RadGridStringId.ExpressionFormOKButton: return "OK";
        case RadGridStringId.ExpressionFormCancelButton: return "Cancel";
        case RadGridStringId.SearchRowChooseColumns: return "SearchRowChooseColumns"; 
        case RadGridStringId.SearchRowSearchFromCurrentPosition: return  "SearchRowSearchFromCurrentPosition";
        case RadGridStringId.SearchRowMenuItemMasterTemplate: return "SearchRowMenuItemMasterTemplate";
        case RadGridStringId.SearchRowMenuItemChildTemplates: return "SearchRowMenuItemChildTemplates";
        case RadGridStringId.SearchRowMenuItemAllColumns:return  "SearchRowMenuItemAllColumns";
        case RadGridStringId.SearchRowTextBoxNullText:return  "SearchRowTextBoxNullText";
        case RadGridStringId.SearchRowResultsOfLabel:return  "SearchRowResultsOfLabel"; 
        case RadGridStringId.SearchRowMatchCase: return "Match case";
    }

    return string.Empty;
}
}

````
````VB.NET
Public Class MyEnglishRadGridLocalizationProvider
    Inherits RadGridLocalizationProvider
 
    Public Overrides Function GetLocalizedString(id As String) As String
        Select Case id
            Case RadGridStringId.ConditionalFormattingPleaseSelectValidCellValue
                Return "Please select valid cell value"
            Case RadGridStringId.ConditionalFormattingPleaseSetValidCellValue
                Return "Please set a valid cell value"
            Case RadGridStringId.ConditionalFormattingPleaseSetValidCellValues
                Return "Please set a valid cell values"
            Case RadGridStringId.ConditionalFormattingPleaseSetValidExpression
                Return "Please set a valid expression"
            Case RadGridStringId.ConditionalFormattingItem
                Return "Item"

            Case RadGridStringId.ConditionalFormattingInvalidParameters
                Return "Invalid parameters"
            Case RadGridStringId.FilterFunctionBetween
                Return "Between"
            Case RadGridStringId.FilterFunctionContains
                Return "Contains"
            Case RadGridStringId.FilterFunctionDoesNotContain
                Return "Does not contain"
            Case RadGridStringId.FilterFunctionEndsWith
                Return "Ends with"
            Case RadGridStringId.FilterFunctionEqualTo
                Return "Equals"
            Case RadGridStringId.FilterFunctionGreaterThan
                Return "Greater than"
            Case RadGridStringId.FilterFunctionGreaterThanOrEqualTo
                Return "Greater than or equal to"
            Case RadGridStringId.FilterFunctionIsEmpty
                Return "Is empty"
            Case RadGridStringId.FilterFunctionIsNull
                Return "Is null"
            Case RadGridStringId.FilterFunctionLessThan
                Return "Less than"
            Case RadGridStringId.FilterFunctionLessThanOrEqualTo
                Return "Less than or equal to"
            Case RadGridStringId.FilterFunctionNoFilter
                Return "No filter"
            Case RadGridStringId.FilterFunctionNotBetween
                Return "Not between"
            Case RadGridStringId.FilterFunctionNotEqualTo
                Return "Not equal to"
            Case RadGridStringId.FilterFunctionNotIsEmpty
                Return "Is not empty"
            Case RadGridStringId.FilterFunctionNotIsNull
                Return "Is not null"
            Case RadGridStringId.FilterFunctionStartsWith
                Return "Starts with"
            Case RadGridStringId.FilterFunctionCustom
                Return "Custom"

            Case RadGridStringId.FilterOperatorBetween
                Return "Between"
            Case RadGridStringId.FilterOperatorContains
                Return "Contains"
            Case RadGridStringId.FilterOperatorDoesNotContain
                Return "NotContains"
            Case RadGridStringId.FilterOperatorEndsWith
                Return "EndsWith"
            Case RadGridStringId.FilterOperatorEqualTo
                Return "Equals"
            Case RadGridStringId.FilterOperatorGreaterThan
                Return "GreaterThan"
            Case RadGridStringId.FilterOperatorGreaterThanOrEqualTo
                Return "GreaterThanOrEquals"
            Case RadGridStringId.FilterOperatorIsEmpty
                Return "IsEmpty"
            Case RadGridStringId.FilterOperatorIsNull
                Return "IsNull"
            Case RadGridStringId.FilterOperatorLessThan
                Return "LessThan"
            Case RadGridStringId.FilterOperatorLessThanOrEqualTo
                Return "LessThanOrEquals"
            Case RadGridStringId.FilterOperatorNoFilter
                Return "No filter"
            Case RadGridStringId.FilterOperatorNotBetween
                Return "NotBetween"
            Case RadGridStringId.FilterOperatorNotEqualTo
                Return "NotEquals"
            Case RadGridStringId.FilterOperatorNotIsEmpty
                Return "NotEmpty"
            Case RadGridStringId.FilterOperatorNotIsNull
                Return "NotNull"
            Case RadGridStringId.FilterOperatorStartsWith
                Return "StartsWith"
            Case RadGridStringId.FilterOperatorIsLike
                Return "Like"
            Case RadGridStringId.FilterOperatorNotIsLike
                Return "NotLike"
            Case RadGridStringId.FilterOperatorIsContainedIn
                Return "ContainedIn"
            Case RadGridStringId.FilterOperatorNotIsContainedIn
                Return "NotContainedIn"
            Case RadGridStringId.FilterOperatorCustom
                Return "Custom"

            Case RadGridStringId.CustomFilterMenuItem
                Return "Custom"
            Case RadGridStringId.CustomFilterDialogCaption
                Return "RadGridView Filter Dialog [{0}]"
            Case RadGridStringId.CustomFilterDialogLabel
                Return "Show rows where:"
            Case RadGridStringId.CustomFilterDialogRbAnd
                Return "And"
            Case RadGridStringId.CustomFilterDialogRbOr
                Return "Or"
            Case RadGridStringId.CustomFilterDialogBtnOk
                Return "OK"
            Case RadGridStringId.CustomFilterDialogBtnCancel
                Return "Cancel"
            Case RadGridStringId.CustomFilterDialogCheckBoxNot
                Return "Not"
            Case RadGridStringId.CustomFilterDialogTrue
                Return "True"
            Case RadGridStringId.CustomFilterDialogFalse
                Return "False"

            Case RadGridStringId.FilterMenuBlanks
                Return "Empty"
            Case RadGridStringId.FilterMenuAvailableFilters
                Return "Available Filters"
            Case RadGridStringId.FilterMenuSearchBoxText
                Return "Search..."
            Case RadGridStringId.FilterMenuClearFilters
                Return "Clear Filter"
            Case RadGridStringId.FilterMenuButtonOK
                Return "OK"
            Case RadGridStringId.FilterMenuButtonCancel
                Return "Cancel"
            Case RadGridStringId.FilterMenuSelectionAll
                Return "All"
            Case RadGridStringId.FilterMenuSelectionAllSearched
                Return "All Search Result"
            Case RadGridStringId.FilterMenuSelectionNull
                Return "Null"
            Case RadGridStringId.FilterMenuSelectionNotNull
                Return "Not Null"

            Case RadGridStringId.FilterFunctionSelectedDates
                Return "Filter by specific dates:"
            Case RadGridStringId.FilterFunctionToday
                Return "Today"
            Case RadGridStringId.FilterFunctionYesterday
                Return "Yesterday"
            Case RadGridStringId.FilterFunctionDuringLast7days
                Return "During last 7 days"

            Case RadGridStringId.FilterLogicalOperatorAnd
                Return "AND"
            Case RadGridStringId.FilterLogicalOperatorOr
                Return "OR"
            Case RadGridStringId.FilterCompositeNotOperator
                Return "NOT"

            Case RadGridStringId.DeleteRowMenuItem
                Return "Delete Row"
            Case RadGridStringId.SortAscendingMenuItem
                Return "Sort Ascending"
            Case RadGridStringId.SortDescendingMenuItem
                Return "Sort Descending"
            Case RadGridStringId.ClearSortingMenuItem
                Return "Clear Sorting"
            Case RadGridStringId.ConditionalFormattingMenuItem
                Return "Conditional Formatting"
            Case RadGridStringId.GroupByThisColumnMenuItem
                Return "Group by this column"
            Case RadGridStringId.UngroupThisColumn
                Return "Ungroup this column"
            Case RadGridStringId.ColumnChooserMenuItem
                Return "Column Chooser"
            Case RadGridStringId.HideMenuItem
                Return "Hide Column"
            Case RadGridStringId.HideGroupMenuItem
                Return "Hide Group"
            Case RadGridStringId.UnpinMenuItem
                Return "Unpin Column"
            Case RadGridStringId.UnpinRowMenuItem
                Return "Unpin Row"
            Case RadGridStringId.PinMenuItem
                Return "Pinned state"
            Case RadGridStringId.PinAtLeftMenuItem
                Return "Pin at left"
            Case RadGridStringId.PinAtRightMenuItem
                Return "Pin at right"
            Case RadGridStringId.PinAtBottomMenuItem
                Return "Pin at bottom"
            Case RadGridStringId.PinAtTopMenuItem
                Return "Pin at top"
            Case RadGridStringId.BestFitMenuItem
                Return "Best Fit"
            Case RadGridStringId.PasteMenuItem
                Return "Paste"
            Case RadGridStringId.EditMenuItem
                Return "Edit"
            Case RadGridStringId.ClearValueMenuItem
                Return "Clear Value"
            Case RadGridStringId.CopyMenuItem
                Return "Copy"
            Case RadGridStringId.CutMenuItem
                Return "Cut"
            Case RadGridStringId.AddNewRowString
                Return "Click here to add a new row"
            Case RadGridStringId.ConditionalFormattingSortAlphabetically
                Return "Sort columns alphabetically"
            Case RadGridStringId.ConditionalFormattingCaption
                Return "Conditional Formatting Rules Manager"
            Case RadGridStringId.ConditionalFormattingLblColumn
                Return "Format only cells with"
            Case RadGridStringId.ConditionalFormattingLblName
                Return "Rule name"
            Case RadGridStringId.ConditionalFormattingLblType
                Return "Cell value"
            Case RadGridStringId.ConditionalFormattingLblValue1
                Return "Value 1"
            Case RadGridStringId.ConditionalFormattingLblValue2
                Return "Value 2"
            Case RadGridStringId.ConditionalFormattingGrpConditions
                Return "Rules"
            Case RadGridStringId.ConditionalFormattingGrpProperties
                Return "Rule Properties"
            Case RadGridStringId.ConditionalFormattingChkApplyToRow
                Return "Apply this formatting to entire row"
            Case RadGridStringId.ConditionalFormattingChkApplyOnSelectedRows
                Return "Apply this formatting if the row is selected"
            Case RadGridStringId.ConditionalFormattingBtnAdd
                Return "Add new rule"
            Case RadGridStringId.ConditionalFormattingBtnRemove
                Return "Remove"
            Case RadGridStringId.ConditionalFormattingBtnOK
                Return "OK"
            Case RadGridStringId.ConditionalFormattingBtnCancel
                Return "Cancel"
            Case RadGridStringId.ConditionalFormattingBtnApply
                Return "Apply"
            Case RadGridStringId.ConditionalFormattingRuleAppliesOn
                Return "Rule applies to"
            Case RadGridStringId.ConditionalFormattingCondition
                Return "Condition"
            Case RadGridStringId.ConditionalFormattingExpression
                Return "Expression"
            Case RadGridStringId.ConditionalFormattingChooseOne
                Return "[Choose one]"
            Case RadGridStringId.ConditionalFormattingEqualsTo
                Return "equals to [Value1]"
            Case RadGridStringId.ConditionalFormattingIsNotEqualTo
                Return "is not equal to [Value1]"
            Case RadGridStringId.ConditionalFormattingStartsWith
                Return "starts with [Value1]"
            Case RadGridStringId.ConditionalFormattingEndsWith
                Return "ends with [Value1]"
            Case RadGridStringId.ConditionalFormattingContains
                Return "contains [Value1]"
            Case RadGridStringId.ConditionalFormattingDoesNotContain
                Return "does not contain [Value1]"
            Case RadGridStringId.ConditionalFormattingIsGreaterThan
                Return "is greater than [Value1]"
            Case RadGridStringId.ConditionalFormattingIsGreaterThanOrEqual
                Return "is greater than or equal [Value1]"
            Case RadGridStringId.ConditionalFormattingIsLessThan
                Return "is less than [Value1]"
            Case RadGridStringId.ConditionalFormattingIsLessThanOrEqual
                Return "is less than or equal to [Value1]"
            Case RadGridStringId.ConditionalFormattingIsBetween
                Return "is between [Value1] and [Value2]"
            Case RadGridStringId.ConditionalFormattingIsNotBetween
                Return "is not between [Value1] and [Value1]"
            Case RadGridStringId.ConditionalFormattingLblFormat
                Return "Format"

            Case RadGridStringId.ConditionalFormattingBtnExpression
                Return "Expression editor"
            Case RadGridStringId.ConditionalFormattingTextBoxExpression
                Return "Expression"

            Case RadGridStringId.ConditionalFormattingPropertyGridCaseSensitive
                Return "CaseSensitive"
            Case RadGridStringId.ConditionalFormattingPropertyGridCellBackColor
                Return "CellBackColor"
            Case RadGridStringId.ConditionalFormattingPropertyGridCellForeColor
                Return "CellForeColor"
            Case RadGridStringId.ConditionalFormattingPropertyGridEnabled
                Return "Enabled"
            Case RadGridStringId.ConditionalFormattingPropertyGridRowBackColor
                Return "RowBackColor"
            Case RadGridStringId.ConditionalFormattingPropertyGridRowForeColor
                Return "RowForeColor"
            Case RadGridStringId.ConditionalFormattingPropertyGridRowTextAlignment
                Return "RowTextAlignment"
            Case RadGridStringId.ConditionalFormattingPropertyGridTextAlignment
                Return "TextAlignment"

            Case RadGridStringId.ConditionalFormattingPropertyGridCaseSensitiveDescription
                Return "Determines whether case-sensitive comparisons will be made when evaluating string values."
            Case RadGridStringId.ConditionalFormattingPropertyGridCellBackColorDescription
                Return "Enter the background color to be used for the cell."
            Case RadGridStringId.ConditionalFormattingPropertyGridCellForeColorDescription
                Return "Enter the foreground color to be used for the cell."
            Case RadGridStringId.ConditionalFormattingPropertyGridEnabledDescription
                Return "Determines whether the condition is enabled (can be evaluated and applied)."
            Case RadGridStringId.ConditionalFormattingPropertyGridRowBackColorDescription
                Return "Enter the background color to be used for the entire row."
            Case RadGridStringId.ConditionalFormattingPropertyGridRowForeColorDescription
                Return "Enter the foreground color to be used for the entire row."
            Case RadGridStringId.ConditionalFormattingPropertyGridRowTextAlignmentDescription
                Return "Enter the alignment to be used for the cell values, when ApplyToRow is true."
            Case RadGridStringId.ConditionalFormattingPropertyGridTextAlignmentDescription
                Return "Enter the alignment to be used for the cell values."

            Case RadGridStringId.ColumnChooserFormCaption
                Return "Column Chooser"
            Case RadGridStringId.ColumnChooserFormMessage
                Return "Drag a column header from the" & vbLf & "grid here to remove it from" & vbLf & "the current view."
            Case RadGridStringId.GroupingPanelDefaultMessage
                Return "Drag a column here to group by this column."
            Case RadGridStringId.GroupingPanelHeader
                Return "Group by:"
            Case RadGridStringId.PagingPanelPagesLabel
                Return "Page"
            Case RadGridStringId.PagingPanelOfPagesLabel
                Return "of"
            Case RadGridStringId.NoDataText
                Return "No data to display"
            Case RadGridStringId.CompositeFilterFormErrorCaption
                Return "Filter Error"
            Case RadGridStringId.CompositeFilterFormInvalidFilter
                Return "The composite filter descriptor is not valid."

            Case RadGridStringId.ExpressionMenuItem
                Return "Expression"
            Case RadGridStringId.ExpressionFormTitle
                Return "Expression Builder"
            Case RadGridStringId.ExpressionFormFunctions
                Return "Functions"
            Case RadGridStringId.ExpressionFormFunctionsText
                Return "Text"
            Case RadGridStringId.ExpressionFormFunctionsAggregate
                Return "Aggregate"
            Case RadGridStringId.ExpressionFormFunctionsDateTime
                Return "Date-Time"
            Case RadGridStringId.ExpressionFormFunctionsLogical
                Return "Logical"
            Case RadGridStringId.ExpressionFormFunctionsMath
                Return "Math"
            Case RadGridStringId.ExpressionFormFunctionsOther
                Return "Other"
            Case RadGridStringId.ExpressionFormOperators
                Return "Operators"
            Case RadGridStringId.ExpressionFormConstants
                Return "Constants"
            Case RadGridStringId.ExpressionFormFields
                Return "Fields"
            Case RadGridStringId.ExpressionFormDescription
                Return "Description"
            Case RadGridStringId.ExpressionFormResultPreview
                Return "Result preview"
            Case RadGridStringId.ExpressionFormTooltipPlus
                Return "Plus"
            Case RadGridStringId.ExpressionFormTooltipMinus
                Return "Minus"
            Case RadGridStringId.ExpressionFormTooltipMultiply
                Return "Multiply"
            Case RadGridStringId.ExpressionFormTooltipDivide
                Return "Divide"
            Case RadGridStringId.ExpressionFormTooltipModulo
                Return "Modulo"
            Case RadGridStringId.ExpressionFormTooltipEqual
                Return "Equal"
            Case RadGridStringId.ExpressionFormTooltipNotEqual
                Return "Not Equal"
            Case RadGridStringId.ExpressionFormTooltipLess
                Return "Less"
            Case RadGridStringId.ExpressionFormTooltipLessOrEqual
                Return "Less Or Equal"
            Case RadGridStringId.ExpressionFormTooltipGreaterOrEqual
                Return "Greater Or Equal"
            Case RadGridStringId.ExpressionFormTooltipGreater
                Return "Greater"
            Case RadGridStringId.ExpressionFormTooltipAnd
                Return "Logical ""AND"""
            Case RadGridStringId.ExpressionFormTooltipOr
                Return "Logical ""OR"""
            Case RadGridStringId.ExpressionFormTooltipNot
                Return "Logical ""NOT"""
            Case RadGridStringId.ExpressionFormAndButton
                Return String.Empty
                'if empty, default button image is used
            Case RadGridStringId.ExpressionFormOrButton
                Return String.Empty
                'if empty, default button image is used
            Case RadGridStringId.ExpressionFormNotButton
                Return String.Empty
                'if empty, default button image is used
            Case RadGridStringId.ExpressionFormOKButton
                Return "OK"
            Case RadGridStringId.ExpressionFormCancelButton
                Return "Cancel"
            Case RadGridStringId.SearchRowChooseColumns
                Return "SearchRowChooseColumns"
            Case RadGridStringId.SearchRowSearchFromCurrentPosition
                Return "SearchRowSearchFromCurrentPosition"
            Case RadGridStringId.SearchRowMenuItemMasterTemplate
                Return "SearchRowMenuItemMasterTemplate"
            Case RadGridStringId.SearchRowMenuItemChildTemplates
                Return "SearchRowMenuItemChildTemplates"
            Case RadGridStringId.SearchRowMenuItemAllColumns
                Return "SearchRowMenuItemAllColumns"
            Case RadGridStringId.SearchRowTextBoxNullText
                Return "SearchRowTextBoxNullText"
            Case RadGridStringId.SearchRowResultsOfLabel
                Return "SearchRowResultsOfLabel"
            Case RadGridStringId.SearchRowMatchCase
                Return "Match case"
        End Select

        Return String.Empty
    End Function

End Class


````

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\GridView\Localization\Localization1.cs region=localizeGrid}} 
{{source=..\SamplesVB\GridView\Localization\Localization1.vb region=localizeGrid}} 

````C#
RadGridLocalizationProvider.CurrentProvider = new MyEnglishRadGridLocalizationProvider();

````
````VB.NET
RadGridLocalizationProvider.CurrentProvider = New MyEnglishRadGridLocalizationProvider()

````

{{endregion}} 

The code provided above illustrates the approach to be used to localize the __RadGridView__ and is not intended as a full translation.
        
# See Also
* [Right-to-left support]({%slug winforms/gridview/localization/right-to-left-support%})


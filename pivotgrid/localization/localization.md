---
title: Localization
page_title: Localization | RadPivotGrid
description: RadPivotGrid can be localized to display any text and messages in a specific language by using a PivotGridLocalizationProvider
slug: winforms/pivotgrid/localization/localization
tags: localization
published: True
position: 0
previous_url: pivotgrid-localization-localization
---

# Localization

To localize __RadPivotGrid__ to display any text and messages in a specific language:

* Create a custom __PivotGridLocalizationProvider__ class.

* Override the GetLocalizedString(string id) method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base  __GetLocalizedString__ method in the default clause of the switch statement in the example.

Below is a sample implementation of an English localization provider:

#### Localizing RadPivotGrid Strings

{{source=..\SamplesCS\PivotGrid\Localization\PivotGridLocalization.cs region=CustomProvider}} 
{{source=..\SamplesVB\PivotGrid\Localization\PivotGridLocalization.vb region=CustomProvider}} 

````C#
class MyEnglishPivotGridLoclizationProvider : PivotGridLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case PivotStringId.GrandTotal: return "GrandTotal";
            case PivotStringId.Values: return "Values";
            case PivotStringId.TotalP0: return "Total {0}";
            case PivotStringId.Product: return "Product";
            case PivotStringId.StdDevP: return "StdDevP";
            case PivotStringId.Min: return "Min";
            case PivotStringId.Count: return "Count";
            case PivotStringId.StdDev: return "StdDev";
            case PivotStringId.Sum: return "Sum";
            case PivotStringId.Average: return "Average";
            case PivotStringId.Var: return "Var";
            case PivotStringId.VarP: return "VarP";
            case PivotStringId.GroupP0AggregateP1: return "{0} {1}";
            case PivotStringId.YearGroupField: return "Year";
            case PivotStringId.MonthGroupField: return "Month";
            case PivotStringId.QuarterGroupField: return "Quarter";
            case PivotStringId.WeekGroupField: return "Week";
            case PivotStringId.DayGroupField: return "Day";
            case PivotStringId.HourGroupField: return "Hour";
            case PivotStringId.MinuteGroupField: return "Minute";
            case PivotStringId.SecondsGroupField: return "Seconds";
            case PivotStringId.P0Total: return "{0} Total";
            case PivotStringId.PivotAggregateP0ofP1: return "{0} of {1}";
            case PivotStringId.ExpandCollapseMenuItem: return "Expand";
            case PivotStringId.CollapseAllMenuItems: return "Collapse All";
            case PivotStringId.ExpandAllMenuItems: return "Expand All";
            case PivotStringId.CopyMenuItem: return "Copy";
            case PivotStringId.HideMenuItem: return "Hide";
            case PivotStringId.SortMenuItem: return "Sort";
            case PivotStringId.BestFitMenuItem: return "Best Fit";
            case PivotStringId.ReloadDataMenuItem: return "Reload Data";
            case PivotStringId.FieldListMenuItem: return "Show Field List";
            case PivotStringId.SortAZMenuItem: return "&Sort A-Z";
            case PivotStringId.SortZAMenuItem: return "S&ort Z-A";
            case PivotStringId.SortOptionsMenuItem: return "&More Sort Options ...";
            case PivotStringId.ClearFilterMenuItem: return "&Clear Filter";
            case PivotStringId.LabelFilterMenuItem: return "&Label Filter";
            case PivotStringId.ValueFilterMenuItem: return "&Value Filter";
            case PivotStringId.AllNode: return "(Select All)";
            case PivotStringId.FilterMenuItemEqual: return "&Equals...";
            case PivotStringId.FilterMenuItemDoesNotEquals: return "Does &Not Equal...";
            case PivotStringId.FilterMenuItemBeginsWith: return "Begins W&ith...";
            case PivotStringId.FilterMenuItemDoesNotBeginWith: return "Does No&t Begin With...";
            case PivotStringId.FIlterMenuItemEndsWith: return "Ends Wi&th...";
            case PivotStringId.FilterMenuItemDoesNotEndsWith: return "Does Not End Wit&h...";
            case PivotStringId.FilterMenuItemContains: return "Cont&ains...";
            case PivotStringId.FilterMenuItemDoesNotContain: return "&Does Not Contain...";
            case PivotStringId.FilterMenuItemGreaterThan: return "&Greater Than...";
            case PivotStringId.FilterMenuItemGreaterThanOrEqualTo: return "Greater Than &Or Equal To...";
            case PivotStringId.FilterMenuItemLessThan: return "&Less Than...";
            case PivotStringId.FilterMenuItemLessThanOrEqualTo: return "Less Than Or E&qual To...";
            case PivotStringId.FilterMenuItemBetween: return "Bet&ween...";
            case PivotStringId.FilterMenuItemNotBetween: return "Not &Between...";
            case PivotStringId.TopTenItem: return "&Top 10...";
            case PivotStringId.AllNodeSelectAllSearchResult: return "(Select All Search Result)";
            case PivotStringId.FilterMenuAvailableFilters: return "&Available Filters";
            case PivotStringId.CheckBoxMenuItem: return "Select Multiple Items";
            case PivotStringId.CalculationOptionsDialogNoCalculation: return "No Calculations";
            case PivotStringId.CalculationOptionsDialogPrevious: return "(previous)";
            case PivotStringId.CalculationOptionsDialogNext: return "(next)";
            case PivotStringId.CalculationOptionsDialogGrandTotal: return "% of Grand Total";
            case PivotStringId.CalculationOptionsDialogColumnTotal: return "% of Column Total";
            case PivotStringId.CalculationOptionsDialogRowTotal: return "% of Row Total";
            case PivotStringId.CalculationOptionsDialogOf: return "% Of";
            case PivotStringId.CalculationOptionsDialogDifferenceFrom: return "Difference From";
            case PivotStringId.CalculationOptionsDialogPercentDifferenceFrom: return "% Difference From";
            case PivotStringId.CalculationOptionsDialogRunningTotalIn: return "Running Total In";
            case PivotStringId.CalculationOptionsDialogPercentRunningTotalIn: return "% Running Total In";
            case PivotStringId.CalculationOptionsDialogRankSmallestToLargest: return "Rank Smallest to Largest";
            case PivotStringId.CalculationOptionsDialogRankLargestToSmallest: return "Rank Largest to Smallest";
            case PivotStringId.CalculationOptionsDialogIndex: return "Index";
            case PivotStringId.CalculationOptionsDialogShowValueAs: return "Show value as ({0})";
            case PivotStringId.LabelFilterOptionsDialogEquals: return "equals";
            case PivotStringId.LabelFilterOptionsDialogDoesNotEqual: return "does not equal";
            case PivotStringId.LabelFilterOptionsDialogIsGreaterThen: return "is greater than";
            case PivotStringId.LabelFilterOptionsDialogIsGreaterThanOrEqualTo: return "is greater than or equal to";
            case PivotStringId.LabelFilterOptionsDialogIsLessThan: return "is less than";
            case PivotStringId.LabelFilterOptionsDialogIsLessThanOrEqualTo: return "is less than or equal to";
            case PivotStringId.LabelFilterOptionsDialogBeginsWith: return "begins with";
            case PivotStringId.LabelFilterOptionsDialogDoesNotBeginWith: return "does not begin with";
            case PivotStringId.LabelFilterOptionsDialogEndsWith: return "ends with";
            case PivotStringId.LabelFilterOptionsDialogDoesNotEndsWith: return "does not end with";
            case PivotStringId.LabelFilterOptionsDialogContains: return "contains";
            case PivotStringId.LabelFilterOptionsDialogDoesNotContain: return "does not contain";
            case PivotStringId.LabelFilterOptionsDialogIsBetween: return "is between";
            case PivotStringId.LabelFilterOptionsDialogIsNotBetween: return "is not between";
            case PivotStringId.LabelFilterOptionsDialogLabelFilter: return "Label Filter ({0})";
            case PivotStringId.NumberFormatOptionsDialogCustomFormat: return "Custom format";
            case PivotStringId.NumberFormatOptionsDialogFixedPoint: return "Fixed-point with 2 decimal digits";
            case PivotStringId.NumberFormatOptionsDialogPrefixedCurrency: return "$ prefixed currency with 2 decimal digits";
            case PivotStringId.NumberFormatOptionsDialogPostfixedCurrency: return "€ postfixed currency with 2 decimal digits";
            case PivotStringId.NumberFormatOptionsDialogPostfixedTemperatureC: return "°C postfixed temperature with 2 decimal digits";
            case PivotStringId.NumberFormatOptionsDialogPostfixedTemperatureF: return "°F postfixed temperature with 2 decimal digits";
            case PivotStringId.NumberFormatOptionsDialogExponential: return "Exponential (scientific)";
            case PivotStringId.NumberFormatOptionsDialogFormatOptions: return "Format Options";
            case PivotStringId.NumberFormatOptionsDialogFormatOptionsDescription: return "Format Options ({0})";
            case PivotStringId.SortOptionsDialogSortOptions: return "Sort Options ({0})";
            case PivotStringId.Top10FilterOptionsDialogTop: return "Top";
            case PivotStringId.Top10FilterOptionsDialogBottom: return "Bottom";
            case PivotStringId.Top10FilterOptionsDialogItems: return "Items";
            case PivotStringId.Top10FilterOptionsDialogPercent: return "Percent";
            case PivotStringId.Top10FilterOptionsDialogTop10: return "Top10 Filter ({0})";
            case PivotStringId.ValueFilter: return "Value Filter ({0})";
            case PivotStringId.AggregateOptionsDialogGroupBoxText: return "Summarize Values By";
            case PivotStringId.AggregateOptionsDialogLabelCustomName: return "Custom Name:";
            case PivotStringId.AggregateOptionsDialogLabelDescription: return "Choose the type of calculation that you want to use to summarize data from the selected field.";
            case PivotStringId.AggregateOptionsDialogLabelField: return "FieLabelld Name";
            case PivotStringId.AggregateOptionsDialogLabelSourceName: return "Source Name:";
            case PivotStringId.AggregateOptionsDialogText: return "AggregateOptionsDialog";
            case PivotStringId.AggregateOptionsAggregateOptionsText: return "Aggregate Options";
            case PivotStringId.DialogButtonCancel: return "Cancel";
            case PivotStringId.DialogButtonOK: return "OK";
            case PivotStringId.CalculationOptionsDialogText: return "CalculationOptionsDialog";
            case PivotStringId.CalculationOptionsDialogLabelBaseItem: return "Base Item:";
            case PivotStringId.CalculationOptionsDialogLabelBaseField: return "Base Field:";
            case PivotStringId.CalculationOptionsDialogGroupBoxText: return "Show Value As";
            case PivotStringId.LabelFilterOptionsDialogGroupBoxText: return "Show items for which the label";
            case PivotStringId.LabelFilterOptionsDialogText: return "LabelFilterOptionsDialog";
            case PivotStringId.LabelFilterOptionsDialogLabelAnd: return "and";
            case PivotStringId.NumberFormatOptionsDialogFormat: return "Format";
            case PivotStringId.NumberFormatOptionsDialogLabelDescription:
                return "The format should identify the measurement type of the value. ($, ¥, €, kg., lb.," +
 The format would be used for general computations such as Sum, Average, Min" +
ax and others.";
            case PivotStringId.NumberFormatOptionsDialogText: return "NumberFormatOptionsDialog";
            case PivotStringId.NumberFormatOptionsDialogGroupBoxText: return "General Format";
            case PivotStringId.SortOptionsDialogAscending: return "Sort Ascending (A-Z) by:";
            case PivotStringId.SortOptionsDialogDescending: return "Sort Descending (Z-A) by:";
            case PivotStringId.SortOptionsDialogGroupBoxText: return "Sort options";
            case PivotStringId.SortOptionsDialogText: return "SortOptionsDialog";
            case PivotStringId.Top10FilterOptionsDialogGroupBoxText: return "Show";
            case PivotStringId.Top10FilterOptionsDialogLabelBy: return "by";
            case PivotStringId.Top10FilterOptionsDialogText: return "Top10FilterOptionsDialog";
            case PivotStringId.ValueFilterOptionsDialogGroupBox: return "Show items for which";
            case PivotStringId.ValueFilterOptionsDialogText: return "ValueFilterOptionsDialog";
            case PivotStringId.DragDataItemsHere: return "Drag data items here";
            case PivotStringId.DragColumnItemsHere: return "Drag column items here";
            case PivotStringId.DragItemsHere: return "Drag items here";
            case PivotStringId.DragFilterItemsHere: return "Drag filter items here";
            case PivotStringId.DragRowItemsHere: return "Drag row items here";
            case PivotStringId.ResultItemFormat: return "Key: {0}; Aggregates: {1}";
            case PivotStringId.Error: return "Error";
            case PivotStringId.KpiSchemaElementValidatorError: return "Should have at least one KPI member defined (Goal, Status, Trend, Value)";
            case PivotStringId.SchemaElementValidatorMissingPropertyFormat: return "Required property is missing: {0}";
            case PivotStringId.AdomdCellInfoToStringFormat: return "Ordinal: {0} | Value: {1}";
            case PivotStringId.Aggregates: return "Aggregates";
            case PivotStringId.FilterMenuTextBoxItemNullText: return "Search...";
            case PivotStringId.FieldChooserFormButtonAdd: return "Add to";
            case PivotStringId.FieldChooserFormFields: return "Fields:";
            case PivotStringId.FieldChooserFormText: return "Field Chooser";
            case PivotStringId.FieldChooserFormColumnArea: return "Column Area";
            case PivotStringId.FieldChooserFormDataArea: return "Data Area";
            case PivotStringId.FieldChooserFormFilterArea: return "Filter Area";
            case PivotStringId.FieldChooserFormRowArea: return "Row Area";
            case PivotStringId.FieldListlabelChooseFields: return "Choose fields:";
            case PivotStringId.FieldListButtonUpdate: return "Update";
            case PivotStringId.FieldListCheckBoxDeferUpdate: return "Defer Layout Update";
            case PivotStringId.FieldListLabelDrag: return "Drag fields between areas below:";
            case PivotStringId.FieldListLabelRowLabels: return "Row Labels";
            case PivotStringId.FieldListLabelColumnLabels: return "Column Labels";
            case PivotStringId.FieldListLabelReportFilter: return "Report Filter";
            case PivotStringId.None: return "None";
            case PivotStringId.PrintSettingsFitWidth: return "Fit width";
            case PivotStringId.PrintSettingsFitHeight: return "Fit height";
            case PivotStringId.PrintSettingsCompact: return "Compact";
            case PivotStringId.PrintSettingsTabular: return "Tabular";
            case PivotStringId.PrintSettingsFitAll: return "Fit all";
            case PivotStringId.PrintSettingsPrintOrder: return "Print order";
            case PivotStringId.PrintSettingsThenOver: return "Down, then over";
            case PivotStringId.PrintSettingsThenDown: return "Over, then down";
            case PivotStringId.PrintSettingsFontsAndColors: return "Fonts and colors";
            case PivotStringId.PrintSettingsBackground: return "Background";
            case PivotStringId.PrintSettingsNone: return "(none)";
            case PivotStringId.PrintSettingsFont: return "Font";
            case PivotStringId.PrintSettingsGrantTotal: return "GrandTotal cells:";
            case PivotStringId.PrintSettingsDescriptors: return "Aggregate/group descriptors:";
            case PivotStringId.PrintSettingsSubTotal: return "SubTotal cells:";
            case PivotStringId.PrintSettingsHeaderCells: return "Column/row header cells:";
            case PivotStringId.PrintSettingsDataCells: return "Data cells:";
            case PivotStringId.PrintSettingsGridLinesColor: return "Grid lines color:";
            case PivotStringId.PrintSettingsSettings: return "Settings";
            case PivotStringId.PrintSettingsLayuotType: return "Layout Type:";
            case PivotStringId.PrintSettingsScaleMode: return "Scale mode:";
            case PivotStringId.PrintSettingsPrintSelectionOnly: return "Print selection only";
            case PivotStringId.PrintSettingsShowGridLines: return "Show grid lines";
            case PivotStringId.CollapseMenuItem: return "Collapse";
            case PivotStringId.CalcualtedFields: return "Calculated Fields";
            case PivotStringId.Max: return "Max";
            case PivotStringId.NullValue: return "(blank)";
            case PivotStringId.PivotMoreFields: return "More fields";
            case PivotStringId.CellScreenTipValue: return "Value";
            case PivotStringId.CellScreenTipRow: return "Row";
            case PivotStringId.CellScreenTipColumn: return "Column";
            case PivotStringId.SortOptionsContextFromAtoZMenuText: return "Sort from A to Z";
            case PivotStringId.SortOptionsContextFromZtoAMenuText: return "Sort from Z to A";
            case PivotStringId.SortOptionsContextMoreSortingOptionsMenuText: return "More Sorting Options ...";
            case PivotStringId.ContextTop10FilterOptionsMenuText: return "Top10 Filter";
            case PivotStringId.ContextNumberFormatrOptionsMenuText: return "Number Format...";
            case PivotStringId.ContextClearCalculationsrOptionsMenuText: return "Clear Calculations";
            case PivotStringId.ContextMoreCalculationOptionsOptionsMenuText: return "More Calculation Options...";
            case PivotStringId.ContextPercentOfGrandTotalOptionsOptionsMenuText: return "% of GrandTotal";
            case PivotStringId.ContextMoreAggregatOptionsOptionsMenuText: return "More Aggregate Options...";
            case PivotStringId.ContextGroupByYearOptionsMenuText: return "Group by Year";
            case PivotStringId.ContextGroupByQuaterOptionsMenuText: return "Group by Quater";
            case PivotStringId.ContextGroupByMonthOptionsMenuText: return "Group by Month";
            case PivotStringId.ContextGroupByDayhOptionsMenuText: return "Group by Day";
            case PivotStringId.ContextStepText: return "Step";
            case PivotStringId.FieldListDateText: return "Date";
        }
        return base.GetLocalizedString(id);
    }
}
}

````
````VB.NET
Class MyEnglishPivotGridLoclizationProvider
    Inherits PivotGridLocalizationProvider
    Public Overrides Function GetLocalizedString(id As String) As String
        Select Case id
            Case PivotStringId.GrandTotal
                Return "GrandTotal"
            Case PivotStringId.Values
                Return "Values"
            Case PivotStringId.TotalP0
                Return "Total {0}"
            Case PivotStringId.Product
                Return "Product"
            Case PivotStringId.StdDevP
                Return "StdDevP"
            Case PivotStringId.Min
                Return "Min"
            Case PivotStringId.Count
                Return "Count"
            Case PivotStringId.StdDev
                Return "StdDev"
            Case PivotStringId.Sum
                Return "Sum"
            Case PivotStringId.Average
                Return "Average"
            Case PivotStringId.Var
                Return "Var"
            Case PivotStringId.VarP
                Return "VarP"
            Case PivotStringId.GroupP0AggregateP1
                Return "{0} {1}"
            Case PivotStringId.YearGroupField
                Return "Year"
            Case PivotStringId.MonthGroupField
                Return "Month"
            Case PivotStringId.QuarterGroupField
                Return "Quarter"
            Case PivotStringId.WeekGroupField
                Return "Week"
            Case PivotStringId.DayGroupField
                Return "Day"
            Case PivotStringId.HourGroupField
                Return "Hour"
            Case PivotStringId.MinuteGroupField
                Return "Minute"
            Case PivotStringId.SecondsGroupField
                Return "Seconds"
            Case PivotStringId.P0Total
                Return "{0} Total"
            Case PivotStringId.PivotAggregateP0ofP1
                Return "{0} of {1}"
            Case PivotStringId.ExpandCollapseMenuItem
                Return "Expand"
            Case PivotStringId.CollapseAllMenuItems
                Return "Collapse All"
            Case PivotStringId.ExpandAllMenuItems
                Return "Expand All"
            Case PivotStringId.CopyMenuItem
                Return "Copy"
            Case PivotStringId.HideMenuItem
                Return "Hide"
            Case PivotStringId.SortMenuItem
                Return "Sort"
            Case PivotStringId.BestFitMenuItem
                Return "Best Fit"
            Case PivotStringId.ReloadDataMenuItem
                Return "Reload Data"
            Case PivotStringId.FieldListMenuItem
                Return "Show Field List"
            Case PivotStringId.SortAZMenuItem
                Return "&Sort A-Z"
            Case PivotStringId.SortZAMenuItem
                Return "S&ort Z-A"
            Case PivotStringId.SortOptionsMenuItem
                Return "&More Sort Options ..."
            Case PivotStringId.ClearFilterMenuItem
                Return "&Clear Filter"
            Case PivotStringId.LabelFilterMenuItem
                Return "&Label Filter"
            Case PivotStringId.ValueFilterMenuItem
                Return "&Value Filter"
            Case PivotStringId.AllNode
                Return "(Select All)"
            Case PivotStringId.FilterMenuItemEqual
                Return "&Equals..."
            Case PivotStringId.FilterMenuItemDoesNotEquals
                Return "Does &Not Equal..."
            Case PivotStringId.FilterMenuItemBeginsWith
                Return "Begins W&ith..."
            Case PivotStringId.FilterMenuItemDoesNotBeginWith
                Return "Does No&t Begin With..."
            Case PivotStringId.FIlterMenuItemEndsWith
                Return "Ends Wi&th..."
            Case PivotStringId.FilterMenuItemDoesNotEndsWith
                Return "Does Not End Wit&h..."
            Case PivotStringId.FilterMenuItemContains
                Return "Cont&ains..."
            Case PivotStringId.FilterMenuItemDoesNotContain
                Return "&Does Not Contain..."
            Case PivotStringId.FilterMenuItemGreaterThan
                Return "&Greater Than..."
            Case PivotStringId.FilterMenuItemGreaterThanOrEqualTo
                Return "Greater Than &Or Equal To..."
            Case PivotStringId.FilterMenuItemLessThan
                Return "&Less Than..."
            Case PivotStringId.FilterMenuItemLessThanOrEqualTo
                Return "Less Than Or E&qual To..."
            Case PivotStringId.FilterMenuItemBetween
                Return "Bet&ween..."
            Case PivotStringId.FilterMenuItemNotBetween
                Return "Not &Between..."
            Case PivotStringId.TopTenItem
                Return "&Top 10..."
            Case PivotStringId.AllNodeSelectAllSearchResult
                Return "(Select All Search Result)"
            Case PivotStringId.FilterMenuAvailableFilters
                Return "&Available Filters"
            Case PivotStringId.CheckBoxMenuItem
                Return "Select Multiple Items"
            Case PivotStringId.CalculationOptionsDialogNoCalculation
                Return "No Calculations"
            Case PivotStringId.CalculationOptionsDialogPrevious
                Return "(previous)"
            Case PivotStringId.CalculationOptionsDialogNext
                Return "(next)"
            Case PivotStringId.CalculationOptionsDialogGrandTotal
                Return "% of Grand Total"
            Case PivotStringId.CalculationOptionsDialogColumnTotal
                Return "% of Column Total"
            Case PivotStringId.CalculationOptionsDialogRowTotal
                Return "% of Row Total"
            Case PivotStringId.CalculationOptionsDialogOf
                Return "% Of"
            Case PivotStringId.CalculationOptionsDialogDifferenceFrom
                Return "Difference From"
            Case PivotStringId.CalculationOptionsDialogPercentDifferenceFrom
                Return "% Difference From"
            Case PivotStringId.CalculationOptionsDialogRunningTotalIn
                Return "Running Total In"
            Case PivotStringId.CalculationOptionsDialogPercentRunningTotalIn
                Return "% Running Total In"
            Case PivotStringId.CalculationOptionsDialogRankSmallestToLargest
                Return "Rank Smallest to Largest"
            Case PivotStringId.CalculationOptionsDialogRankLargestToSmallest
                Return "Rank Largest to Smallest"
            Case PivotStringId.CalculationOptionsDialogIndex
                Return "Index"
            Case PivotStringId.CalculationOptionsDialogShowValueAs
                Return "Show value as ({0})"
            Case PivotStringId.LabelFilterOptionsDialogEquals
                Return "equals"
            Case PivotStringId.LabelFilterOptionsDialogDoesNotEqual
                Return "does not equal"
            Case PivotStringId.LabelFilterOptionsDialogIsGreaterThen
                Return "is greater than"
            Case PivotStringId.LabelFilterOptionsDialogIsGreaterThanOrEqualTo
                Return "is greater than or equal to"
            Case PivotStringId.LabelFilterOptionsDialogIsLessThan
                Return "is less than"
            Case PivotStringId.LabelFilterOptionsDialogIsLessThanOrEqualTo
                Return "is less than or equal to"
            Case PivotStringId.LabelFilterOptionsDialogBeginsWith
                Return "begins with"
            Case PivotStringId.LabelFilterOptionsDialogDoesNotBeginWith
                Return "does not begin with"
            Case PivotStringId.LabelFilterOptionsDialogEndsWith
                Return "ends with"
            Case PivotStringId.LabelFilterOptionsDialogDoesNotEndsWith
                Return "does not end with"
            Case PivotStringId.LabelFilterOptionsDialogContains
                Return "contains"
            Case PivotStringId.LabelFilterOptionsDialogDoesNotContain
                Return "does not contain"
            Case PivotStringId.LabelFilterOptionsDialogIsBetween
                Return "is between"
            Case PivotStringId.LabelFilterOptionsDialogIsNotBetween
                Return "is not between"
            Case PivotStringId.LabelFilterOptionsDialogLabelFilter
                Return "Label Filter ({0})"
            Case PivotStringId.NumberFormatOptionsDialogCustomFormat
                Return "Custom format"
            Case PivotStringId.NumberFormatOptionsDialogFixedPoint
                Return "Fixed-point with 2 decimal digits"
            Case PivotStringId.NumberFormatOptionsDialogPrefixedCurrency
                Return "$ prefixed currency with 2 decimal digits"
            Case PivotStringId.NumberFormatOptionsDialogPostfixedCurrency
                Return "€ postfixed currency with 2 decimal digits"
            Case PivotStringId.NumberFormatOptionsDialogPostfixedTemperatureC
                Return "°C postfixed temperature with 2 decimal digits"
            Case PivotStringId.NumberFormatOptionsDialogPostfixedTemperatureF
                Return "°F postfixed temperature with 2 decimal digits"
            Case PivotStringId.NumberFormatOptionsDialogExponential
                Return "Exponential (scientific)"
            Case PivotStringId.NumberFormatOptionsDialogFormatOptions
                Return "Format Options"
            Case PivotStringId.NumberFormatOptionsDialogFormatOptionsDescription
                Return "Format Options ({0})"
            Case PivotStringId.SortOptionsDialogSortOptions
                Return "Sort Options ({0})"
            Case PivotStringId.Top10FilterOptionsDialogTop
                Return "Top"
            Case PivotStringId.Top10FilterOptionsDialogBottom
                Return "Bottom"
            Case PivotStringId.Top10FilterOptionsDialogItems
                Return "Items"
            Case PivotStringId.Top10FilterOptionsDialogPercent
                Return "Percent"
            Case PivotStringId.Top10FilterOptionsDialogTop10
                Return "Top10 Filter ({0})"
            Case PivotStringId.ValueFilter
                Return "Value Filter ({0})"
            Case PivotStringId.AggregateOptionsDialogGroupBoxText
                Return "Summarize Values By"
            Case PivotStringId.AggregateOptionsDialogLabelCustomName
                Return "Custom Name:"
            Case PivotStringId.AggregateOptionsDialogLabelDescription
                Return "Choose the type of calculation that you want to use to summarize data from the selected field."
            Case PivotStringId.AggregateOptionsDialogLabelField
                Return "FieLabelld Name"
            Case PivotStringId.AggregateOptionsDialogLabelSourceName
                Return "Source Name:"
            Case PivotStringId.AggregateOptionsDialogText
                Return "AggregateOptionsDialog"
            Case PivotStringId.AggregateOptionsAggregateOptionsText
                Return "Aggregate Options"
            Case PivotStringId.DialogButtonCancel
                Return "Cancel"
            Case PivotStringId.DialogButtonOK
                Return "OK"
            Case PivotStringId.CalculationOptionsDialogText
                Return "CalculationOptionsDialog"
            Case PivotStringId.CalculationOptionsDialogLabelBaseItem
                Return "Base Item:"
            Case PivotStringId.CalculationOptionsDialogLabelBaseField
                Return "Base Field:"
            Case PivotStringId.CalculationOptionsDialogGroupBoxText
                Return "Show Value As"
            Case PivotStringId.LabelFilterOptionsDialogGroupBoxText
                Return "Show items for which the label"
            Case PivotStringId.LabelFilterOptionsDialogText
                Return "LabelFilterOptionsDialog"
            Case PivotStringId.LabelFilterOptionsDialogLabelAnd
                Return "and"
            Case PivotStringId.NumberFormatOptionsDialogFormat
                Return "Format"
            Case PivotStringId.NumberFormatOptionsDialogLabelDescription
                Return "The format should identify the measurement type of the value. ($, ¥, €, kg., lb.," + "m.) The format would be used for general computations such as Sum, Average, Min" + ", Max and others."
            Case PivotStringId.NumberFormatOptionsDialogText
                Return "NumberFormatOptionsDialog"
            Case PivotStringId.NumberFormatOptionsDialogGroupBoxText
                Return "General Format"
            Case PivotStringId.SortOptionsDialogAscending
                Return "Sort Ascending (A-Z) by:"
            Case PivotStringId.SortOptionsDialogDescending
                Return "Sort Descending (Z-A) by:"
            Case PivotStringId.SortOptionsDialogGroupBoxText
                Return "Sort options"
            Case PivotStringId.SortOptionsDialogText
                Return "SortOptionsDialog"
            Case PivotStringId.Top10FilterOptionsDialogGroupBoxText
                Return "Show"
            Case PivotStringId.Top10FilterOptionsDialogLabelBy
                Return "by"
            Case PivotStringId.Top10FilterOptionsDialogText
                Return "Top10FilterOptionsDialog"
            Case PivotStringId.ValueFilterOptionsDialogGroupBox
                Return "Show items for which"
            Case PivotStringId.ValueFilterOptionsDialogText
                Return "ValueFilterOptionsDialog"
            Case PivotStringId.DragDataItemsHere
                Return "Drag data items here"
            Case PivotStringId.DragColumnItemsHere
                Return "Drag column items here"
            Case PivotStringId.DragItemsHere
                Return "Drag items here"
            Case PivotStringId.DragFilterItemsHere
                Return "Drag filter items here"
            Case PivotStringId.DragRowItemsHere
                Return "Drag row items here"
            Case PivotStringId.ResultItemFormat
                Return "Key: {0}; Aggregates: {1}"
            Case PivotStringId.[Error]
                Return "Error"
            Case PivotStringId.KpiSchemaElementValidatorError
                Return "Should have at least one KPI member defined (Goal, Status, Trend, Value)"
            Case PivotStringId.SchemaElementValidatorMissingPropertyFormat
                Return "Required property is missing: {0}"
            Case PivotStringId.AdomdCellInfoToStringFormat
                Return "Ordinal: {0} | Value: {1}"
            Case PivotStringId.Aggregates
                Return "Aggregates"
            Case PivotStringId.FilterMenuTextBoxItemNullText
                Return "Search..."
            Case PivotStringId.FieldChooserFormButtonAdd
                Return "Add to"
            Case PivotStringId.FieldChooserFormFields
                Return "Fields:"
            Case PivotStringId.FieldChooserFormText
                Return "Field Chooser"
            Case PivotStringId.FieldChooserFormColumnArea
                Return "Column Area"
            Case PivotStringId.FieldChooserFormDataArea
                Return "Data Area"
            Case PivotStringId.FieldChooserFormFilterArea
                Return "Filter Area"
            Case PivotStringId.FieldChooserFormRowArea
                Return "Row Area"
            Case PivotStringId.FieldListlabelChooseFields
                Return "Choose fields:"
            Case PivotStringId.FieldListButtonUpdate
                Return "Update"
            Case PivotStringId.FieldListCheckBoxDeferUpdate
                Return "Defer Layout Update"
            Case PivotStringId.FieldListLabelDrag
                Return "Drag fields between areas below:"
            Case PivotStringId.FieldListLabelRowLabels
                Return "Row Labels"
            Case PivotStringId.FieldListLabelColumnLabels
                Return "Column Labels"
            Case PivotStringId.FieldListLabelReportFilter
                Return "Report Filter"
            Case PivotStringId.None
                Return "None"
            Case PivotStringId.PrintSettingsFitWidth
                Return "Fit width"
            Case PivotStringId.PrintSettingsFitHeight
                Return "Fit height"
            Case PivotStringId.PrintSettingsCompact
                Return "Compact"
            Case PivotStringId.PrintSettingsTabular
                Return "Tabular"
            Case PivotStringId.PrintSettingsFitAll
                Return "Fit all"
            Case PivotStringId.PrintSettingsPrintOrder
                Return "Print order"
            Case PivotStringId.PrintSettingsThenOver
                Return "Down, then over"
            Case PivotStringId.PrintSettingsThenDown
                Return "Over, then down"
            Case PivotStringId.PrintSettingsFontsAndColors
                Return "Fonts and colors"
            Case PivotStringId.PrintSettingsBackground
                Return "Background"
            Case PivotStringId.PrintSettingsNone
                Return "(none)"
            Case PivotStringId.PrintSettingsFont
                Return "Font"
            Case PivotStringId.PrintSettingsGrantTotal
                Return "GrandTotal cells:"
            Case PivotStringId.PrintSettingsDescriptors
                Return "Aggregate/group descriptors:"
            Case PivotStringId.PrintSettingsSubTotal
                Return "SubTotal cells:"
            Case PivotStringId.PrintSettingsHeaderCells
                Return "Column/row header cells:"
            Case PivotStringId.PrintSettingsDataCells
                Return "Data cells:"
            Case PivotStringId.PrintSettingsGridLinesColor
                Return "Grid lines color:"
            Case PivotStringId.PrintSettingsSettings
                Return "Settings"
            Case PivotStringId.PrintSettingsLayuotType
                Return "Layout Type:"
            Case PivotStringId.PrintSettingsScaleMode
                Return "Scale mode:"
            Case PivotStringId.PrintSettingsPrintSelectionOnly
                Return "Print selection only"
            Case PivotStringId.PrintSettingsShowGridLines
                Return "Show grid lines"
            Case PivotStringId.CollapseMenuItem
                Return "Collapse"
            Case PivotStringId.CalcualtedFields
                Return "Calculated Fields"
            Case PivotStringId.Max
                Return "Max"
            Case PivotStringId.NullValue
                Return "(blank)"
            Case PivotStringId.PivotMoreFields
                Return "More fields"
            Case PivotStringId.CellScreenTipValue
                Return "Value"
            Case PivotStringId.CellScreenTipRow
                Return "Row"
            Case PivotStringId.CellScreenTipColumn
                Return "Column"
            Case PivotStringId.SortOptionsContextFromAtoZMenuText
                Return "Sort from A to Z"
            Case PivotStringId.SortOptionsContextFromZtoAMenuText
                Return "Sort from Z to A"
            Case PivotStringId.SortOptionsContextMoreSortingOptionsMenuText
                Return "More Sorting Options ..."
            Case PivotStringId.ContextTop10FilterOptionsMenuText
                Return "Top10 Filter"
            Case PivotStringId.ContextNumberFormatrOptionsMenuText
                Return "Number Format..."
            Case PivotStringId.ContextClearCalculationsrOptionsMenuText
                Return "Clear Calculations"
            Case PivotStringId.ContextMoreCalculationOptionsOptionsMenuText
                Return "More Calculation Options..."
            Case PivotStringId.ContextPercentOfGrandTotalOptionsOptionsMenuText
                Return "% of GrandTotal"
            Case PivotStringId.ContextMoreAggregatOptionsOptionsMenuText
                Return "More Aggregate Options..."
            Case PivotStringId.ContextGroupByYearOptionsMenuText
                Return "Group by Year"
            Case PivotStringId.ContextGroupByQuaterOptionsMenuText
                Return "Group by Quater"
            Case PivotStringId.ContextGroupByMonthOptionsMenuText
                Return "Group by Month"
            Case PivotStringId.ContextGroupByDayhOptionsMenuText
                Return "Group by Day"
            Case PivotStringId.ContextStepText
                Return "Step"
            Case PivotStringId.FieldListDateText
                Return "Date"
        End Select
        Return MyBase.GetLocalizedString(id)
    End Function
End Class

````

{{endregion}}

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

>tip **RadPivotGrid**`s localization provider needs to be loaded in the constructor of the form prior to calling the __InitializeComponent__ method.
>

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\PivotGrid\Localization\PivotGridLocalization.cs region=LocalizePivot}} 
{{source=..\SamplesVB\PivotGrid\Localization\PivotGridLocalization.vb region=LocalizePivot}} 

````C#
public PivotGridLocalization()
{
    PivotGridLocalizationProvider.CurrentProvider = new MyEnglishPivotGridLoclizationProvider();
    InitializeComponent();
}

````
````VB.NET
Public Sub New()
    PivotGridLocalizationProvider.CurrentProvider = New MyEnglishPivotGridLoclizationProvider()
    InitializeComponent()
End Sub

````

{{endregion}}

The code provided above illustrates the approach to be used to localize the __RadPivotGrid__ and is not intended as a full translation.
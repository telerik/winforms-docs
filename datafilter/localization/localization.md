---
title: Localization
page_title: Localization | RadDataFilter
description: RadDataFilter allows you to build complex filter expressions based on the data and collection type of the source fields. 
slug: winforms/datafilter/localization
tags: data, filter, localization
published: True
position: 0
---

# Localization

To localize **RadDataFilter** to display control text and messages in a specific language:

*  All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

*  Start by creating a descendant of the **DataFilterLocalizationProvider** class.

*  Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

#### Localizing RadDataFilter Strings

{{source=..\SamplesCS\DataFilter\DataFilterLocalization.cs  region=MyLocalizationProvider}}
{{source=..\SamplesVB\DataFilter\DataFilterLocalization.vb  region=MyLocalizationProvider}}
````C#
    
public class EnglishDataFilterLocalizationProvider : Telerik.WinControls.UI.DataFilterLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case DataFilterStringId.LogicalOperatorAnd:
                return "All";
            case DataFilterStringId.LogicalOperatorOr:
                return "Any";
            case DataFilterStringId.LogicalOperatorDescription:
                return " of the following are true";
            
            case DataFilterStringId.FieldNullText:
                return "Choose field";
            case DataFilterStringId.ValueNullText:
                return "Enter a value";
            
            case DataFilterStringId.AddNewButtonText:
                return "Add";
            case DataFilterStringId.AddNewButtonExpression:
                return "Expression";
            case DataFilterStringId.AddNewButtonGroup:
                return "Group";
            
            case DataFilterStringId.DialogTitle:
                return "Data Filter";
            case DataFilterStringId.DialogOKButton:
                return "OK";
            case DataFilterStringId.DialogCancelButton:
                return "Cancel";
            case DataFilterStringId.DialogApplyButton:
                return "Apply";
            
            case DataFilterStringId.ErrorAddNodeDialogTitle:
                return "RadDataFilter Error";
            case DataFilterStringId.ErrorAddNodeDialogText:
                return "Cannot add entries to the control - missing property descriptors. \nDataSource is not set and/or DataFilterDescriptorItems are not added to the Descriptors collection of the control.";
            
            case DataFilterStringId.FilterFunctionBetween:
                return "Between";
            case DataFilterStringId.FilterFunctionContains:
                return "Contains";
            case DataFilterStringId.FilterFunctionDoesNotContain:
                return "Does not contain";
            case DataFilterStringId.FilterFunctionEndsWith:
                return "Ends with";
            case DataFilterStringId.FilterFunctionEqualTo:
                return "Equals";
            case DataFilterStringId.FilterFunctionGreaterThan:
                return "Greater than";
            case DataFilterStringId.FilterFunctionGreaterThanOrEqualTo:
                return "Greater than or equal to";
            case DataFilterStringId.FilterFunctionIsEmpty:
                return "Is empty";
            case DataFilterStringId.FilterFunctionIsNull:
                return "Is null";
            case DataFilterStringId.FilterFunctionLessThan:
                return "Less than";
            case DataFilterStringId.FilterFunctionLessThanOrEqualTo:
                return "Less than or equal to";
            case DataFilterStringId.FilterFunctionNoFilter:
                return "No filter";
            case DataFilterStringId.FilterFunctionIsContainedIn:
                return "Is in list";
            case DataFilterStringId.FilterFunctionIsNotContainedIn:
                return "Not in list";
            case DataFilterStringId.FilterFunctionNotBetween:
                return "Not between";
            case DataFilterStringId.FilterFunctionNotEqualTo:
                return "Not equal to";
            case DataFilterStringId.FilterFunctionNotIsEmpty:
                return "Is not empty";
            case DataFilterStringId.FilterFunctionNotIsNull:
                return "Is not null";
            case DataFilterStringId.FilterFunctionStartsWith:
                return "Starts with";
            case DataFilterStringId.FilterFunctionCustom:
                return "Custom";
        }
        return base.GetLocalizedString(id);
    }

````
````VB.NET
Public Class EnglishDataFilterLocalizationProvider
Inherits Telerik.WinControls.UI.DataFilterLocalizationProvider
    Public Overrides Function GetLocalizedString(id As String) As String
        Select Case id
            Case DataFilterStringId.LogicalOperatorAnd
                Return "All"
            Case DataFilterStringId.LogicalOperatorOr
                Return "Any"
            Case DataFilterStringId.LogicalOperatorDescription
                Return " of the following are true"
            Case DataFilterStringId.FieldNullText
                Return "Choose field"
            Case DataFilterStringId.ValueNullText
                Return "Enter a value"
            Case DataFilterStringId.AddNewButtonText
                Return "Add"
            Case DataFilterStringId.AddNewButtonExpression
                Return "Expression"
            Case DataFilterStringId.AddNewButtonGroup
                Return "Group"
            Case DataFilterStringId.DialogTitle
                Return "Data Filter"
            Case DataFilterStringId.DialogOKButton
                Return "OK"
            Case DataFilterStringId.DialogCancelButton
                Return "Cancel"
            Case DataFilterStringId.DialogApplyButton
                Return "Apply"
            Case DataFilterStringId.ErrorAddNodeDialogTitle
                Return "RadDataFilter Error"
            Case DataFilterStringId.ErrorAddNodeDialogText
                Return "Cannot add entries to the control - missing property descriptors. " & vbLf & "DataSource is not set and/or DataFilterDescriptorItems are not added to the Descriptors collection of the control."
            Case DataFilterStringId.FilterFunctionBetween
                Return "Between"
            Case DataFilterStringId.FilterFunctionContains
                Return "Contains"
            Case DataFilterStringId.FilterFunctionDoesNotContain
                Return "Does not contain"
            Case DataFilterStringId.FilterFunctionEndsWith
                Return "Ends with"
            Case DataFilterStringId.FilterFunctionEqualTo
                Return "Equals"
            Case DataFilterStringId.FilterFunctionGreaterThan
                Return "Greater than"
            Case DataFilterStringId.FilterFunctionGreaterThanOrEqualTo
                Return "Greater than or equal to"
            Case DataFilterStringId.FilterFunctionIsEmpty
                Return "Is empty"
            Case DataFilterStringId.FilterFunctionIsNull
                Return "Is null"
            Case DataFilterStringId.FilterFunctionLessThan
                Return "Less than"
            Case DataFilterStringId.FilterFunctionLessThanOrEqualTo
                Return "Less than or equal to"
            Case DataFilterStringId.FilterFunctionNoFilter
                Return "No filter"
            Case DataFilterStringId.FilterFunctionIsContainedIn
                Return "Is in list"
            Case DataFilterStringId.FilterFunctionIsNotContainedIn
                Return "Not in list"
            Case DataFilterStringId.FilterFunctionNotBetween
                Return "Not between"
            Case DataFilterStringId.FilterFunctionNotEqualTo
                Return "Not equal to"
            Case DataFilterStringId.FilterFunctionNotIsEmpty
                Return "Is not empty"
            Case DataFilterStringId.FilterFunctionNotIsNull
                Return "Is not null"
            Case DataFilterStringId.FilterFunctionStartsWith
                Return "Starts with"
            Case DataFilterStringId.FilterFunctionCustom
                Return "Custom"
        End Select
        Return MyBase.GetLocalizedString(id)
    End Function

````

{{endregion}} 

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

{{source=..\SamplesCS\DataFilter\DataFilterLocalization.cs  region=ApplyLocalizationProvider}} 
{{source=..\SamplesVB\DataFilter\DataFilterLocalization.vb  region=ApplyLocalizationProvider}}
````C#
            
DataFilterLocalizationProvider.CurrentProvider = new EnglishDataFilterLocalizationProvider();

````
````VB.NET
DataFilterLocalizationProvider.CurrentProvider = New EnglishDataFilterLocalizationProvider()

````

{{endregion}} 

The code provided above illustrates the approach to be used to localize the **RadDataFilter** and is not intended as a full translation.

# See Also

* [Rigth-To-Left Support]({%slug winforms/datafilter/right-to-left%})	
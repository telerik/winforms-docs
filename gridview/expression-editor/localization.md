---
title: Localization
page_title: Localization | UI for WinForms Documentation
description: Localization
slug: winforms/gridview/expression-editor/localization
tags: localization
published: True
position: 3
---

# Localization



## 
          Localizing UI elements
        

You can localize the UI elements of RadExpressionEditor
            by using a custom RadGridLocalizationProvider.
            For more details about RadGridLocalizationProvider,
            please refer to
            [
              this documentation article.
            ]({%slug winforms/gridview/localization/localization%})#_[C#]_

	



{{source=..\SamplesCS\GridView\ExpressionEditor\CustomLocalizationProvider.cs region=expressionEditorLocalization}} 
{{source=..\SamplesVB\GridView\ExpressionEditor\CustomLocalizationProvider.vb region=expressionEditorLocalization}} 

````C#
    public class CustomLocalizationProvider : RadGridLocalizationProvider
    {
        public override string GetLocalizedString(string id)
        {
            switch (id)
            {
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
                case RadGridStringId.ExpressionFormAndButton: return "And";
                case RadGridStringId.ExpressionFormOrButton: return "Or";
                case RadGridStringId.ExpressionFormNotButton: return "Not";
                case RadGridStringId.ExpressionFormOKButton: return "OK";
                case RadGridStringId.ExpressionFormCancelButton: return "Cancel";

            }

            return string.Empty;
        }
    }
````
````VB.NET
Public Class CustomLocalizationProvider
    Inherits RadGridLocalizationProvider
    Public Overrides Function GetLocalizedString(ByVal id As String) As String
        Select Case id
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
                Return "And"
            Case RadGridStringId.ExpressionFormOrButton
                Return "Or"
            Case RadGridStringId.ExpressionFormNotButton
                Return "Not"
            Case RadGridStringId.ExpressionFormOKButton
                Return "OK"
            Case RadGridStringId.ExpressionFormCancelButton
                Return "Cancel"

        End Select

        Return String.Empty
    End Function
End Class
'
````

{{endregion}} 




## Localizing functions

In order to localize the descriptions of the available functions,
            you have to load a custom xml file containing all supported functions
            and their appropriate localized descriptions.
            For more details, please refer to the following article:
            [
              Customizing RadExpressionEditor
            ]({%slug winforms/gridview/expression-editor/customizing-radexpressioneditor%}).
          

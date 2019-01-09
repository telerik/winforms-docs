---
title: Default Editors
page_title: Default Editors | RadGridView
description: RadGridView provides build-in functionality for editing the data.
slug: winforms/gridview/editors/default-editors
tags: editors
published: True
position: 1 
---

# Default Editors

Depending on the column's type, **RadGridView** activates an appropriate editor to handle cell's value changes. The default editors are listed below:

|Column's type|Default editor|
|----|----|
|[GridViewTextBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewtextboxcolumn%})|RadTextBoxEditor|
|[GridViewRatingColumn]({%slug winforms/gridview/columns/column-types/gridviewratingcolumn%})|GridSpinEditor|
|[GridViewMultiComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewmulticomboboxcolumn%})|RadMultiColumnComboBoxElement|
|[GridViewMaskBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewmaskboxcolumn%})|RadMaskedEditBoxEditor|
|[GridViewHyperlinkColumn]({%slug winforms/gridview/columns/column-types/gridviewhyperlinkcolumn%})|RadTextBoxEditor|
|[GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%})|GridSpinEditor|
|[GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%})|RadDateTimeEditor/GridTimePickerEditor|
|[GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%})|RadDropDownListEditor|
|[GridViewColorColumn]({%slug winforms/gridview/columns/column-types/gridviewcolorcolumn%})|GridColorPickerEditor|
|[GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%})|RadCheckBoxEditor|
|[GridViewCalculatorColumn]({%slug winforms/gridview/columns/column-types/gridviewcalculatorcolumn%})|RadCalculatorEditor|
|[GridViewBrowseColumn]({%slug winforms/gridview/columns/column-types/gridviewbrowsecolumn%})|GridBrowseEditor|
|[GridViewTimeSpanColumn]({%slug winforms/gridview/columns/column-types/gridviewtimespancolumn%})|GridTimeSpanPickerEditor|

The default editor can easily be replaced by using the **EditorRequired** event and specifying either the **EditorType** or the **Editor** property in the **EditorRequiredEventArgs**. This is the appropriate place to assign a [custom editor]({%slug winforms/gridview/editors/using-custom-editors%}) as well. If you need to apply some settings to the editor, the **CellEditorInitialized** event is the right place to do it.
 

## Accessing editors and setting their properties. 

In some cases you will need to set the properties of the editor element. The following examples will illustrate how you can get the elements of the most used editors in the __CellEditorInitialized__ event handler. 


#### Accessing Editors

{{source=..\SamplesCS\GridView\Editors\HandlingEditorsEvents.cs region=EditorsExamples}} 
{{source=..\SamplesVB\GridView\Editors\HandlingEditorsEvents.vb region=EditorsExamples}}
````C#
private void RadGridView1_CellEditorInitialized(object sender, Telerik.WinControls.UI.GridViewCellEventArgs e)
{
    var textboxEditor = e.ActiveEditor as RadTextBoxEditor;
    if (textboxEditor != null)
    {
        var element = textboxEditor.EditorElement as RadTextBoxEditorElement;
        element.TextBoxItem.MaxLength = 10;
    }
    var spinEditor = e.ActiveEditor as GridSpinEditor;
    if (spinEditor != null)
    {
        var element = spinEditor.EditorElement as RadSpinEditorElement;
        element.MaxValue = 10;
        element.MinValue = -10;
        element.ShowUpDownButtons = true;
    }
    var mccbEditor = e.ActiveEditor as RadMultiColumnComboBoxElement;
    if (mccbEditor != null)
    {
        mccbEditor.AutoSizeDropDownHeight = true;
        mccbEditor.AutoSizeDropDownToBestFit = true;
    }
    var maskedEditBoxEditor = e.ActiveEditor as RadMaskedEditBoxEditor;
    if (maskedEditBoxEditor != null)
    {
        var element = maskedEditBoxEditor.EditorElement as RadMaskedEditBoxEditorElement;
        element.TextBoxItem.TextBoxControl.BackColor = Color.Black;
        element.TextBoxItem.BackColor = Color.Black;
    }
    var dateTimeEditor = e.ActiveEditor as RadDateTimeEditor;
    if (dateTimeEditor != null)
    {
        var element = dateTimeEditor.EditorElement as RadDateTimeEditorElement;
        element.MinDate = DateTime.Now;
    }
    var timeEditor = e.ActiveEditor as GridTimePickerEditor;
    if (timeEditor != null)
    {
        var element = timeEditor.EditorElement as RadTimePickerElement;
        element.ClockPosition = ClockPosition.HideClock;
    }
    var ddlEditor = e.ActiveEditor as RadDropDownListEditor;
    if (ddlEditor != null)
    {
        var element = ddlEditor.EditorElement as RadDropDownListEditorElement;
        element.DropDownStyle = Telerik.WinControls.RadDropDownStyle.DropDown;
        element.AutoCompleteMode = AutoCompleteMode.Suggest;
    }
    var browseEditor = e.ActiveEditor as GridBrowseEditor;
    if (browseEditor != null)
    {
        var element = browseEditor.EditorElement as RadBrowseEditorElement;
        element.ReadOnly = true;
    }
}

````
````VB.NET
Private Sub RadGridView1_CellEditorInitialized1(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCellEventArgs)
    Dim textboxEditor = TryCast(e.ActiveEditor, RadTextBoxEditor)
    If textboxEditor IsNot Nothing Then
        Dim element = TryCast(textboxEditor.EditorElement, RadTextBoxEditorElement)
        element.TextBoxItem.MaxLength = 10
    End If
    Dim spinEditor = TryCast(e.ActiveEditor, GridSpinEditor)
    If spinEditor IsNot Nothing Then
        Dim element = TryCast(spinEditor.EditorElement, RadSpinEditorElement)
        element.MaxValue = 10
        element.MinValue = -10
        element.ShowUpDownButtons = True
    End If
    Dim mccbEditor = TryCast(e.ActiveEditor, RadMultiColumnComboBoxElement)
    If mccbEditor IsNot Nothing Then
        mccbEditor.AutoSizeDropDownHeight = True
        mccbEditor.AutoSizeDropDownToBestFit = True
    End If
    Dim maskedEditBoxEditor = TryCast(e.ActiveEditor, RadMaskedEditBoxEditor)
    If maskedEditBoxEditor IsNot Nothing Then
        Dim element = TryCast(maskedEditBoxEditor.EditorElement, RadMaskedEditBoxEditorElement)
        element.TextBoxItem.TextBoxControl.BackColor = Color.Black
        element.TextBoxItem.BackColor = Color.Black
    End If
    Dim dateTimeEditor = TryCast(e.ActiveEditor, RadDateTimeEditor)
    If dateTimeEditor IsNot Nothing Then
        Dim element = TryCast(dateTimeEditor.EditorElement, RadDateTimeEditorElement)
        element.MinDate = Date.Now
    End If
    Dim timeEditor = TryCast(e.ActiveEditor, GridTimePickerEditor)
    If timeEditor IsNot Nothing Then
        Dim element = TryCast(timeEditor.EditorElement, RadTimePickerElement)
        element.ClockPosition = ClockPosition.HideClock
    End If
    Dim ddlEditor = TryCast(e.ActiveEditor, RadDropDownListEditor)
    If ddlEditor IsNot Nothing Then
        Dim element = TryCast(ddlEditor.EditorElement, RadDropDownListEditorElement)
        element.DropDownStyle = Telerik.WinControls.RadDropDownStyle.DropDown
        element.AutoCompleteMode = AutoCompleteMode.Suggest
    End If
    Dim browseEditor = TryCast(e.ActiveEditor, GridBrowseEditor)
    If browseEditor IsNot Nothing Then
        Dim element = TryCast(browseEditor.EditorElement, RadBrowseEditorElement)
        element.ReadOnly = True
    End If
End Sub

```` 


{{endregion}}

# See Also

* [API]({%slug winforms/gridview/editors/api%})

* [Customizing editor behavior]({%slug winforms/gridview/editors/customizing-editor-behavior%})

* [Data validation]({%slug winforms/gridview/editors/data-validation%})

* [Events]({%slug winforms/gridview/editors/events%})

* [Handling Editors' events]({%slug winforms/gridview/editors/handling-editors'-events%})

* [Using custom editors]({%slug winforms/gridview/editors/using-custom-editors%})


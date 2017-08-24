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

The default editor can easily be replaced by using the **EditorRequired** event and specifying either the **EditorType** or the **Editor** property in the **EditorRequiredEventArgs**. This is the appropriate place to assign a [custom editor]({%slug winforms/gridview/editors/using-custom-editors%}) as well. If you need to apply some settings to the editor, the **CellEditorInitialized** event is the right place to do it.
 
# See Also

* [API]({%slug winforms/gridview/editors/api%})

* [Customizing editor behavior]({%slug winforms/gridview/editors/customizing-editor-behavior%})

* [Data validation]({%slug winforms/gridview/editors/data-validation%})

* [Events]({%slug winforms/gridview/editors/events%})

* [Handling Editors' events]({%slug winforms/gridview/editors/handling-editors'-events%})

* [Using custom editors]({%slug winforms/gridview/editors/using-custom-editors%})


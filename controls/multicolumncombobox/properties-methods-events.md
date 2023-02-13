---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - RadMultiColumnComboBox
description: RadMultiColumnComboBox is a special case of combo box control with RadGridView integrated in its drop-down.
slug: winforms/multicolumncombobox/selectedindexchanged
tags: selectedindexchanged
published: True
position: 6
previous_url: multicolumncombobox-selectedindexchanged
---

# Properties

|Property|Description|
|----|----|
|**AutoSizeDropDownColumnMode**|Determines whether the drop-down portion of the control will be auto-sized to best fit all columns.|
|**ClearTextOnValidation**|Specifies the mode for the Text clearing if the text does not match the text in the DisplayMembar column.|
|**AutoCompleteMode**|Specifies the mode for the automatic completion feature used in the MultiColumnComboBox.|
|**Columns**|Gets a collection that contains all the columns in the grid contained in the drop down.|
|**ShowItemToolTips**|Gets or sets a value indicating whether ToolTips are shown for the RadItem objects contained in the RadControl.|
|**Text**|Gets or sets displayed text.|
|**DblClickRotate**|Rotate items on double click in the edit box part.|
|**ScrollOnMouseWheel**|Gets or sets a boolean value determining whether the user can scroll through the items when the popup is closed by using the mouse wheel.|
|**MultiColumnComboBoxElement**|Gets the hosted RadMultiColumnComboBoxElement.|
|**DropDownSizingMode**|Gets or sets the drop down sizing mode. The mode can be: horizontal, veritcal or a combination of them.|
|**NullText**|Gets or sets the text that is displayed when the Text property contains empty string or is null.|
|**DisplayMember**|Specifies the particular field in the data source which will be used from the items in RadMultiColumnComboBox for the Text.|
|**EditorControl**|The input control hosted in the popup form. In the case of RadMultiColumnComboBox the control is a RadGridView.|
|**AutoFilter**|Controls whether the filtering behavior is enabled.|
|**DataSource**|Specifies the data structure to be bound.|
|**ValueMember**|Specifies the particular field in the data source which will be stored in the Value property.|
|**SelectedIndex**|Get or sets a value indicating the index of the the selected row.|
|**SelectedItem**|Get or sets a value indicating the selected row.|
|**SelectedValue**|Get or sets a value according to the applied ValueMember.|
|**DropDownStyle**|Gets or sets a value specifying the style of the combo box.|
|**AutoSizeDropDownToBestFit**|Determines whether the drop-down portion of the control will be auto-sized to best fit all columns. The DropDownWidth property must be set to its default value (-1) to allow this setting to work properly.|
|**AutoSizeDropDownHeight**|Determines whether the drop-down height will be auto-sized when filtering is applied.|
|**DropDownMinSize**|Gets or sets the minimum size allowed for the drop-down of the control.|
|**DropDownMaxSize**|Gets or sets the maximum size allowed for the drop-down of the control.|

## Methods

|Method|Description|
|----|----|
|**EndInit**|Ends the initialization of a RadMultiColumnComboBox control that is used on a form or used by another component. The initialization occurs at run time.|
|**BestFitColumns()**|Widens / shrinks all columns based on the space required by the text in the columns. Applies only on the visible rows.|
|**BestFitColumns(bool adjustComboBoxSize, bool bestFitAllRows)**|Widens / shrinks all columns based on the space required by the text in the columns.|

## Events

|Event|Description|
|----|----|
|**DataBindingComplete**|Occurs when the data binding process finishes.|
|**CaseSensitiveChanged**|Occurs when the CaseSensitive property has changed.|
|**DropDownOpened**|Occurs when the drop-down window appears.|
|**DropDownClosed**|Occurs when the drop-down window has closed.|
|**DropDownClosing**|Occurs when the drop-down window is about to close.|
|**DropDownOpening**|Occurs when the drop-down window is about to open.|
|**DropDownStyleChanged**|Occurs when the DropDownStyle property has changed.|
|**SelectedIndexChanged**|Occurs when the SelectedIndex property has changed.|
|**SelectedValueChanged**|Fires when the selected value is changed.|

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radmulticolumncombobox.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radmulticolumncombobox.html#methods)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radmulticolumncombobox.html#events)

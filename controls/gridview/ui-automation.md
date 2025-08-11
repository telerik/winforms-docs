---
title: UI Automation Support (UI Accessibility)
page_title: UI Automation Support (UI Accessibility) - RadGridView
description: UI Automation Support (UI Accessibility) for RadGridView.   
slug: gridview-ui-automation
tags: radgridview,ui,automation
published: True
position: 15
---

# UI Automation Support

With the __Q3 2025__ version of our controls, RadGridView supports UI Automation. The current implementation of UI Automation for RadGridView is similar to the __MS WinForms RadGridView Control Type__ implementation with some extended functionality. The main goal of this implementation is to ensure compliance with accessibility standards and to provide a common practice for automated testing. 

This functionality is enabled by default. To disable it, you can set the __EnableUIAutomation__ property to false.


| **UI Automation Tree - RadGridView Control View**|
|------------------------|
| ├─ [DataGrid](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-datagrid-control-type) (RadGridView Control  )|
|  ├─ [Header](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-header-control-type) (Table Header Row) |
|   └─ [HeaderItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-headeritem-control-type) (Header Cells)|
|  ├─ [DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type) (New Row)|
|   └─[DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type) (New Row Cells)|
|  ├─ [DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type) (Data Row)|
|   └─ [HeaderItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-headeritem-control-type) (Row Header Cells)|
|   └─ [CheckBox](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-checkbox-control-type) (Row Select Cells)|
|   └─ [Edit](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-edit-control-type) (TextBox Column Data Cell)|
|     └─ [Edit](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-edit-control-type) (Cell TextBox Editor)|
|   └─ [Spinner](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-spinner-control-type) (Decimal Column Data Cell)|
|     └─ [Spinner](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-spinner-control-type) (Cell Spin Editor)|
|   └─ [ComboBox](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-combobox-control-type) (ComboBox Column Data Cell)|
|     └─ [ComboBox](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-combobox-control-type) (DropDownList Editor)|
|   └─ [CheckBox](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-checkbox-control-type) (CheckBox Column Data Cell)|
|   └─ [Button](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-button-control-type) (Command Column Data Cell)|
|   └─ [Image](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-image-control-type) (Image Column Data Cell)|
|   └─ [Hyperlink](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-hyperlink-control-type) (Hyperlink Column Data Cell)|
|   └─ [DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type) (DateTime Column Data Cell)|
|   └─ [DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type) (Color Column Data Cell)|
|   └─ [DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type) (TimeSpan Column Data Cell)|
|   └─ [DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type) (MultiColumnComboBox Column Data Cell)|
|   └─ [DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type) (Rating Column Data Cell)|
|   └─ [DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type) (Sparkline Column Data Cell)|
|   └─ [DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type) (Calculator Column Data Cell)|

````C#

this.radGridView1.EnableUIAutomation = false;

````
````VB.NET

Me.radGridView1.EnableUIAutomation = False

````

## Relevant Properties 

The table below outlines the __UI Automation__ properties most important for understanding and interacting with RadGridView control.

### Rows

This table describes the UI Automation support for different types of rows within RadGridView. Each row type is associated with a corresponding provider implementation, making them accessible to screen readers and automation tools.

|Row Element|Telerik UIA Row Provider|UIA Control Type|
|------|------|------|
|Data Row|DataRowHeaderItemUIAutomationProvider|[DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type)|
|New Row|NewRowUIAutomationProvider|[DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type)|
|Table Header Row|TableHeaderRowUIAutomationProvider|[Header](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-header-control-type)|

#### DataRowUIAutomationProvider

This provider supports automation for standard data rows. 

* AutomationElementIdentifiers.ControlTypeProperty.Id => ControlType.DataItem.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "data item"
* AutomationElementIdentifiers.NameProperty.Id
* AutomationElementIdentifiers.OrientationProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.HasKeyboardFocusProperty.Id	
* AutomationElementIdentifiers.IsSelectionItemPatternAvailableProperty.Id
* AutomationElementIdentifiers.IsScrollItemPatternAvailableProperty.Id
* AutomationElementIdentifiers.IsGridItemPatternAvailableProperty.Id
* AutomationElementIdentifiers.IsTableItemPatternAvailableProperty.Id

The following items outlines the supported automation patterns by the **DataRowUIAutomationProvider**.

* [Selection Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.iselectionitemprovider?view=windowsdesktop-9.0)
* [Scroll Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.iscrollitemprovider?view=windowsdesktop-9.0)
* [Grid Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.igriditemprovider?view=windowsdesktop-9.0)
* [Table Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.itableitemprovider?view=windowsdesktop-9.0)

#### NewRowUIAutomationProvider

This provider targets the "Add New Row" functionality.

* AutomationElementIdentifiers.ControlTypeProperty.Id => ControlType.DataItem.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "data item"
* AutomationElementIdentifiers.NameProperty.Id => "TableAddNewRow"
* AutomationElementIdentifiers.OrientationProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.HasKeyboardFocusProperty.Id
	
#### TableHeaderRowUIAutomationProvider

This provider targets the table header row.

* AutomationElementIdentifiers.ControlTypeProperty.Id => ControlType.Header.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "header"
* AutomationElementIdentifiers.NameProperty.Id => "TableHeaderRow"
* AutomationElementIdentifiers.OrientationProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.HasKeyboardFocusProperty.Id	
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id


### Cells 
		
This section provides a breakdown of the supported cell types in RadGridView and their corresponding UI Automation providers. Each cell type is linked to a provider responsible for handling its accessibility representation and available patterns.

Several provider classes in this list: **DataRowHeaderItemUIAutomationProvider, DataCellSpinnerUIAutomationProvider, DataRowSelectCellUIAutomationProvider, and DataCellEditUIAutomationProvider** — derive from the base **DataCellUIAutomationProvider** class. This base class defines the core automation behavior that these providers extend for their specific cell types.

|Column Cells|Telerik UIA Cell Provider|UIA Control Type|
|------|------|------|
|GridViewRowHeaderColumn|DataRowHeaderItemUIAutomationProvider|[HeaderItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-headeritem-control-type)|
|GridViewSelectColumn|DataRowSelectCellUIAutomationProvider|[CheckBox](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-checkbox-control-type)|
|GridViewTextBoxColumn|DataCellEditUIAutomationProvider|[Edit](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-edit-control-type)|
|GridViewDecimalColumn|DataCellSpinnerUIAutomationProvider|[Spinner](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-spinner-control-type)|
|GridViewDateTimeColumn|DataCellUIAutomationProvider|[DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type)|
|GridViewCheckBoxColumn|DataCellCheckboxUIAutomationProvider|[CheckBox](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-checkbox-control-type)|
|GridViewHyperlinkColumn|DataCellHyperLinkUIAutomationProvider|[Hyperlink](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-hyperlink-control-type)|
|GridViewCommandColumn|DataCellCommandUIAutomationProvider|[Button](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-button-control-type)|
|GridViewComboBoxColumn|DataCellComboBoxUIAutomationProvider|[ComboBox](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-combobox-control-type)|
|GridViewBrowseColumn|DataCellEditUIAutomationProvider|[Edit](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-edit-control-type)|
|GridViewCalculatorColumn|DataCellUIAutomationProvider|[DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type)|
|GridViewColorColumn|DataCellUIAutomationProvider|[DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type)|
|GridViewTimeSpanColumn|DataCellUIAutomationProvider|[DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type)|
|GridViewImageColumn|DataCellImageUIAutomationProvider|[Image](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-image-control-type)|
|GridViewMaskBoxColumn|DataCellEditUIAutomationProvider|[Edit](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-edit-control-type)|
|GridViewColorColumn|DataCellUIAutomationProvider|[DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type)|
|RadMultiColumnComboBoxElement|DataCellUIAutomationProvider|[DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type)|
|GridViewRatingColumn|DataCellUIAutomationProvider|[DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type)|
|GridViewSparklineColumn|DataCellUIAutomationProvider|[DataItem](https://learn.microsoft.com/en-us/dotnet/framework/ui-automation/ui-automation-support-for-the-dataitem-control-type)|


#### DataRowHeaderItemUIAutomationProvider
 
Used primarily for row header cells, this provider ensures that header elements are correctly announced and interactable through assistive technologies.
 
* AutomationElementIdentifiers.ControlTypeProperty.Id => "header item"
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "header item"
* AutomationElementIdentifiers.IsOffscreenProperty.Id
* AutomationElementIdentifiers.NameProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.IsControlElementProperty.Id
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id
* AutomationElementIdentifiers.IsInvokePatternAvailableProperty.Id

The following items outlines the supported automation patterns by the **DataRowHeaderItemUIAutomationProvider**.
		
* [InvokePattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.iinvokeprovider?view=windowsdesktop-9.0)
	
#### DataRowSelectCellUIAutomationProvider

this provider enables UI Automation support for selection cells, typically rendered as checkboxes.

* AutomationElementIdentifiers.ControlTypeProperty.Id => ControlType.CheckBox.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "check box"
* AutomationElementIdentifiers.IsOffscreenProperty.Id
* AutomationElementIdentifiers.NameProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.IsControlElementProperty.Id
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id
* AutomationElementIdentifiers.IsInvokePatternAvailableProperty.Id

The following items outlines the supported automation patterns by the **DataRowSelectCellUIAutomationProvider**.

* [TogglePattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.itoggleprovider?view=windowsdesktop-9.0)

#### DataCellUIAutomationProvider

A general-purpose provider used for various content cells. 

* AutomationElementIdentifiers.AutomationIdProperty.Id 
* AutomationElementIdentifiers.ControlTypeProperty.Id => ControlType.CheckBox.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "data item"
* AutomationElementIdentifiers.IsOffscreenProperty.Id
* AutomationElementIdentifiers.NameProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.IsControlElementProperty.Id
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id
* AutomationElementIdentifiers.IsInvokePatternAvailableProperty.Id

The following items outlines the supported automation patterns by the base **DataCellUIAutomationProvider**.

* [Invoke Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.iinvokeprovider?view=windowsdesktop-9.0)
* [Value Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.valuepattern?view=windowsdesktop-9.0)
* [Selection Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.iselectionitemprovider?view=windowsdesktop-9.0)
* [Scroll Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.iscrollitemprovider?view=windowsdesktop-9.0)
* [Grid Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.igriditemprovider?view=windowsdesktop-9.0)
* [Table Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.itableitemprovider?view=windowsdesktop-9.0)

#### DataCellEditUIAutomationProvider

This provider handles editable cells and reports them as ControlType.Edit.

* AutomationElementIdentifiers.ControlTypeProperty.Id => ControlType.Edit.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "edit"
* AutomationElementIdentifiers.IsControlElementProperty.Id => true

#### DataCellSpinnerUIAutomationProvider 

Spinner cells, such as those in numeric columns, are handled by this provider. 

* AutomationElementIdentifiers.ControlTypeProperty.Id => ControlType.Spinner.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "spinner"
	



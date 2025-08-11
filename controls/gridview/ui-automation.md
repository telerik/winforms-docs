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


| **UI Automation Tree - Control View**|**UI Automation Tree - Content View**|
|------------------------|------------------------|
| **RadGridView**     | **RadGridView**|
| ├─ Table Header Row | Header Item    |
| │  └─ Header Item   | New Item       |
| ├─ New Item         | Data Item      |
| ├─ Data Item        |                |
| │  ├─ Text Box Item |                |
| │  ├─ CheckBox Item |                |
| │  ├─ Decimal Item  |                |
| │  ├─ Hyperlink Item|                |
| │  ├─ Command Item  |                |
| │  ├─ Browse Item   |                |
| │  ├─ MaskBox Item  |                |
| │  ├─ Image Item    |                |
| │  ├─ ComboBox Item |                |


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

|Row Element|UIA Row Provider|
|------|------|------|
|Data Row|DataRowHeaderItemUIAutomationProvider|
|New Row|NewRowUIAutomationProvider|
|Table Header Row|TableHeaderRowUIAutomationProvider|

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

|Column Cells|UIA Cell Provider|
|------|------|------|
|GridViewRowHeaderColumn|DataRowHeaderItemUIAutomationProvider|
|GridViewSelectColumn|DataRowSelectCellUIAutomationProvider|
|GridViewTextBoxColumn|DataCellEditUIAutomationProvider|
|GridViewDecimalColumn|DataCellSpinnerUIAutomationProvider|
|GridViewDateTimeColumn|DataCellUIAutomationProvider|
|GridViewCheckBoxColumn|DataCellCheckboxUIAutomationProvider|
|GridViewHyperlinkColumn|DataCellHyperLinkUIAutomationProvider|
|GridViewCommandColumn|DataCellCommandUIAutomationProvider|
|GridViewComboBoxColumn|DataCellComboBoxUIAutomationProvider|
|GridViewBrowseColumn|DataCellEditUIAutomationProvider|
|GridViewCalculatorColumn|DataCellUIAutomationProvider|
|GridViewColorColumn|DataCellUIAutomationProvider|
|GridViewTimeSpanColumn|DataCellUIAutomationProvider|
|GridViewImageColumn|DataCellImageUIAutomationProvider|
|GridViewMaskBoxColumn|DataCellEditUIAutomationProvider|
|GridViewColorColumn|DataCellUIAutomationProvider|
|RadMultiColumnComboBoxElement|DataCellUIAutomationProvider|
|GridViewRatingColumn|DataCellUIAutomationProvider|
|GridViewSparklineColumn|DataCellUIAutomationProvider|


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
	



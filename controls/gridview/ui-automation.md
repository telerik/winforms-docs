---
title: UI Automation Support (UI Accessibility)
page_title: UI Automation Support (UI Accessibility) - RadGridView
description: UI Automation Support (UI Accessibility) for RadGridView.   
slug: RadGridView-ui-automation
tags: RadGridView,ui,automation
published: True
position: 15
---

# UI Automation Support

With the __Q3 2025__ version of our controls, RadGridView supports UI Automation. The current implementation of UI Automation for RadGridView is similar to the __MS WinForms RadGridView Control Type__ implementation with some extended functionality. The main goal of this implementation is to ensure compliance with accessibility standards and to provide a common practice for automated testing. 

This functionality is enabled by default. To disable it, you can set the __EnableUIAutomation__ property to false.


````C#

this.radGridView1.EnableUIAutomation = false;

````
````VB.NET

Me.radGridView1.EnableUIAutomation = False

````

## Relevant Properties 

The table below outlines the __UI Automation__ properties most important for understanding and interacting with RadGridView control.

### Rows

|Row Element|UIA Row Provider|Specific Implementation|
|------|------|------|
|Data Row|DataRowHeaderItemUIAutomationProvider|✅|
|New Row|DataRowHeaderItemUIAutomationProvider|✅|
|Table Header Row|DataRowHeaderItemUIAutomationProvider|✅|

#### DataRowUIAutomationProvider

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

[Selection Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.iselectionitemprovider?view=windowsdesktop-9.0)
[Scroll Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.iscrollitemprovider?view=windowsdesktop-9.0)
[Grid Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.igriditemprovider?view=windowsdesktop-9.0)
[Table Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.itableitemprovider?view=windowsdesktop-9.0)

#### NewRowUIAutomationProvider

* AutomationElementIdentifiers.ControlTypeProperty.Id => ControlType.DataItem.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "data item"
* AutomationElementIdentifiers.NameProperty.Id => "TableAddNewRow"
* AutomationElementIdentifiers.OrientationProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.HasKeyboardFocusProperty.Id
	
#### TableHeaderRowUIAutomationProvider

* AutomationElementIdentifiers.ControlTypeProperty.Id => ControlType.Header.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "header"
* AutomationElementIdentifiers.NameProperty.Id => "TableHeaderRow"
* AutomationElementIdentifiers.OrientationProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.HasKeyboardFocusProperty.Id	
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id


### Cells 
		
|Column Cells|UIA Cell Provider|Specific Implementation|
|------|------|------|
|GridViewRowHeaderColumn|DataRowHeaderItemUIAutomationProvider|✅|
|GridViewSelectColumn|DataRowSelectCellUIAutomationProvider|✅|
|GridViewTextBoxColumn|DataCellEditUIAutomationProvider|✅|
|GridViewDecimalColumn|DataCellSpinnerUIAutomationProvider|✅|
|GridViewDateTimeColumn|DataCellUIAutomationProvider|❌|
|GridViewCheckBoxColumn|DataCellCheckboxUIAutomationProvider|✅|
|GridViewHyperlinkColumn|DataCellHyperLinkUIAutomationProvider|✅|
|GridViewCommandColumn|DataCellCommandUIAutomationProvider|✅|
|GridViewComboBoxColumn|DataCellComboBoxUIAutomationProvider|✅|
|GridViewBrowseColumn|DataCellEditUIAutomationProvider|✅|
|GridViewCalculatorColumn|DataCellUIAutomationProvider|❌|
|GridViewColorColumn|DataCellUIAutomationProvider|❌|
|GridViewTimeSpanColumn|DataCellUIAutomationProvider|❌|
|GridViewImageColumn|DataCellImageUIAutomationProvider|✅|
|GridViewMaskBoxColumn|DataCellEditUIAutomationProvider|✅|
|GridViewColorColumn|DataCellUIAutomationProvider|❌|
|RadMultiColumnComboBoxElement|DataCellUIAutomationProvider|❌|
|GridViewRatingColumn|DataCellUIAutomationProvider|❌|
|GridViewSparklineColumn|DataCellUIAutomationProvider|❌|

#### DataRowHeaderItemUIAutomationProvider
 
* AutomationElementIdentifiers.ControlTypeProperty.Id => "header item"
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "header item"
* AutomationElementIdentifiers.IsOffscreenProperty.Id
* AutomationElementIdentifiers.NameProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.IsControlElementProperty.Id
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id
* AutomationElementIdentifiers.IsInvokePatternAvailableProperty.Id
		
[InvokePattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.iinvokeprovider?view=windowsdesktop-9.0)
	
#### DataRowSelectCellUIAutomationProvider

* AutomationElementIdentifiers.ControlTypeProperty.Id => ControlType.CheckBox.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "check box"
* AutomationElementIdentifiers.IsOffscreenProperty.Id
* AutomationElementIdentifiers.NameProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.IsControlElementProperty.Id
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id
* AutomationElementIdentifiers.IsInvokePatternAvailableProperty.Id

[TogglePattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.itoggleprovider?view=windowsdesktop-9.0)

#### DataCellUIAutomationProvider

* AutomationElementIdentifiers.AutomationIdProperty.Id 
* AutomationElementIdentifiers.ControlTypeProperty.Id => ControlType.CheckBox.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "data item"
* AutomationElementIdentifiers.IsOffscreenProperty.Id
* AutomationElementIdentifiers.NameProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.IsControlElementProperty.Id
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id
* AutomationElementIdentifiers.IsInvokePatternAvailableProperty.Id

[Invoke Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.iinvokeprovider?view=windowsdesktop-9.0)
[Value Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.valuepattern?view=windowsdesktop-9.0)
[Selection Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.iselectionitemprovider?view=windowsdesktop-9.0)
[Scroll Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.iscrollitemprovider?view=windowsdesktop-9.0)
[Grid Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.igriditemprovider?view=windowsdesktop-9.0)
[Table Item Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.itableitemprovider?view=windowsdesktop-9.0)

#### DataCellEditUIAutomationProvider

* AutomationElementIdentifiers.ControlTypeProperty.Id => ControlType.Edit.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "edit"
* AutomationElementIdentifiers.IsControlElementProperty.Id => true

#### DataCellSpinnerUIAutomationProvider 

* AutomationElementIdentifiers.ControlTypeProperty.Id => ControlType.Spinner.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "spinner"
	



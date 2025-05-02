---
title: UI Automation Support (UI Accessibility)
page_title: UI Automation Support (UI Accessibility) - RadSpinEditor
description: UI Automation Support (UI Accessibility) for RadSpinEditor.   
slug: winforms/editors/spineditor-ui-automation
tags: spineditor,ui,automation
published: True
position: 10
---

# UI Automation Support

With the __Q2 2025__ version of our controls, RadSpinEditor supports UI Automation. The current implementation of UI Automation for RadSpinEditor is similar to the MS WinForms Edit Control Type implementation with some extended functionality. The main goal of this implementation is to ensure compliance with accessibility standards and to provide a common practice for automated testing. 

This functionality is enabled by default. To disable it, you can set the __EnableUIAutomation__ property to false.


````C#

this.radSpinEditor1.EnableUIAutomation = false;

````
````VB.NET

Me.RadSpinEditor1.EnableUIAutomation = False

````

<!--
![maskedEditBox-ui-automation](images/maskedEditBox-ui-automation001.png)
-->

## Relevant Properties 

The table below outlines the __UI Automation__ properties most important for understanding and interacting with RadButton control.

* AutomationElementIdentifiers.AutomationIdProperty.Id 
* AutomationElementIdentifiers.BoundingRectangleProperty.Id
* AutomationElementIdentifiers.ControlTypeProperty.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "spinner"
* AutomationElementIdentifiers.HelpTextProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.IsControlElementProperty.Id
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id
* AutomationElementIdentifiers.LabeledByProperty.Id 
* AutomationElementIdentifiers.NameProperty.Id 
* AutomationElementIdentifiers.IsRangeValuePatternAvailableProperty.Id
* AutomationElementIdentifiers.IsValuePatternAvailableProperty.Id

## Supported Control Patterns

The following section outlines the supported automation patterns for the __RadSpinEditor__ control and its constituent elements.

* [Value Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.valuepattern?view=windowsdesktop-9.0)
* [Range Value Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.rangevaluepattern?view=windowsdesktop-9.0)

## Events

This section list the events raised by the RadSpinEditor control.

* __RadSpinElement.MinValue property change__: Raises the [UIA RangeValuePatternIdentifiers.MinimumProperty](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.rangevaluepattern.minimumproperty?view=windowsdesktop-9.0) automation property change.

* __RadSpinElement.MaxValue property change__: Raises the [UIA RangeValuePatternIdentifiers.MaximumProperty](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.rangevaluepattern.maximumproperty?view=windowsdesktop-9.0) automation property change.

* __ValueChanged event: Raises the 

	* [UIA ValuePatternIdentifiers.ValueProperty](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.valuepattern.valueproperty?view=windowsdesktop-9.0) automation property changed.
	* UIA RangeValuePatternIdentifiers.ValueProperty](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.rangevaluepattern.valueproperty?view=windowsdesktop-9.0)





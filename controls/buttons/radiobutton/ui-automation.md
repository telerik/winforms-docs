---
title: UI Automation Support (UI Accessibility)
page_title: UI Automation Support (UI Accessibility) - RadRadioButton
description: UI Automation Support (UI Accessibility) for RadRadioButton.   
slug: radiobutton-ui-automation
tags: radiobutton,ui,automation
published: True
position: 10
---

# UI Automation Support

With the __Q1 2025__ version of our controls, RadRadioButton supports UI Automation. The current implementation of UI Automation for RadRadioButton is similar to the __MS WinForms RadioButton Control Type__ implementation with some extended functionality. The main goal of this implementation is to ensure compliance with accessibility standards and to provide a common practice for automated testing. 

This functionality is enabled by default. To disable it, you can set the __EnableUIAutomation__ property to false.


````C#

this.radRadioButton.EnableUIAutomation = false;

````
````VB.NET

Me.RadRadioButton1.EnableUIAutomation = False

````

## Relevant Properties 

The table below outlines the __UI Automation__ properties most important for understanding and interacting with RadRadioButton control.

#### RadRepeatButton 

* AutomationElementIdentifiers.AutomationIdProperty.Id 
* AutomationElementIdentifiers.AcceleratorKeyProperty.Id
* AutomationElementIdentifiers.AccessKeyProperty.Id
* AutomationElementIdentifiers.BoundingRectangleProperty.Id
* AutomationElementIdentifiers.ControlTypeProperty.Id
* AutomationElementIdentifiers.LabeledByProperty.Id
* AutomationElementIdentifiers.IsEnabledProperty.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "radio button"
* AutomationElementIdentifiers.HelpTextProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.IsControlElementProperty.Id
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id
* AutomationElementIdentifiers.NameProperty.Id 

## Supported Control Patterns

The following section outlines the supported automation patterns for the __RadRadioButton__ control and its constituent elements.

* [Selection Item Provider Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.iselectionitemprovider?view=windowsdesktop-9.0)

The RadRadioButton control raises the following events

* __ToggleStateChanged__: Raises the following events when the state is ON
	* raises the [UIA  SelectionItemPattern.ElementSelectedEvent Field](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.selectionitempattern.elementselectedevent?view=windowsdesktop-8.0)
	* raises the [UIA AutomationFocusChangedEventHandler Delegate](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.automationfocuschangedeventhandler?view=windowsdesktop-9.0)
	
* __OnEnabledChanged__: Raises the [UIA AutomationElementIdentifiers.IsEnabledProperty Field](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.automationelementidentifiers.isenabledproperty?view=windowsdesktop-9.0#system-windows-automation-automationelementidentifiers-isenabledproperty)


---
title: UI Automation Support (UI Accessibility)
page_title: UI Automation Support (UI Accessibility) - RadToggleButton
description: UI Automation Support (UI Accessibility) for RadToggleButton.   
slug: togglebutton-ui-automation
tags: togglebutton,ui,automation
published: True
position: 10
---

# UI Automation Support

With the __Q1 2025__ version of our controls, RadToggleButton supports UI Automation. The current implementation of UI Automation for RadToggleButton is similar to the MS WinForms CheckBox Control Type implementation with some extended functionality. The main goal of this implementation is to ensure compliance with accessibility standards and to provide a common practice for automated testing. 

This functionality is enabled by default. To disable it, you can set the __EnableUIAutomation__ property to false.


````C#

this.radToggleButton1.EnableUIAutomation = false;

````
````VB.NET

Me.RadToggleButton1.EnableUIAutomation = False

````

## Relevant Properties 

The table below outlines the __UI Automation__ properties most important for understanding and interacting with RadToggleButton control.

#### RadRepeatButton 

* AutomationElementIdentifiers.AutomationIdProperty.Id 
* AutomationElementIdentifiers.AcceleratorKeyProperty.Id
* AutomationElementIdentifiers.AccessKeyProperty.Id
* AutomationElementIdentifiers.BoundingRectangleProperty.Id
* AutomationElementIdentifiers.ControlTypeProperty.Id
* AutomationElementIdentifiers.LabeledByProperty.Id
* AutomationElementIdentifiers.IsEnabledProperty.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "check box"
* AutomationElementIdentifiers.HelpTextProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.IsControlElementProperty.Id
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id
* AutomationElementIdentifiers.NameProperty.Id 

## Supported Control Patterns

The following section outlines the supported automation patterns for the __RadToggleButton__ control and its constituent elements.

* [Toggle Pattern](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.itoggleprovider?view=windowsdesktop-9.0)

The RadToggleButton control raises the following events

* __OnClick__: Raises the UIA [InvokePatternIdentifiers.InvokedEvent Field](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.togglepatternidentifiers.togglestateproperty?view=windowsdesktop-9.0#system-windows-automation-togglepatternidentifiers-togglestateproperty)

* __OnGotFocus__: Raises the [UIA AutomationElementIdentifiers.AutomationFocusChangedEvent Field](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.automationelementidentifiers.automationfocuschangedevent?view=windowsdesktop-9.0#system-windows-automation-automationelementidentifiers-automationfocuschangedevent)

* __OnEnabledChanged__: Raises the [UIA AutomationElementIdentifiers.IsEnabledProperty Field](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.automationelementidentifiers.isenabledproperty?view=windowsdesktop-9.0#system-windows-automation-automationelementidentifiers-isenabledproperty)


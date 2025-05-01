---
title: UI Automation Support (UI Accessibility)
page_title: UI Automation Support (UI Accessibility) - RadTextBox
description: UI Automation Support (UI Accessibility) for RadTextBox.   
slug: textbox-ui-automation
tags: textbox,ui,automation
published: True
position: 10
---

# UI Automation Support

With the __Q2 2025__ version of our controls, RadTextBox supports UI Automation. The current implementation of UI Automation for RadTextBox is similar to the MS WinForms TextBox Control implementation with some extended functionality. The main goal of this implementation is to ensure compliance with accessibility standards and to provide a common practice for automated testing. 

This functionality is enabled by default. To disable it, you can set the __EnableUIAutomation__ property to false.


````C#

this.radTextBox1.EnableUIAutomation = false;

````
````VB.NET

Me.RadTextBox1.EnableUIAutomation = False

````

![button-ui-automation](images/button-ui-automation001.png)

## Relevant Properties 

The table below outlines the __UI Automation__ properties most important for understanding and interacting with RadButton control.

#### RadTextBox

// To DO 

* AutomationElementIdentifiers.AutomationIdProperty.Id 
* AutomationElementIdentifiers.AcceleratorKeyProperty.Id
* AutomationElementIdentifiers.AccessKeyProperty.Id
* AutomationElementIdentifiers.BoundingRectangleProperty.Id
* AutomationElementIdentifiers.ControlTypeProperty.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id => "textBox"
* AutomationElementIdentifiers.HelpTextProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.IsEnabledProperty.Id
* AutomationElementIdentifiers.IsControlElementProperty.Id
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id
* AutomationElementIdentifiers.NameProperty.Id 

## Supported Control Patterns

The following section outlines the supported automation patterns for the __RadTextBox__ control and its constituent elements.




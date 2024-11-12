---
title: UI Automation Support (UI Accessibility)
page_title: UI Automation Support (UI Accessibility) - RadDropDownList
description: UI Automation Support (UI Accessibility) for RadDropDownList.   
slug: dropdown-listcontrol-and-checkeddropdownlist-dropdownlist-ui-automation
tags: raddropdownlist,ui,automation
published: True
position: 16
---

# UI Automation Support

With the Q4 2024 version of our controls, RadDropDownList supports UI Automation. The current implementation of UI Automation for RadDropDownList is similar to the MS WinForms ComboBox implementation with some extended functionality. The main goal of this implementation is to ensure compliance with accessibility standards and to provide a common practice for automated testing. 

This functionality is enabled by default. To disable it, you can set the __EnableUIAutomation__ property to false.


````C#

this.radDropDownList1.EnableUIAutomation = false;

````
````VB.NET

Me.RadDropDownList1.EnableUIAutomation = False

````

## RadDropDownList 

The table below outlines the __UI Automation__ properties most important for understanding and interacting with RadDropDownList control.

### RadDropDownList Available Properties

* AutomationElementIdentifiers.AutomationIdProperty.Id 
* AutomationElementIdentifiers.BoundingRectangleProperty.Id 
* AutomationElementIdentifiers.ControlTypeProperty => ControlType.ComboBox.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty.Id  => "comboBox"
* AutomationElementIdentifiers.HelpTextProperty.Id 
* AutomationElementIdentifiers.IsContentElementProperty.Id 
* AutomationElementIdentifiers.IsControlElementProperty.Id 
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id 
* AutomationElementIdentifiers.HasKeyboardFocusProperty.Id 
* AutomationElementIdentifiers.LabeledByProperty.Id 
* AutomationElementIdentifiers.NameProperty.Id 
* AutomationElementIdentifiers.IsValuePatternAvailableProperty.Id 

### RadDropDownList Supported Control Patterns

The following section outlines the supported automation patterns for the __RadDropDownList__ control and its constituent elements.

* [Selection Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementingselection)
* [ExpandCollapse Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementingexpandcollapse)
* [Value Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementingvalue)

## Editor or TextElement

The __DropDownStyle__ property of the control determines if direct text input is allowed inside the editor or not. When the style is set to DropDown we allow input which is handled by a hosted Microsoft TextBox control. In this case, the default TextBox implementation is responsible for handling UI Automation.

### Editor

The current implementation of UI Automation for the hosted Microsoft TextBox control is implemented as the UIA [Edit control type](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-supporteditcontroltype)

### TextElement

The current implementation of UI Automation for the RadDropDownList TextElement control is implemented as the UIA [Text control type](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-supporttextcontroltype)

#### TextElement Available Properties

* AutomationElementIdentifiers.AutomationIdProperty.Id
* AutomationElementIdentifiers.BoundingRectangleProperty.Id
* AutomationElementIdentifiers.ControlTypeProperty => ControlType.Text.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty => "text"
* AutomationElementIdentifiers.HelpTextProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.IsControlElementProperty.Id
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id
* AutomationElementIdentifiers.HasKeyboardFocusProperty.Id
* AutomationElementIdentifiers.LabeledByProperty.Id
* AutomationElementIdentifiers.NameProperty.Id

## RadArrowButtonElement

The current implementation of UI Automation for the RadArrowButtonElement control is implemented as the UIA [Button control type](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-supportbuttoncontroltype)

### RadArrowButtonElement Available Properties

* AutomationElementIdentifiers.AutomationIdProperty.Id
* AutomationElementIdentifiers.BoundingRectangleProperty.Id
* AutomationElementIdentifiers.ControlTypeProperty => ControlType.Button.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty => "button"
* AutomationElementIdentifiers.HelpTextProperty.Id
* AutomationElementIdentifiers.IsContentElementProperty.Id
* AutomationElementIdentifiers.IsControlElementProperty.Id
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id
* AutomationElementIdentifiers.HasKeyboardFocusProperty.Id
* AutomationElementIdentifiers.LabeledByProperty.Id
* AutomationElementIdentifiers.NameProperty.Id

### RadArrowButtonElement Supported Control Patterns

* [Invoke Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementinginvoke)

## DropDownPopupForm

This is the popup that is responsible for the list of the items. This UI Automation Provider is implemented as a [IRawElementProviderFragmentRoot](https://learn.microsoft.com/en-us/dotnet/api/system.windows.automation.provider.irawelementproviderfragmentroot?view=windowsdesktop-8.0) with its parent being the provider of the RadDropDownList control. For more information about the actual implementation check the article of the [RadListControl UI Automation]({%slug dropdown-listcontrol-and-checkeddropdownlist-listcontrol-ui-automation%}) Provider.



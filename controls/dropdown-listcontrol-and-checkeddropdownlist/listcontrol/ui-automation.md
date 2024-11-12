---
title: UI Automation Support (UI Accessibility)
page_title: UI Automation Support (UI Accessibility) - RadListControl
description: UI Automation Support (UI Accessibility) for RadListControl.   
slug: dropdown-listcontrol-and-checkeddropdownlist-listcontrol-ui-automation
tags: RadListControl,ui,automation
published: True
position: 10
---

# UI Automation Support

With the Q4 2024 version of our controls, RadListControl supports UI Automation. The current implementation of UI Automation for RadListControl is similar to the [MS WinForms List](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-supportlistcontroltype) implementation with some extended functionality. The main goal of this implementation is to ensure compliance with accessibility standards and to provide a common practice for automated testing. 

This functionality is enabled by default. To disable it, you can set the __EnableUIAutomation__ property to false.

````C#

this.radListControl1.EnableUIAutomation = false;

````
````VB.NET

Me.RadListControl1.EnableUIAutomation = False

````

## RadListControl

The table below outlines the __UI Automation__ properties most important for understanding and interacting with RadListControl control.

### RadListControl Available Properties

* AutomationElementIdentifiers.AutomationIdProperty.Id 
* AutomationElementIdentifiers.BoundingRectangleProperty.Id 
* AutomationElementIdentifiers.ControlTypeProperty => ControlType.List.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty => "list"
* AutomationElementIdentifiers.HelpTextProperty.Id 
* AutomationElementIdentifiers.IsContentElementProperty.Id 
* AutomationElementIdentifiers.IsControlElementProperty.Id 
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id 
* AutomationElementIdentifiers.HasKeyboardFocusProperty.Id 
* AutomationElementIdentifiers.NameProperty.Id 

### RadListControl Available Patterns

The following section outlines the supported automation patterns for the __RadListControl__ control and its constituent elements.

* [Selection Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementingselection)
* [Scroll Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementingscroll)

## RadListDataItem

The current implementation of UI Automation for the RadListDataItem control is implemented as the UIA [ListItem control type](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-supportlistitemcontroltype)

### RadListDataItem Available Properties

* AutomationElementIdentifiers.AutomationIdProperty.Id 
* AutomationElementIdentifiers.BoundingRectangleProperty.Id 
* AutomationElementIdentifiers.ControlTypeProperty => ControlType.List.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty => "list"
* AutomationElementIdentifiers.HelpTextProperty.Id 
* AutomationElementIdentifiers.IsContentElementProperty.Id 
* AutomationElementIdentifiers.IsControlElementProperty.Id 
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id 
* AutomationElementIdentifiers.HasKeyboardFocusProperty.Id 
* AutomationElementIdentifiers.NameProperty.Id 
* AutomationElementIdentifiers.IsOffscreenProperty.Id 

### RadListDataItem Available Patterns

* [Selection Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementingselection)
* [ScrollItem Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementingscrollitem)

## RadScrollbarElement

The current implementation of UI Automation for the RadScrollbarElement control is implemented as the UIA [ScrollBar control type](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-supportscrollbarcontroltype)

### RadScrollbarElement Available Properties

* AutomationElementIdentifiers.AutomationIdProperty.Id 
* AutomationElementIdentifiers.BoundingRectangleProperty.Id 
* AutomationElementIdentifiers.ControlTypeProperty => ControlType.ScrollBar.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty => "scroll bar"
* AutomationElementIdentifiers.HelpTextProperty.Id 
* AutomationElementIdentifiers.IsContentElementProperty.Id 
* AutomationElementIdentifiers.IsControlElementProperty.Id 
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id 
* AutomationElementIdentifiers.NameProperty.Id 
* AutomationElementIdentifiers.OrientationProperty.Id 

### RadScrollbarElement Available Patterns

* [RangeValue Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementingrangevalue)

## ScrollBarButton

The current implementation of UI Automation for the ScrollBarButton control is implemented as the UIA [Button control type](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-supportbuttoncontroltype)

### ScrollBarButton Available Properties

* AutomationElementIdentifiers.AutomationIdProperty.Id 
* AutomationElementIdentifiers.BoundingRectangleProperty.Id 
* AutomationElementIdentifiers.ControlTypeProperty => ControlType.Button.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty => "button"
* AutomationElementIdentifiers.HelpTextProperty.Id 
* AutomationElementIdentifiers.IsContentElementProperty.Id 
* AutomationElementIdentifiers.IsControlElementProperty.Id 
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id 
* AutomationElementIdentifiers.NameProperty.Id 

### ScrollBarButton Available Patterns

* [Invoke Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementinginvoke)

## ScrollBarThumb

The current implementation of UI Automation for the ScrollBarThumb control is implemented as the UIA [ScrollBar control type](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-supportscrollbarcontroltype)

### ScrollBarThumb Available Properties

* AutomationElementIdentifiers.AutomationIdProperty.Id 
* AutomationElementIdentifiers.BoundingRectangleProperty.Id 
* AutomationElementIdentifiers.ControlTypeProperty => ControlType.Thumb.Id
* AutomationElementIdentifiers.LocalizedControlTypeProperty => "thumb"
* AutomationElementIdentifiers.HelpTextProperty.Id 
* AutomationElementIdentifiers.IsContentElementProperty.Id 
* AutomationElementIdentifiers.IsControlElementProperty.Id 
* AutomationElementIdentifiers.IsKeyboardFocusableProperty.Id 
* AutomationElementIdentifiers.NameProperty.Id 

### ScrollBarThumb Available Patterns

* [Transform Control Pattern](https://learn.microsoft.com/en-us/windows/win32/winauto/uiauto-implementingtransform)

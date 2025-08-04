---
title: UI Automation Support (UI Accessibility)
page_title: UI Automation Support (UI Accessibility)
description: UI Automation Support (UI Accessibility)
slug: winforms/telerik-presentation-framework/ui-automation
tags: ui,automation,support, accessibility
published: True
position: 7
---

# UI Automation Support

Implementing UI Automation for custom WinForms controls requires a distinct approach compared to WPF. Unlike the WPF AutomationPeer model, WinForms relies on provider interfaces. Our custom control leverages this mechanism to ensure compatibility with automation tools. __Telerik UI for WinForms__ controls uses this method to make it accessible to automation tools.

>For detailed information on the UI Automation Provider check the [Server-Side UI Automation Provider Implementation](https://learn.microsoft.com/en-us/previous-versions/visualstudio/visual-studio-2008/ms748277%28v=vs.90%29?redirectedfrom=MSDN) section on MSDN.

## Supported controls

Here is a list of the controls which support __UI Automation__. 

* [RadNavigationView]({%slug navigationview-ui-automation%})
* [RadDropDownList]({%slug dropdown-listcontrol-and-checkeddropdownlist-dropdownlist-ui-automation%})
* [RadListControl]({%slug dropdown-listcontrol-and-checkeddropdownlist-listcontrol-ui-automation%})
* [RadButton]({%slug button-ui-automation%})
* [RadRepeatButton]({%slug repeatbutton-ui-automation%})
* [RadLabel]({%slug label-ui-automation%})
* [RadToggleButton]({%slug togglebutton-ui-automation%})
* [RadRadioButton]({%slug radiobutton-ui-automation%})
* [RadCheckBox]({%slug checkbox-ui-automation%})

## Enable/Disable UI Automation Globally

As of Q3 2025 UI Automation can be controlled globally for all Telerik UI for WinForms controls through the static **RadControl.EnableUIAutomationDefaultValue** property. This allows you to enable or disable UI Automation support for RadControls across your entire application.

>note UI Automation is enabled by default.

### Disable UI Automation

To disable UI Automation globally (if accessibility features are not required in your application) you can set **EnableUIAutomationDefaultValue** to *false*. This setting should be configured early in your application lifecycle, preferably before creating any Telerik control.

```csharp
RadControl.EnableUIAutomationDefaultValue = false;

```

## UI Accessibility

Each control in the Telerik UI for WinForms suite is tested with the [Accessibility Insights for Windows](https://accessibilityinsights.io/docs/en/windows/overview/) tool. This application executes tests which check whether the controls have the right UI Automation properties. We've tested all of the controls from our suite to ensure that there aren't any failed tests.




